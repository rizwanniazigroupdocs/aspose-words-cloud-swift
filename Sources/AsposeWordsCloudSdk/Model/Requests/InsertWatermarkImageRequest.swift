/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="InsertWatermarkImageRequest.swift">
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
public class InsertWatermarkImageRequest : Encodable {
    private let name : String;
    private let imageFile : URL?;
    private let folder : String?;
    private let storage : String?;
    private let loadEncoding : String?;
    private let password : String?;
    private let destFileName : String?;
    private let revisionAuthor : String?;
    private let revisionDateTime : String?;
    private let rotationAngle : Double?;
    private let image : String?;
    
    private enum CodingKeys: String, CodingKey {
        case name;
        case imageFile;
        case folder;
        case storage;
        case loadEncoding;
        case password;
        case destFileName;
        case revisionAuthor;
        case revisionDateTime;
        case rotationAngle;
        case image;
        case invalidCodingKey;
    }
    
    public init(name : String, imageFile : URL? = nil, folder : String? = nil, storage : String? = nil, loadEncoding : String? = nil, password : String? = nil, destFileName : String? = nil, revisionAuthor : String? = nil, revisionDateTime : String? = nil, rotationAngle : Double? = nil, image : String? = nil) {
        self.name = name;
        self.imageFile = imageFile;
        self.folder = folder;
        self.storage = storage;
        self.loadEncoding = loadEncoding;
        self.password = password;
        self.destFileName = destFileName;
        self.revisionAuthor = revisionAuthor;
        self.revisionDateTime = revisionDateTime;
        self.rotationAngle = rotationAngle;
        self.image = image;
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        try container.encode(self.name, forKey: .name);
        if (self.imageFile != nil) {
            try container.encode(self.imageFile, forKey: .imageFile);
        }
        if (self.folder != nil) {
            try container.encode(self.folder, forKey: .folder);
        }
        if (self.storage != nil) {
            try container.encode(self.storage, forKey: .storage);
        }
        if (self.loadEncoding != nil) {
            try container.encode(self.loadEncoding, forKey: .loadEncoding);
        }
        if (self.password != nil) {
            try container.encode(self.password, forKey: .password);
        }
        if (self.destFileName != nil) {
            try container.encode(self.destFileName, forKey: .destFileName);
        }
        if (self.revisionAuthor != nil) {
            try container.encode(self.revisionAuthor, forKey: .revisionAuthor);
        }
        if (self.revisionDateTime != nil) {
            try container.encode(self.revisionDateTime, forKey: .revisionDateTime);
        }
        if (self.rotationAngle != nil) {
            try container.encode(self.rotationAngle, forKey: .rotationAngle);
        }
        if (self.image != nil) {
            try container.encode(self.image, forKey: .image);
        }
    }
    
    public func getName() -> String {
        return self.name;
    }
    
    public func getImageFile() -> URL? {
        return self.imageFile;
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
    
    public func getRotationAngle() -> Double? {
        return self.rotationAngle;
    }
    
    public func getImage() -> String? {
        return self.image;
    }
}
