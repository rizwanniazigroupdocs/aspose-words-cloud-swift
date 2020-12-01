/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="SaveAsOnlineRequest.swift">
 *   Copyright (c) 2020 Aspose.Words for Cloud
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

// Request model for saveAsOnline operation.
public class SaveAsOnlineRequest : WordsApiRequest {
    private let document : InputStream;
    private let saveOptionsData : SaveOptionsData;
    private let loadEncoding : String?;
    private let password : String?;
    private let fontsLocation : String?;

    private enum CodingKeys: String, CodingKey {
        case document;
        case saveOptionsData;
        case loadEncoding;
        case password;
        case fontsLocation;
        case invalidCodingKey;
    }

    // Initializes a new instance of the SaveAsOnlineRequest class.
    public init(document : InputStream, saveOptionsData : SaveOptionsData, loadEncoding : String? = nil, password : String? = nil, fontsLocation : String? = nil) {
        self.document = document;
        self.saveOptionsData = saveOptionsData;
        self.loadEncoding = loadEncoding;
        self.password = password;
        self.fontsLocation = fontsLocation;
    }

    // The document.
    public func getDocument() -> InputStream {
        return self.document;
    }

    // Save options.
    public func getSaveOptionsData() -> SaveOptionsData {
        return self.saveOptionsData;
    }

    // Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    public func getLoadEncoding() -> String? {
        return self.loadEncoding;
    }

    // Password for opening an encrypted document.
    public func getPassword() -> String? {
        return self.password;
    }

    // Folder in filestorage with custom fonts.
    public func getFontsLocation() -> String? {
        return self.fontsLocation;
    }

    // Creates the api request data
    public func createApiRequestData(configuration : Configuration) throws -> WordsApiRequestData {
         var rawPath = "/words/online/saveAs";
         rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

         let urlPath = (try configuration.getApiRootUrl()).appendingPathComponent(rawPath);
         var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
         var queryItems : [URLQueryItem] = [];
         if (self.getLoadEncoding() != nil) {
             queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: self.getLoadEncoding()!)));
         }

         if (self.getPassword() != nil) {
             queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: self.getPassword()!)));
         }

         if (self.getFontsLocation() != nil) {
             queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serializeToString(value: self.getFontsLocation()!)));
         }

         if (queryItems.count > 0) {
             urlBuilder.queryItems = queryItems;
         }
         var formParams : [RequestFormParam] = [];
         formParams.append(RequestFormParam(name: "document", body: try ObjectSerializer.serializeFile(value: self.getDocument()), contentType: "application/octet-stream"));

         formParams.append(RequestFormParam(name: "saveOptionsData", body: try ObjectSerializer.serialize(value: self.getSaveOptionsData()), contentType: "application/json"));


         var result = WordsApiRequestData(url: urlBuilder.url!, method: "PUT");
         result.setBody(formParams: formParams);
         return result;
    }

    // Deserialize response of this request
    public func deserializeResponse(data : Data) throws -> Any? {
        let multipart = try ObjectSerializer.parseMultipart(data: data);
        return SaveAsOnlineResponse(
            model: try ObjectSerializer.deserialize(
                type: SaveResponse.self,
                from: (try ObjectSerializer.getMultipartByName(multipart, "Model")).getBody()),
            document: (try ObjectSerializer.getMultipartByName(multipart, "Document")).getBody()
        );
    }
}
