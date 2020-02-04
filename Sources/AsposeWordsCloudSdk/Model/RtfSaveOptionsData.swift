/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="RtfSaveOptionsData.swift">
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

public class RtfSaveOptionsData : SaveOptionsData, WordsApiModel {
        
    // Gets or sets allows to make output RTF documents smaller in size, but if they contain RTL (right-to-left) text, it will not be displayed correctly.
    private var exportCompactSize : Bool?;
    // Gets or sets specifies whether the keywords for \&quot;old readers\&quot; are written to RTF or not.
    private var exportImagesForOldReaders : Bool?;
    // Gets or sets specifies whether or not use pretty formats output.
    private var prettyFormat : Bool?;
        
    private enum CodingKeys: String, CodingKey {
        case exportCompactSize;
        case exportImagesForOldReaders;
        case prettyFormat;
        case invalidCodingKey;
    }
        
    public override init() {
        super.init();
    }
    
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.exportCompactSize = try container.decodeIfPresent(Bool.self, forKey: .exportCompactSize);
        self.exportImagesForOldReaders = try container.decodeIfPresent(Bool.self, forKey: .exportImagesForOldReaders);
        self.prettyFormat = try container.decodeIfPresent(Bool.self, forKey: .prettyFormat);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.exportCompactSize != nil) {
            try container.encode(self.exportCompactSize, forKey: .exportCompactSize);
        }
        if (self.exportImagesForOldReaders != nil) {
            try container.encode(self.exportImagesForOldReaders, forKey: .exportImagesForOldReaders);
        }
        if (self.prettyFormat != nil) {
            try container.encode(self.prettyFormat, forKey: .prettyFormat);
        }
    }
        
    public func setExportCompactSize(exportCompactSize : Bool?) {
        self.exportCompactSize = exportCompactSize;
    }
    
    public func getExportCompactSize() -> Bool? {
        return self.exportCompactSize;
    }
    public func setExportImagesForOldReaders(exportImagesForOldReaders : Bool?) {
        self.exportImagesForOldReaders = exportImagesForOldReaders;
    }
    
    public func getExportImagesForOldReaders() -> Bool? {
        return self.exportImagesForOldReaders;
    }
    public func setPrettyFormat(prettyFormat : Bool?) {
        self.prettyFormat = prettyFormat;
    }
    
    public func getPrettyFormat() -> Bool? {
        return self.prettyFormat;
    }
}
