/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="SaveAsRequest.swift">
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

// Request model for saveAs operation.
public class SaveAsRequest {
    private let name : String;
    private let saveOptionsData : SaveOptionsData;
    private let folder : String?;
    private let storage : String?;
    private let loadEncoding : String?;
    private let password : String?;
    private let fontsLocation : String?;

    private enum CodingKeys: String, CodingKey {
        case name;
        case saveOptionsData;
        case folder;
        case storage;
        case loadEncoding;
        case password;
        case fontsLocation;
        case invalidCodingKey;
    }

    // Initializes a new instance of the SaveAsRequest class.
    public init(name : String, saveOptionsData : SaveOptionsData, folder : String? = nil, storage : String? = nil, loadEncoding : String? = nil, password : String? = nil, fontsLocation : String? = nil) {
        self.name = name;
        self.saveOptionsData = saveOptionsData;
        self.folder = folder;
        self.storage = storage;
        self.loadEncoding = loadEncoding;
        self.password = password;
        self.fontsLocation = fontsLocation;
    }

    // The document name.
    public func getName() -> String {
        return self.name;
    }

    // Save options.
    public func getSaveOptionsData() -> SaveOptionsData {
        return self.saveOptionsData;
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

    // Folder in filestorage with custom fonts.
    public func getFontsLocation() -> String? {
        return self.fontsLocation;
    }

    // Creates the api request data
    public func createApiRequest(configuration : Configuration) throws -> ApiRequest {
         var rawPath = "/words/{name}/saveAs";
         rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: self.getName()));

         rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

         let urlPath = (try configuration.getApiRootUrl()).appendingPathComponent(rawPath);
         var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
         var queryItems : [URLQueryItem] = [];
         if (self.getFolder() != nil) {
             queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: self.getFolder()!)));
         }

         if (self.getStorage() != nil) {
             queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: self.getStorage()!)));
         }

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

         var result = ApiRequest(url: urlBuilder.url!, method: "PUT");
         result.setBody(body: try ObjectSerializer.serializeBody(value: self.getSaveOptionsData()), contentType: "application/json");
         return result;
    }
}
