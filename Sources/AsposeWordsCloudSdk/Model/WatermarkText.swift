/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="WatermarkText.swift">
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

public class WatermarkText : Codable {
        
    // Gets or sets the watermark text.
    private var text : String?;
    // Gets or sets the watermark rotation angle.
    private var rotationAngle : Double?;
        
    private enum CodingKeys: String, CodingKey {
        case text;
        case rotationAngle;
        case invalidCodingKey;
    }
        
    public init() {
        
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        
        self.text = try container.decodeIfPresent(String.self, forKey: .text);
        self.rotationAngle = try container.decode(Double.self, forKey: .rotationAngle);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.text != nil) {
            try container.encode(self.text, forKey: .text);
        }
        if (self.rotationAngle == nil) {
            throw WordsApiError.requiredArgumentError("rotationAngle");
        }
        try container.encode(self.rotationAngle, forKey: .rotationAngle);
        
    }
        
    public func setText(text : String?) {
        self.text = text;
    }
    
    public func getText() -> String? {
        return self.text;
    }
    public func setRotationAngle(rotationAngle : Double) {
        self.rotationAngle = rotationAngle;
    }
    
    public func getRotationAngle() -> Double {
        return self.rotationAngle!;
    }
}
