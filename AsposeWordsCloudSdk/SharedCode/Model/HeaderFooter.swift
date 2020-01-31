/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="HeaderFooter.swift">
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

public class HeaderFooter : HeaderFooterLink {
        
    // Gets or sets child nodes.
    private let childNodes : [NodeLink]?;
    // Gets or sets link to DrawingObjects resource.
    private let drawingObjects : LinkElement?;
    // Gets or sets link to Paragraphs resource.
    private let paragraphs : LinkElement?;
        
    public init(childNodes : [NodeLink]? = nil, drawingObjects : LinkElement? = nil, paragraphs : LinkElement? = nil) {
        self.childNodes = childNodes;
        self.drawingObjects = drawingObjects;
        self.paragraphs = paragraphs;
    }
        
    public func getHeaderFooter() -> [NodeLink]? {
        return self.childNodes;
    }
    public func getHeaderFooter() -> LinkElement? {
        return self.drawingObjects;
    }
    public func getHeaderFooter() -> LinkElement? {
        return self.paragraphs;
    }
}
