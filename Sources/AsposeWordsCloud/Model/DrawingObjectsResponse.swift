/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="DrawingObjectsResponse.swift">
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

// This response should be returned by the service when handling:  GET /drawingObjects.
public class DrawingObjectsResponse : WordsResponse {
    
    // Field of drawingObjects. Gets or sets collection of drawing objects.      
    private var drawingObjects : DrawingObjectCollection?;
        
    private enum CodingKeys: String, CodingKey {
        case drawingObjects;
        case invalidCodingKey;
    }
        
    public override init() {
        super.init();
    }
    
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.drawingObjects = try container.decodeIfPresent(DrawingObjectCollection.self, forKey: .drawingObjects);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.drawingObjects != nil) {
            try container.encode(self.drawingObjects, forKey: .drawingObjects);
        }
    }
    
    // Sets drawingObjects. Gets or sets collection of drawing objects.  
    public func setDrawingObjects(drawingObjects : DrawingObjectCollection?) {
        self.drawingObjects = drawingObjects;
    }
    
    // Gets drawingObjects. Gets or sets collection of drawing objects.  
    public func getDrawingObjects() -> DrawingObjectCollection? {
        return self.drawingObjects;
    }
}