/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="WordsAPI.swift">
 *   Copyright (c) 2019 Aspose.Words for Cloud
 * </copyright>
 * <summary>
 *   Permission is hereby granted, free of charge, to any person obtaining a copy
 *  of this software and associated documentation files (the "Software"), to deal
 *  in the Software without restriction, including without limitation the rights
 *  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 *  copies of the Software, and to permit persons to whom the Software is
 *  furnished to do so, subject to the following conditions:
 *
 *  The above copyright notice and this permission notice shall be included in all
 *  copies or substantial portions of the Software.
 *
 *  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 *  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 *  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 *  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 *  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 *  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 *  SOFTWARE.
 * </summary>
 * --------------------------------------------------------------------------------
 */

import Foundation

public class ApiInvoker {
    private let configuration : Configuration;
    private let mutex : NSLock;
    private var accessTokenCache : String?;
    
    private let maxDebugPrintingContentSize = 1024 * 1024; // 1Mb
    
    public init(configuration : Configuration) {
        self.configuration = configuration;
        self.mutex = NSLock();
        self.accessTokenCache = nil;
    }
    
    private class InvokeResponse {
        public var data : Data?;
        public var errorCode : Int;
        public var errorMessage : String?;
        
        public init(errorCode : Int) {
            self.errorCode = errorCode;
        }
    }
    
    private struct AccessTokenResult : Decodable {
        public var access_token : String?;
    }
    
    public func invoke(
        url: URL,
        method: String,
        body: Data?,
        headers: Dictionary<String, String>?,
        formParams: [RequestFormParam]?,
        contentType: String = "application/json",
        callback: @escaping (_ response: Data?, _ error: Error?) -> ()
    ) {
        var request = URLRequest(url: url);
        request.httpMethod = method;

        if (headers != nil) {
            for (key, value) in headers! {
                request.setValue(value, forHTTPHeaderField: key);
            }
        }
        
        if (body != nil) {
            request.httpBody = body;
            request.setValue(contentType, forHTTPHeaderField: "Content-Type");
        }
        else if (formParams != nil && formParams!.count > 0) {
            if (formParams?.count == 1) {
                request.httpBody = (formParams!)[0].getBody();
            }
            else {
                var needsClrf = false;
                var formBody = Data();
                let boundaryPrefix = "Somthing";
                for formParam in formParams! {
                    if (needsClrf) {
                        formBody.append("\r\n".data(using: .utf8)!);
                    }
                    needsClrf = true;
                
                    formBody.append("--\(boundaryPrefix)\r\nContent-Disposition: form-data; name=\"\(formParam.getName())\"\r\n\r\n".data(using: .utf8)!);
                    formBody.append(formParam.getBody());
                }
                formBody.append("\r\n--\(boundaryPrefix)--\r\n".data(using: .utf8)!);

                request.httpBody = formBody;
                request.setValue("multipart/form-data; boundary=\(boundaryPrefix)", forHTTPHeaderField: "Content-Type");
            }
        }
        
        if (request.httpBody != nil) {
            request.setValue(String(request.httpBody!.count), forHTTPHeaderField: "Content-Length");
        }
        
        invokeAuthToken(forceTokenRequest: false, callback: { accessToken, statusCode in
            if (statusCode == 200) {
                self.invokeRequest(urlRequest: &request, accessToken: accessToken, callback: { response in
                    //if (resp.errorCode == 400) {
                    //    try invokeAuthToken();
                    //    resp = invokeRequestSync(urlRequest: &request, internalCall: false);
                    //}
                    
                    if (response.errorCode == 200) {
                        callback(response.data, nil);
                    }
                    else {
                        callback(nil, WordsApiError.requestError(errorCode: response.errorCode, message: response.errorMessage));
                    }
                });
            }
            else {
                callback(nil, WordsApiError.requestError(errorCode: statusCode, message: "Authorization failed."));
            }
        });
    }
    
    private func invokeRequest(urlRequest : inout URLRequest, accessToken : String?, callback : @escaping (_ response: InvokeResponse) -> ()) {
        if (accessToken != nil) {
            urlRequest.setValue(accessToken!, forHTTPHeaderField: "Authorization");
        }
        
        if (configuration.isDebugMode()) {
            print("REQUEST BEGIN");
            if (urlRequest.url?.absoluteString != nil) {
                print("URL: \(String(describing: urlRequest.url!.absoluteString))");
            }
            if (urlRequest.allHTTPHeaderFields != nil) {
                print("HEADERS: \(String(describing: urlRequest.allHTTPHeaderFields!))");
            }
            if (urlRequest.httpBody != nil) {
                if (urlRequest.httpBody!.count > maxDebugPrintingContentSize) {
                    print("BODY: Response data too long for debug printing. Size: \(urlRequest.httpBody!.count)");
                }
                else {
                    let bodyStr = String(data: urlRequest.httpBody!, encoding: .utf8);
                    if (bodyStr != nil) {
                        print("BODY: \(bodyStr!)");
                    }
                    else {
                        let chars = urlRequest.httpBody!.map { Character(UnicodeScalar($0)) };
                        print("BODY: \(String(Array(chars)))");
                    }
                }
            }
            print("REQUEST END");
        }

        let result = URLSession.shared.dataTask(with: urlRequest, completionHandler: { d, r, e in
            let rawResponse = r as? HTTPURLResponse;
            let invokeResponse = InvokeResponse(errorCode: 408);

            invokeResponse.data = d;
            if (rawResponse != nil) {
                invokeResponse.errorCode = rawResponse!.statusCode;
                invokeResponse.errorMessage = rawResponse!.description;
            }
            else {
                invokeResponse.errorCode = 400;
            }
            
            if (self.configuration.isDebugMode()) {
                print("RESPONSE BEGIN");
                print("\tSTATUS CODE: \(invokeResponse.errorCode)");
                if (invokeResponse.errorMessage != nil) {
                    print("MESSAGE: \(invokeResponse.errorMessage!)");
                }
                if (invokeResponse.data != nil) {
                    if (invokeResponse.data!.count > self.maxDebugPrintingContentSize) {
                        print("BODY: Response data too long for debug printing. Size: \(invokeResponse.data!.count)");
                    }
                    else {
                        let bodyStr = String(data: invokeResponse.data!, encoding: .utf8);
                        if (bodyStr != nil) {
                            print("BODY: \(bodyStr!)");
                        }
                        else {
                            let chars = invokeResponse.data!.map { Character(UnicodeScalar($0)) };
                            print("BODY: \(String(Array(chars)))");
                        }
                    }
                }
                print("RESPONSE END");
            }
            
            callback(invokeResponse);
        });
        result.resume();
    }
    
    private func invokeAuthToken(forceTokenRequest: Bool, callback : @escaping (_ accessToken: String?, _ statusCode: Int) -> ()) {
        var accessToken : String? = nil;
        if (!forceTokenRequest) {
            mutex.lock();
            if (self.accessTokenCache != nil) {
                accessToken = String(self.accessTokenCache!);
            }
            mutex.unlock();
        }
        
        if (accessToken == nil) {
            let urlPath = URL(string: self.configuration.getBaseUrl())!.appendingPathComponent("connect/token");
            var request = URLRequest(url: urlPath);
            request.httpMethod = "POST";
            request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type");
            request.httpBody = "grant_type=client_credentials&client_id=\(configuration.getAppSid())&client_secret=\(configuration.getAppKey())".data(using: .utf8);
            invokeRequest(urlRequest: &request, accessToken: nil, callback: { response in
                var newAccessToken : String? = nil;
                if (response.errorCode == 200) {
                    do {
                        let result = try ObjectSerializer.deserialize(type: AccessTokenResult.self, from: response.data!);
                        if (result.access_token != nil) {
                            newAccessToken = "Bearer " + result.access_token!;
                        }
                    } catch {
                        // Do nothing
                    }
                }
                if (newAccessToken != nil) {
                    self.mutex.lock();
                    self.accessTokenCache = newAccessToken;
                    self.mutex.unlock();
                }
                callback(newAccessToken, response.errorCode);
            });
        }
        else {
            callback(accessToken, 200);
        }
    }
}
