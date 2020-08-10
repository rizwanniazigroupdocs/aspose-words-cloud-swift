/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="InsertOrUpdateParagraphTabStopOnlineRequest.swift">
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

// Request model for insertOrUpdateParagraphTabStopOnline operation.
public class InsertOrUpdateParagraphTabStopOnlineRequest {
    private let document : InputStream;
    private let tabStopInsertDto : TabStopInsert;
    private let index : Int;
    private let nodePath : String?;
    private let loadEncoding : String?;
    private let password : String?;
    private let destFileName : String?;

    private enum CodingKeys: String, CodingKey {
        case document;
        case tabStopInsertDto;
        case index;
        case nodePath;
        case loadEncoding;
        case password;
        case destFileName;
        case invalidCodingKey;
    }

    // Initializes a new instance of the InsertOrUpdateParagraphTabStopOnlineRequest class.
    public init(document : InputStream, tabStopInsertDto : TabStopInsert, index : Int, nodePath : String? = nil, loadEncoding : String? = nil, password : String? = nil, destFileName : String? = nil) {
        self.document = document;
        self.tabStopInsertDto = tabStopInsertDto;
        self.index = index;
        self.nodePath = nodePath;
        self.loadEncoding = loadEncoding;
        self.password = password;
        self.destFileName = destFileName;
    }

    // The document.
    public func getDocument() -> InputStream {
        return self.document;
    }

    // TabStopInsert dto.
    public func getTabStopInsertDto() -> TabStopInsert {
        return self.tabStopInsertDto;
    }

    // Object index.
    public func getIndex() -> Int {
        return self.index;
    }

    // Path to the node which contains paragraph.
    public func getNodePath() -> String? {
        return self.nodePath;
    }

    // Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    public func getLoadEncoding() -> String? {
        return self.loadEncoding;
    }

    // Password for opening an encrypted document.
    public func getPassword() -> String? {
        return self.password;
    }

    // Result path of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    public func getDestFileName() -> String? {
        return self.destFileName;
    }
}