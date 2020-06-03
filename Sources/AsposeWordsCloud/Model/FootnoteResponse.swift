/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="FootnoteResponse.swift">
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

// This response should be returned by the service when handling:
// GET https://api.aspose.cloud/v4.0/words/Test.doc/footnote/0.
public class FootnoteResponse : WordsResponse {
    // Field of footnote. This response should be returned by the service when handling: GET https://api.aspose.cloud/v4.0/words/Test.doc/footnote/0.
    private var footnote : Footnote?;

    private enum CodingKeys: String, CodingKey {
        case footnote;
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.footnote = try container.decodeIfPresent(Footnote.self, forKey: .footnote);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.footnote != nil) {
            try container.encode(self.footnote, forKey: .footnote);
        }
    }

    // Sets footnote. Gets or sets footnote information.
    public func setFootnote(footnote : Footnote?) {
        self.footnote = footnote;
    }

    // Gets footnote. Gets or sets footnote information.
    public func getFootnote() -> Footnote? {
        return self.footnote;
    }
}
