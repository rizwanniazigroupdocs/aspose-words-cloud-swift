/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="InsertParagraphRequest.swift">
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

public class InsertParagraphRequest : Decodable {
    private let name : String;
    private let paragraph : ParagraphInsert;
    private let nodePath : String;
    private let folder : String?;
    private let storage : String?;
    private let loadEncoding : String?;
    private let password : String?;
    private let destFileName : String?;
    private let revisionAuthor : String?;
    private let revisionDateTime : String?;
    private let insertBeforeNode : String?;
    
    public init(name : String, paragraph : ParagraphInsert, nodePath : String, folder : String? = null, storage : String? = null, loadEncoding : String? = null, password : String? = null, destFileName : String? = null, revisionAuthor : String? = null, revisionDateTime : String? = null, insertBeforeNode : String? = null) {
        self.name = name;
        self.paragraph = paragraph;
        self.nodePath = nodePath;
        self.folder = folder;
        self.storage = storage;
        self.loadEncoding = loadEncoding;
        self.password = password;
        self.destFileName = destFileName;
        self.revisionAuthor = revisionAuthor;
        self.revisionDateTime = revisionDateTime;
        self.insertBeforeNode = insertBeforeNode;
    }
    
    public func getName() -> String {
        return self.name;
    }
    
    public func getParagraph() -> ParagraphInsert {
        return self.paragraph;
    }
    
    public func getNodePath() -> String {
        return self.nodePath;
    }
    
    public func getFolder() -> String? {
        return self.folder;
    }
    
    public func getStorage() -> String? {
        return self.storage;
    }
    
    public func getLoadEncoding() -> String? {
        return self.loadEncoding;
    }
    
    public func getPassword() -> String? {
        return self.password;
    }
    
    public func getDestFileName() -> String? {
        return self.destFileName;
    }
    
    public func getRevisionAuthor() -> String? {
        return self.revisionAuthor;
    }
    
    public func getRevisionDateTime() -> String? {
        return self.revisionDateTime;
    }
    
    public func getInsertBeforeNode() -> String? {
        return self.insertBeforeNode;
    }
}
