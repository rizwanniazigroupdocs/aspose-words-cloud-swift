/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="UpdateParagraphListFormatOnlineResponse.swift">
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

// Response model for updateParagraphListFormatOnline operation.
public class UpdateParagraphListFormatOnlineResponse {
    private let model : ParagraphListFormatResponse;
    private let document : InputStream;

    private enum CodingKeys: String, CodingKey {
        case model;
        case document;
        case invalidCodingKey;
    }

    // Initializes a new instance of the UpdateParagraphListFormatOnlineResponse class.
    public init(model : ParagraphListFormatResponse, document : InputStream) {
        self.model = model;
        self.document = document;
    }

    public func getModel() -> ParagraphListFormatResponse {
        return self.model;
    }

    // The document.
    public func getDocument() -> InputStream {
        return self.document;
    }
}
