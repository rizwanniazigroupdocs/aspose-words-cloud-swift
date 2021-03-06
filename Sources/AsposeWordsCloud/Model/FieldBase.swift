/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="FieldBase.swift">
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

// Field.
public class FieldBase : Codable, WordsApiModel {
    // Field of fieldCode. Field.
    private var fieldCode : String?;

    // Field of localeId. Field.
    private var localeId : String?;

    private enum CodingKeys: String, CodingKey {
        case fieldCode = "FieldCode";
        case localeId = "LocaleId";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.fieldCode = try container.decodeIfPresent(String.self, forKey: .fieldCode);
        self.localeId = try container.decodeIfPresent(String.self, forKey: .localeId);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.fieldCode != nil) {
            try container.encode(self.fieldCode, forKey: .fieldCode);
        }
        if (self.localeId != nil) {
            try container.encode(self.localeId, forKey: .localeId);
        }
    }

    // Sets fieldCode. Gets or sets the field code.
    public func setFieldCode(fieldCode : String?) {
        self.fieldCode = fieldCode;
    }

    // Gets fieldCode. Gets or sets the field code.
    public func getFieldCode() -> String? {
        return self.fieldCode;
    }

    // Sets localeId. Gets or sets the LCID of the field.
    public func setLocaleId(localeId : String?) {
        self.localeId = localeId;
    }

    // Gets localeId. Gets or sets the LCID of the field.
    public func getLocaleId() -> String? {
        return self.localeId;
    }
}
