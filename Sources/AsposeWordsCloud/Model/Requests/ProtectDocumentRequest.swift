/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ProtectDocumentRequest.swift">
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

// Request model for protectDocument operation.
public class ProtectDocumentRequest {
    private let name : String;
    private let protectionRequest : ProtectionRequest;
    private let folder : String?;
    private let storage : String?;
    private let loadEncoding : String?;
    private let password : String?;
    private let destFileName : String?;

    private enum CodingKeys: String, CodingKey {
        case name;
        case protectionRequest;
        case folder;
        case storage;
        case loadEncoding;
        case password;
        case destFileName;
        case invalidCodingKey;
    }

    // Initializes a new instance of the ProtectDocumentRequest class.
    public init(name : String, protectionRequest : ProtectionRequest, folder : String? = nil, storage : String? = nil, loadEncoding : String? = nil, password : String? = nil, destFileName : String? = nil) {
        self.name = name;
        self.protectionRequest = protectionRequest;
        self.folder = folder;
        self.storage = storage;
        self.loadEncoding = loadEncoding;
        self.password = password;
        self.destFileName = destFileName;
    }

    // The document name.
    public func getName() -> String {
        return self.name;
    }

    // ProtectionRequest with protection settings.
    public func getProtectionRequest() -> ProtectionRequest {
        return self.protectionRequest;
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

    // Result path of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    public func getDestFileName() -> String? {
        return self.destFileName;
    }
}
