/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="MoveFileRequest.swift">
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

// Request model for moveFile operation.
public class MoveFileRequest {
    private let destPath : ;
    private let srcPath : ;
    private let srcStorageName : ?;
    private let destStorageName : ?;
    private let versionId : ?;
    
    private enum CodingKeys: String, CodingKey {
        case destPath;
        case srcPath;
        case srcStorageName;
        case destStorageName;
        case versionId;
        case invalidCodingKey;
    }
    
    // Initializes a new instance of the moveFileRequest class.
    public init(destPath : , srcPath : , srcStorageName : ? = nil, destStorageName : ? = nil, versionId : ? = nil) {
        self.destPath = destPath;
        self.srcPath = srcPath;
        self.srcStorageName = srcStorageName;
        self.destStorageName = destStorageName;
        self.versionId = versionId;
    }
    
    // Destination file path e.g. '/dest.ext'
    public func getDestPath() ->  {
        return self.destPath;
    }
    
    // Source file's path e.g. '/Folder 1/file.ext' or '/Bucket/Folder 1/file.ext'
    public func getSrcPath() ->  {
        return self.srcPath;
    }
    
    // Source storage name
    public func getSrcStorageName() -> ? {
        return self.srcStorageName;
    }
    
    // Destination storage name
    public func getDestStorageName() -> ? {
        return self.destStorageName;
    }
    
    // File version ID to move
    public func getVersionId() -> ? {
        return self.versionId;
    }
}
