/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="DocSaveOptionsData.swift">
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

// Container class for doc/dot save options.
public class DocSaveOptionsData : SaveOptionsData {
    // Field of alwaysCompressMetafiles. Container class for doc/dot save options.
    private var alwaysCompressMetafiles : Bool?;

    // Field of password. Container class for doc/dot save options.
    private var password : String?;

    // Field of savePictureBullet. Container class for doc/dot save options.
    private var savePictureBullet : Bool?;

    // Field of saveRoutingSlip. Container class for doc/dot save options.
    private var saveRoutingSlip : Bool?;

    private enum CodingKeys: String, CodingKey {
        case alwaysCompressMetafiles = "AlwaysCompressMetafiles";
        case password = "Password";
        case savePictureBullet = "SavePictureBullet";
        case saveRoutingSlip = "SaveRoutingSlip";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.alwaysCompressMetafiles = try container.decodeIfPresent(Bool.self, forKey: .alwaysCompressMetafiles);
        self.password = try container.decodeIfPresent(String.self, forKey: .password);
        self.savePictureBullet = try container.decodeIfPresent(Bool.self, forKey: .savePictureBullet);
        self.saveRoutingSlip = try container.decodeIfPresent(Bool.self, forKey: .saveRoutingSlip);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.alwaysCompressMetafiles != nil) {
            try container.encode(self.alwaysCompressMetafiles, forKey: .alwaysCompressMetafiles);
        }
        if (self.password != nil) {
            try container.encode(self.password, forKey: .password);
        }
        if (self.savePictureBullet != nil) {
            try container.encode(self.savePictureBullet, forKey: .savePictureBullet);
        }
        if (self.saveRoutingSlip != nil) {
            try container.encode(self.saveRoutingSlip, forKey: .saveRoutingSlip);
        }
    }

    // Sets alwaysCompressMetafiles. Gets or sets a value indicating when False, that small metafiles are not compressed for performance reason. The default value is true, all metafiles are compressed regardless of its size.
    public func setAlwaysCompressMetafiles(alwaysCompressMetafiles : Bool?) {
        self.alwaysCompressMetafiles = alwaysCompressMetafiles;
    }

    // Gets alwaysCompressMetafiles. Gets or sets a value indicating when False, that small metafiles are not compressed for performance reason. The default value is true, all metafiles are compressed regardless of its size.
    public func getAlwaysCompressMetafiles() -> Bool? {
        return self.alwaysCompressMetafiles;
    }

    // Sets password. Gets or sets the password.
    public func setPassword(password : String?) {
        self.password = password;
    }

    // Gets password. Gets or sets the password.
    public func getPassword() -> String? {
        return self.password;
    }

    // Sets savePictureBullet. Gets or sets a value indicating when False, that PictureBullet data is not saved to the output document. The default value is true.
    public func setSavePictureBullet(savePictureBullet : Bool?) {
        self.savePictureBullet = savePictureBullet;
    }

    // Gets savePictureBullet. Gets or sets a value indicating when False, that PictureBullet data is not saved to the output document. The default value is true.
    public func getSavePictureBullet() -> Bool? {
        return self.savePictureBullet;
    }

    // Sets saveRoutingSlip. Gets or sets a value indicating whether to save RoutingSlip data to output document.
    public func setSaveRoutingSlip(saveRoutingSlip : Bool?) {
        self.saveRoutingSlip = saveRoutingSlip;
    }

    // Gets saveRoutingSlip. Gets or sets a value indicating whether to save RoutingSlip data to output document.
    public func getSaveRoutingSlip() -> Bool? {
        return self.saveRoutingSlip;
    }
}
