/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ExecuteMailMergeOnlineRequest.swift">
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

// Request model for executeMailMergeOnline operation.
public class ExecuteMailMergeOnlineRequest : WordsApiRequest {
    private let template : InputStream;
    private let data : InputStream;
    private let withRegions : Bool?;
    private let cleanup : String?;
    private let documentFileName : String?;

    private enum CodingKeys: String, CodingKey {
        case template;
        case data;
        case withRegions;
        case cleanup;
        case documentFileName;
        case invalidCodingKey;
    }

    // Initializes a new instance of the ExecuteMailMergeOnlineRequest class.
    public init(template : InputStream, data : InputStream, withRegions : Bool? = nil, cleanup : String? = nil, documentFileName : String? = nil) {
        self.template = template;
        self.data = data;
        self.withRegions = withRegions;
        self.cleanup = cleanup;
        self.documentFileName = documentFileName;
    }

    // File with template.
    public func getTemplate() -> InputStream {
        return self.template;
    }

    // File with mailmerge data.
    public func getData() -> InputStream {
        return self.data;
    }

    // The flag indicating whether to execute Mail Merge operation with regions.
    public func getWithRegions() -> Bool? {
        return self.withRegions;
    }

    // The cleanup options.
    public func getCleanup() -> String? {
        return self.cleanup;
    }

    // The filename of the output document, that will be used when the resulting document has a dynamic field {filename}. If it is not set, the "template" will be used instead.
    public func getDocumentFileName() -> String? {
        return self.documentFileName;
    }

    // Creates the api request data
    public func createApiRequestData(configuration : Configuration) throws -> WordsApiRequestData {
         var rawPath = "/words/MailMerge";
         rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

         let urlPath = (try configuration.getApiRootUrl()).appendingPathComponent(rawPath);
         var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
         var queryItems : [URLQueryItem] = [];
         if (self.getWithRegions() != nil) {
             queryItems.append(URLQueryItem(name: "withRegions", value: try ObjectSerializer.serializeToString(value: self.getWithRegions()!)));
         }

         if (self.getCleanup() != nil) {
             queryItems.append(URLQueryItem(name: "cleanup", value: try ObjectSerializer.serializeToString(value: self.getCleanup()!)));
         }

         if (self.getDocumentFileName() != nil) {
             queryItems.append(URLQueryItem(name: "documentFileName", value: try ObjectSerializer.serializeToString(value: self.getDocumentFileName()!)));
         }

         if (queryItems.count > 0) {
             urlBuilder.queryItems = queryItems;
         }
         var formParams : [RequestFormParam] = [];
         formParams.append(RequestFormParam(name: "template", body: try ObjectSerializer.serializeFile(value: self.getTemplate()), contentType: "application/octet-stream"));

         formParams.append(RequestFormParam(name: "data", body: try ObjectSerializer.serializeFile(value: self.getData()), contentType: "application/octet-stream"));


         var result = WordsApiRequestData(url: urlBuilder.url!, method: "PUT");
         result.setBody(formParams: formParams);
         return result;
    }

    // Deserialize response of this request
    public func deserializeResponse(data : Data) throws -> Any? {
        return data;
    }
}
