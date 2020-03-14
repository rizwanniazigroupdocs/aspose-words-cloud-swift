/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ParagraphResponse.swift">
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

// This response should be returned by the service when handling: GET https://api.aspose.cloud/v4.0/words/Test.doc/paragraphs/{0}.
public class ParagraphResponse : WordsResponse {
    
    // Field of paragraph. Gets or sets paragraph.      
    private var paragraph : Paragraph?;
        
    private enum CodingKeys: String, CodingKey {
        case paragraph;
        case invalidCodingKey;
    }
        
    public override init() {
        super.init();
    }
    
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.paragraph = try container.decodeIfPresent(Paragraph.self, forKey: .paragraph);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.paragraph != nil) {
            try container.encode(self.paragraph, forKey: .paragraph);
        }
    }
    
    // Sets paragraph. Gets or sets paragraph.  
    public func setParagraph(paragraph : Paragraph?) {
        self.paragraph = paragraph;
    }
    
    // Gets paragraph. Gets or sets paragraph.  
    public func getParagraph() -> Paragraph? {
        return self.paragraph;
    }
}