/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="LoadWebDocumentData.swift">
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

// Contains data for load web document.
public class LoadWebDocumentData : Codable, WordsApiModel {
    // Field of loadingDocumentUrl. Contains data for load web document.
    private var loadingDocumentUrl : String?;

    // Field of saveOptions. Contains data for load web document.
    private var saveOptions : SaveOptionsData?;

    private enum CodingKeys: String, CodingKey {
        case loadingDocumentUrl = "LoadingDocumentUrl";
        case saveOptions = "SaveOptions";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.loadingDocumentUrl = try container.decodeIfPresent(String.self, forKey: .loadingDocumentUrl);
        self.saveOptions = try container.decodeIfPresent(SaveOptionsData.self, forKey: .saveOptions);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.loadingDocumentUrl != nil) {
            try container.encode(self.loadingDocumentUrl, forKey: .loadingDocumentUrl);
        }
        if (self.saveOptions != nil) {
            try container.encode(self.saveOptions, forKey: .saveOptions);
        }
    }

    // Sets loadingDocumentUrl. Gets or sets the web document URL.
    public func setLoadingDocumentUrl(loadingDocumentUrl : String?) {
        self.loadingDocumentUrl = loadingDocumentUrl;
    }

    // Gets loadingDocumentUrl. Gets or sets the web document URL.
    public func getLoadingDocumentUrl() -> String? {
        return self.loadingDocumentUrl;
    }

    // Sets saveOptions. Gets or sets the save options.
    public func setSaveOptions(saveOptions : SaveOptionsData?) {
        self.saveOptions = saveOptions;
    }

    // Gets saveOptions. Gets or sets the save options.
    public func getSaveOptions() -> SaveOptionsData? {
        return self.saveOptions;
    }
}
