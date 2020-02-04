/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="RenderPageRequest.swift">
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

public class RenderPageRequest : Encodable {
    private let name : String;
    private let pageIndex : Int;
    private let format : String;
    private let folder : String?;
    private let storage : String?;
    private let loadEncoding : String?;
    private let password : String?;
    private let fontsLocation : String?;
    
    private enum CodingKeys: String, CodingKey {
        case name;
        case pageIndex;
        case format;
        case folder;
        case storage;
        case loadEncoding;
        case password;
        case fontsLocation;
        case invalidCodingKey;
    }
    
    public init(name : String, pageIndex : Int, format : String, folder : String? = nil, storage : String? = nil, loadEncoding : String? = nil, password : String? = nil, fontsLocation : String? = nil) {
        self.name = name;
        self.pageIndex = pageIndex;
        self.format = format;
        self.folder = folder;
        self.storage = storage;
        self.loadEncoding = loadEncoding;
        self.password = password;
        self.fontsLocation = fontsLocation;
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        try container.encode(self.name, forKey: .name);
        try container.encode(self.pageIndex, forKey: .pageIndex);
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
        if (self.fontsLocation != nil) {
            try container.encode(self.fontsLocation, forKey: .fontsLocation);
        }
    }
    
    public func getName() -> String {
        return self.name;
    }
    
    public func getPageIndex() -> Int {
        return self.pageIndex;
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
    
    public func getFontsLocation() -> String? {
        return self.fontsLocation;
    }
}
