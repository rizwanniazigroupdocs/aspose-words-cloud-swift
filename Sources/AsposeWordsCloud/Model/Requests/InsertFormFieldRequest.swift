/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="InsertFormFieldRequest.swift">
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

// Request model for insertFormField operation.
public class InsertFormFieldRequest {
    private let name : ;
    private let formField : ;
    private let nodePath : ;
    private let folder : ?;
    private let storage : ?;
    private let loadEncoding : ?;
    private let password : ?;
    private let destFileName : ?;
    private let revisionAuthor : ?;
    private let revisionDateTime : ?;
    private let insertBeforeNode : ?;
    
    private enum CodingKeys: String, CodingKey {
        case name;
        case formField;
        case nodePath;
        case folder;
        case storage;
        case loadEncoding;
        case password;
        case destFileName;
        case revisionAuthor;
        case revisionDateTime;
        case insertBeforeNode;
        case invalidCodingKey;
    }
    
    // Initializes a new instance of the insertFormFieldRequest class.
    public init(name : , formField : , nodePath : , folder : ? = nil, storage : ? = nil, loadEncoding : ? = nil, password : ? = nil, destFileName : ? = nil, revisionAuthor : ? = nil, revisionDateTime : ? = nil, insertBeforeNode : ? = nil) {
        self.name = name;
        self.formField = formField;
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
    
    // The document name.
    public func getName() ->  {
        return self.name;
    }
    
    // From field data.
    public func getFormField() ->  {
        return self.formField;
    }
    
    // Path to the node that contains collection of formfields.
    public func getNodePath() ->  {
        return self.nodePath;
    }
    
    // Original document folder.
    public func getFolder() -> ? {
        return self.folder;
    }
    
    // Original document storage.
    public func getStorage() -> ? {
        return self.storage;
    }
    
    // Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    public func getLoadEncoding() -> ? {
        return self.loadEncoding;
    }
    
    // Password for opening an encrypted document.
    public func getPassword() -> ? {
        return self.password;
    }
    
    // Result path of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    public func getDestFileName() -> ? {
        return self.destFileName;
    }
    
    // Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    public func getRevisionAuthor() -> ? {
        return self.revisionAuthor;
    }
    
    // The date and time to use for revisions.
    public func getRevisionDateTime() -> ? {
        return self.revisionDateTime;
    }
    
    // Form field will be inserted before node with index.
    public func getInsertBeforeNode() -> ? {
        return self.insertBeforeNode;
    }
}
