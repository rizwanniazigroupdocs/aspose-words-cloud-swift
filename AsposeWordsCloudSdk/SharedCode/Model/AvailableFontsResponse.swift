/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="AvailableFontsResponse.swift">
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

public class AvailableFontsResponse : WordsResponse {
        
    // Gets or sets the list of addititional fonts, provided by aspose team.
    private let additionalFonts : [FontInfo]?;
    // Gets or sets custom user fonts (from user file storage). To use them, you should specify \&quot;fontsLocation\&quot; parameter in any request.
    private let customFonts : [FontInfo]?;
    // Gets or sets the list of system fonts, availiable on the server.
    private let systemFonts : [FontInfo]?;
        
    public init(additionalFonts : [FontInfo]? = nil, customFonts : [FontInfo]? = nil, systemFonts : [FontInfo]? = nil) {
        self.additionalFonts = additionalFonts;
        self.customFonts = customFonts;
        self.systemFonts = systemFonts;
    }
        
    public func getAvailableFontsResponse() -> [FontInfo]? {
        return self.additionalFonts;
    }
    public func getAvailableFontsResponse() -> [FontInfo]? {
        return self.customFonts;
    }
    public func getAvailableFontsResponse() -> [FontInfo]? {
        return self.systemFonts;
    }
}
