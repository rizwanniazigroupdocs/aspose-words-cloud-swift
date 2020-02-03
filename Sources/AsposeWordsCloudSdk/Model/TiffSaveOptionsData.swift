/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="TiffSaveOptionsData.swift">
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

public class TiffSaveOptionsData : ImageSaveOptionsData {
        
    // Gets or sets the threshold that determines the value of the binarization error in the Floyd-Steinberg method. when ImageBinarizationMethod is ImageBinarizationMethod.FloydSteinbergDithering. Default value is 128.
    private let thresholdForFloydSteinbergDithering : Int?;
    // Gets or sets specifies method used while converting images to 1 bpp format.
    private let tiffBinarizationMethod : String?;
    // Gets or sets type of compression.
    private let tiffCompression : String?;
        
    private enum CodingKeys: String, CodingKey { case thresholdForFloydSteinbergDithering, tiffBinarizationMethod, tiffCompression }
        
    public init(thresholdForFloydSteinbergDithering : Int? = nil, tiffBinarizationMethod : String? = nil, tiffCompression : String? = nil) {
        self.thresholdForFloydSteinbergDithering = thresholdForFloydSteinbergDithering;
        self.tiffBinarizationMethod = tiffBinarizationMethod;
        self.tiffCompression = tiffCompression;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        try super.init(from: try container.superDecoder());
        self.thresholdForFloydSteinbergDithering = try container.decodeIfPresent(Int.self, forKey: .thresholdForFloydSteinbergDithering);
        self.tiffBinarizationMethod = try container.decodeIfPresent(String.self, forKey: .tiffBinarizationMethod);
        self.tiffCompression = try container.decodeIfPresent(String.self, forKey: .tiffCompression);
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.thresholdForFloydSteinbergDithering != nil) {
            try container.encode(self.thresholdForFloydSteinbergDithering, forKey: .thresholdForFloydSteinbergDithering);
        }
        if (self.tiffBinarizationMethod != nil) {
            try container.encode(self.tiffBinarizationMethod, forKey: .tiffBinarizationMethod);
        }
        if (self.tiffCompression != nil) {
            try container.encode(self.tiffCompression, forKey: .tiffCompression);
        }
        try super.encode(to: container.superEncoder());
    }
        
    public func getThresholdForFloydSteinbergDithering() -> Int? {
        return self.thresholdForFloydSteinbergDithering;
    }
    public func getTiffBinarizationMethod() -> String? {
        return self.tiffBinarizationMethod;
    }
    public func getTiffCompression() -> String? {
        return self.tiffCompression;
    }
}
