/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ReplaceTextRequest.swift">
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

public class ReplaceTextRequest : Codable {
    private let name : String;
    private let replaceText : ReplaceTextParameters;
    private let folder : String?;
    private let storage : String?;
    private let loadEncoding : String?;
    private let password : String?;
    private let destFileName : String?;
    private let revisionAuthor : String?;
    private let revisionDateTime : String?;
    
    private enum CodingKeys: String, CodingKey {
        case name;
        case replaceText;
        case folder;
        case storage;
        case loadEncoding;
        case password;
        case destFileName;
        case revisionAuthor;
        case revisionDateTime;
    }
    
    public init(name : String, replaceText : ReplaceTextParameters, folder : String? = null, storage : String? = null, loadEncoding : String? = null, password : String? = null, destFileName : String? = null, revisionAuthor : String? = null, revisionDateTime : String? = null) {
        self.name = name;
        self.replaceText = replaceText;
        self.folder = folder;
        self.storage = storage;
        self.loadEncoding = loadEncoding;
        self.password = password;
        self.destFileName = destFileName;
        self.revisionAuthor = revisionAuthor;
        self.revisionDateTime = revisionDateTime;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        
        self.name = try container.decode(.self, forKey: .name);
        self.replaceText = try container.decode(.self, forKey: .replaceText);
        self.folder = try container.decodeIfPresent(.self, forKey: .folder);
        self.storage = try container.decodeIfPresent(.self, forKey: .storage);
        self.loadEncoding = try container.decodeIfPresent(.self, forKey: .loadEncoding);
        self.password = try container.decodeIfPresent(.self, forKey: .password);
        self.destFileName = try container.decodeIfPresent(.self, forKey: .destFileName);
        self.revisionAuthor = try container.decodeIfPresent(.self, forKey: .revisionAuthor);
        self.revisionDateTime = try container.decodeIfPresent(.self, forKey: .revisionDateTime);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        try container.encode(self.name, forKey: .name);
        try container.encode(self.replaceText, forKey: .replaceText);
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
        if (self.destFileName != nil) {
            try container.encode(self.destFileName, forKey: .destFileName);
        }
        if (self.revisionAuthor != nil) {
            try container.encode(self.revisionAuthor, forKey: .revisionAuthor);
        }
        if (self.revisionDateTime != nil) {
            try container.encode(self.revisionDateTime, forKey: .revisionDateTime);
        }
        
    }
    
    public func getName() -> String {
        return self.name;
    }
    
    public func getReplaceText() -> ReplaceTextParameters {
        return self.replaceText;
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
    
    public func getDestFileName() -> String? {
        return self.destFileName;
    }
    
    public func getRevisionAuthor() -> String? {
        return self.revisionAuthor;
    }
    
    public func getRevisionDateTime() -> String? {
        return self.revisionDateTime;
    }
}
