/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="TableCellInsert.swift">
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

// Table cell element.
public class TableCellInsert : Codable, WordsApiModel {
    
    // Field of insertAfter. Gets or sets table cell will be inserted after cell with specified 0-based index.      
    private var insertAfter : Int?;
        
    private enum CodingKeys: String, CodingKey {
        case insertAfter;
        case invalidCodingKey;
    }
        
    public init() {
        
    }
    
    public required init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.insertAfter = try container.decodeIfPresent(Int.self, forKey: .insertAfter);
    }

    public func encode(to encoder: Encoder) throws {
        
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.insertAfter != nil) {
            try container.encode(self.insertAfter, forKey: .insertAfter);
        }
    }
    
    // Sets insertAfter. Gets or sets table cell will be inserted after cell with specified 0-based index.  
    public func setInsertAfter(insertAfter : Int?) {
        self.insertAfter = insertAfter;
    }
    
    // Gets insertAfter. Gets or sets table cell will be inserted after cell with specified 0-based index.  
    public func getInsertAfter() -> Int? {
        return self.insertAfter;
    }
}
