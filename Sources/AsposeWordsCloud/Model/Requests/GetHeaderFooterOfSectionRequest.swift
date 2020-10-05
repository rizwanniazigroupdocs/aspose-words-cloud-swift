/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="GetHeaderFooterOfSectionRequest.swift">
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

// Request model for getHeaderFooterOfSection operation.
public class GetHeaderFooterOfSectionRequest {
    private let name : String;
    private let headerFooterIndex : Int;
    private let sectionIndex : Int;
    private let folder : String?;
    private let storage : String?;
    private let loadEncoding : String?;
    private let password : String?;
    private let filterByType : String?;

    private enum CodingKeys: String, CodingKey {
        case name;
        case headerFooterIndex;
        case sectionIndex;
        case folder;
        case storage;
        case loadEncoding;
        case password;
        case filterByType;
        case invalidCodingKey;
    }

    // Initializes a new instance of the GetHeaderFooterOfSectionRequest class.
    public init(name : String, headerFooterIndex : Int, sectionIndex : Int, folder : String? = nil, storage : String? = nil, loadEncoding : String? = nil, password : String? = nil, filterByType : String? = nil) {
        self.name = name;
        self.headerFooterIndex = headerFooterIndex;
        self.sectionIndex = sectionIndex;
        self.folder = folder;
        self.storage = storage;
        self.loadEncoding = loadEncoding;
        self.password = password;
        self.filterByType = filterByType;
    }

    // Creates the api request data
    public createApiRequest() throws -> ApiRequest {
         var rawPath = "/words/{name}/sections/{sectionIndex}/headersfooters/{headerFooterIndex}";
         rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

         rawPath = rawPath.replacingOccurrences(of: "{headerFooterIndex}", with: try ObjectSerializer.serializeToString(value: request.getHeaderFooterIndex()));

         rawPath = rawPath.replacingOccurrences(of: "{sectionIndex}", with: try ObjectSerializer.serializeToString(value: request.getSectionIndex()));

         rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

         let urlPath = (try self.configuration.getApiRootUrl()).appendingPathComponent(rawPath);
         var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
         var queryItems : [URLQueryItem] = [];
         if (request.getFolder() != nil) {
             queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
         }

         if (request.getStorage() != nil) {
             queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
         }

         if (request.getLoadEncoding() != nil) {
             queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
         }

         if (request.getPassword() != nil) {
             queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
         }

         if (request.getFilterByType() != nil) {
             queryItems.append(URLQueryItem(name: "filterByType", value: try ObjectSerializer.serializeToString(value: request.getFilterByType()!)));
         }

         if (queryItems.count > 0) {
             urlBuilder.queryItems = queryItems;
         }

         let result = ApiRequest(url: urlBuilder.url!, method: "GET");
         return result;
    }

    // The document name.
    public func getName() -> String {
        return self.name;
    }

    // Header/footer index.
    public func getHeaderFooterIndex() -> Int {
        return self.headerFooterIndex;
    }

    // Section index.
    public func getSectionIndex() -> Int {
        return self.sectionIndex;
    }

    // Original document folder.
    public func getFolder() -> String? {
        return self.folder;
    }

    // Original document storage.
    public func getStorage() -> String? {
        return self.storage;
    }

    // Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    public func getLoadEncoding() -> String? {
        return self.loadEncoding;
    }

    // Password for opening an encrypted document.
    public func getPassword() -> String? {
        return self.password;
    }

    // List of types of headers and footers.
    public func getFilterByType() -> String? {
        return self.filterByType;
    }
}
