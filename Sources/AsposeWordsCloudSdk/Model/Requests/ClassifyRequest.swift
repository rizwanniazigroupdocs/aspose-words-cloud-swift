/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ClassifyRequest.swift">
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

public class ClassifyRequest : Codable {
    private let text : String;
    private let bestClassesCount : String?;
    
    private enum CodingKeys: String, CodingKey { case text, bestClassesCount }
    
    public init(text : String, bestClassesCount : String? = null) {
        self.text = text;
        self.bestClassesCount = bestClassesCount;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        
        self.text = try container.decode(.self, forKey: .text);
        self.bestClassesCount = try container.decodeIfPresent(.self, forKey: .bestClassesCount);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        try container.encode(self.text, forKey: .text);
        if (self.bestClassesCount != nil) {
            try container.encode(self.bestClassesCount, forKey: .bestClassesCount);
        }
        
    }
    
    public func getText() -> String {
        return self.text;
    }
    
    public func getBestClassesCount() -> String? {
        return self.bestClassesCount;
    }
}
