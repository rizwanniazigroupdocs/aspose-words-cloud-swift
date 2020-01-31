/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="SearchResult.swift">
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

public class SearchResult : Decodable {
        
    // Gets or sets link to result range start node.
    private let rangeStart : DocumentPosition?;
    // Gets or sets link to result range end node.
    private let rangeEnd : DocumentPosition?;
        
    public init(rangeStart : DocumentPosition? = nil, rangeEnd : DocumentPosition? = nil) {
        self.rangeStart = rangeStart;
        self.rangeEnd = rangeEnd;
    }
        
    public func getSearchResult() -> DocumentPosition? {
        return self.rangeStart;
    }
    public func getSearchResult() -> DocumentPosition? {
        return self.rangeEnd;
    }
}
