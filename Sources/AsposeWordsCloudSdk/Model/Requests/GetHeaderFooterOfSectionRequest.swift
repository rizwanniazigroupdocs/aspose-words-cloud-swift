/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="GetHeaderFooterOfSectionRequest.swift">
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

public class GetHeaderFooterOfSectionRequest : Codable {
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
    
    public init(name : String, headerFooterIndex : Int, sectionIndex : Int, folder : String? = null, storage : String? = null, loadEncoding : String? = null, password : String? = null, filterByType : String? = null) {
        self.name = name;
        self.headerFooterIndex = headerFooterIndex;
        self.sectionIndex = sectionIndex;
        self.folder = folder;
        self.storage = storage;
        self.loadEncoding = loadEncoding;
        self.password = password;
        self.filterByType = filterByType;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.name = try container.decode(.self, forKey: .name);
        self.headerFooterIndex = try container.decode(.self, forKey: .headerFooterIndex);
        self.sectionIndex = try container.decode(.self, forKey: .sectionIndex);
        self.folder = try container.decodeIfPresent(.self, forKey: .folder);
        self.storage = try container.decodeIfPresent(.self, forKey: .storage);
        self.loadEncoding = try container.decodeIfPresent(.self, forKey: .loadEncoding);
        self.password = try container.decodeIfPresent(.self, forKey: .password);
        self.filterByType = try container.decodeIfPresent(.self, forKey: .filterByType);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        try container.encode(self.name, forKey: .name);
        try container.encode(self.headerFooterIndex, forKey: .headerFooterIndex);
        try container.encode(self.sectionIndex, forKey: .sectionIndex);
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
        if (self.filterByType != nil) {
            try container.encode(self.filterByType, forKey: .filterByType);
        }
    }
    
    public func getName() -> String {
        return self.name;
    }
    
    public func getHeaderFooterIndex() -> Int {
        return self.headerFooterIndex;
    }
    
    public func getSectionIndex() -> Int {
        return self.sectionIndex;
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
    
    public func getFilterByType() -> String? {
        return self.filterByType;
    }
}
