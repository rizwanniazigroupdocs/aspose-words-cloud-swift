/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="GetDocumentWithFormatRequest.swift">
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

public class GetDocumentWithFormatRequest : Decodable {
    private let name : String;
    private let format : String;
    private let folder : String?;
    private let storage : String?;
    private let loadEncoding : String?;
    private let password : String?;
    private let outPath : String?;
    private let fontsLocation : String?;
    
    private enum CodingKeys: String, CodingKey { case name, format, folder, storage, loadEncoding, password, outPath, fontsLocation }
    
    public init(name : String, format : String, folder : String? = null, storage : String? = null, loadEncoding : String? = null, password : String? = null, outPath : String? = null, fontsLocation : String? = null) {
        self.name = name;
        self.format = format;
        self.folder = folder;
        self.storage = storage;
        self.loadEncoding = loadEncoding;
        self.password = password;
        self.outPath = outPath;
        self.fontsLocation = fontsLocation;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        
        self.name = try container.decode(.self, forKey: .name);
        self.format = try container.decode(.self, forKey: .format);
        if let folder = try container.decodeIfPresent(.self, forKey: .folder) {
            self.folder = folder;
        }
        if let storage = try container.decodeIfPresent(.self, forKey: .storage) {
            self.storage = storage;
        }
        if let loadEncoding = try container.decodeIfPresent(.self, forKey: .loadEncoding) {
            self.loadEncoding = loadEncoding;
        }
        if let password = try container.decodeIfPresent(.self, forKey: .password) {
            self.password = password;
        }
        if let outPath = try container.decodeIfPresent(.self, forKey: .outPath) {
            self.outPath = outPath;
        }
        if let fontsLocation = try container.decodeIfPresent(.self, forKey: .fontsLocation) {
            self.fontsLocation = fontsLocation;
        }

    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        try container.encode(self.name, forKey: .name);
        try container.encode(self.format, forKey: .format);
        if (self.folder != nil) {
            try container.encode(self.folder, forKey: .folder);
        }
        if (self.storage != nil) {
            try container.encode(self.storage, forKey: .storage);
        }
        if (self.loadEncoding != nil) {
            try container.encode(self.loadEncoding, forKey: .loadEncoding);
        }
        if (self.password != nil) {
            try container.encode(self.password, forKey: .password);
        }
        if (self.outPath != nil) {
            try container.encode(self.outPath, forKey: .outPath);
        }
        if (self.fontsLocation != nil) {
            try container.encode(self.fontsLocation, forKey: .fontsLocation);
        }
        
        
    }
    
    public func getName() -> String {
        return self.name;
    }
    
    public func getFormat() -> String {
        return self.format;
    }
    
    public func getFolder() -> String? {
        return self.folder;
    }
    
    public func getStorage() -> String? {
        return self.storage;
    }
    
    public func getLoadEncoding() -> String? {
        return self.loadEncoding;
    }
    
    public func getPassword() -> String? {
        return self.password;
    }
    
    public func getOutPath() -> String? {
        return self.outPath;
    }
    
    public func getFontsLocation() -> String? {
        return self.fontsLocation;
    }
}
