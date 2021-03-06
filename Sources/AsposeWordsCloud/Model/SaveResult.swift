/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="SaveResult.swift">
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

// Result of saving.
public class SaveResult : Codable, WordsApiModel {
    // Field of additionalItems. Result of saving.
    private var additionalItems : [FileLink]?;

    // Field of destDocument. Result of saving.
    private var destDocument : FileLink?;

    // Field of sourceDocument. Result of saving.
    private var sourceDocument : FileLink?;

    private enum CodingKeys: String, CodingKey {
        case additionalItems = "AdditionalItems";
        case destDocument = "DestDocument";
        case sourceDocument = "SourceDocument";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.additionalItems = try container.decodeIfPresent([FileLink].self, forKey: .additionalItems);
        self.destDocument = try container.decodeIfPresent(FileLink.self, forKey: .destDocument);
        self.sourceDocument = try container.decodeIfPresent(FileLink.self, forKey: .sourceDocument);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.additionalItems != nil) {
            try container.encode(self.additionalItems, forKey: .additionalItems);
        }
        if (self.destDocument != nil) {
            try container.encode(self.destDocument, forKey: .destDocument);
        }
        if (self.sourceDocument != nil) {
            try container.encode(self.sourceDocument, forKey: .sourceDocument);
        }
    }

    // Sets additionalItems. Gets or sets the list of links to additional items (css, images etc).
    public func setAdditionalItems(additionalItems : [FileLink]?) {
        self.additionalItems = additionalItems;
    }

    // Gets additionalItems. Gets or sets the list of links to additional items (css, images etc).
    public func getAdditionalItems() -> [FileLink]? {
        return self.additionalItems;
    }

    // Sets destDocument. Gets or sets the link to destination document.
    public func setDestDocument(destDocument : FileLink?) {
        self.destDocument = destDocument;
    }

    // Gets destDocument. Gets or sets the link to destination document.
    public func getDestDocument() -> FileLink? {
        return self.destDocument;
    }

    // Sets sourceDocument. Gets or sets the link to source document.
    public func setSourceDocument(sourceDocument : FileLink?) {
        self.sourceDocument = sourceDocument;
    }

    // Gets sourceDocument. Gets or sets the link to source document.
    public func getSourceDocument() -> FileLink? {
        return self.sourceDocument;
    }
}
