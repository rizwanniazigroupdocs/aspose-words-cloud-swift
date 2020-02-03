/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="StringFormatData.swift">
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

public class StringFormatData : Codable {
    // Gets or sets horizontal alignment of the string.
    public enum Alignment : Int, Codable
    { 
        // Enum value "near"
        case near
        
        // Enum value "center"
        case center
        
        // Enum value "far"
        case far
        
    }

    // Gets or sets a System.Drawing.StringFormatFlags enumeration that contains formatting information.
    public enum FormatFlags : Int, Codable
    { 
        // Enum value "directionRightToLeft"
        case directionRightToLeft
        
        // Enum value "directionVertical"
        case directionVertical
        
        // Enum value "fitBlackBox"
        case fitBlackBox
        
        // Enum value "displayFormatControl"
        case displayFormatControl
        
        // Enum value "noFontFallback"
        case noFontFallback
        
        // Enum value "measureTrailingSpaces"
        case measureTrailingSpaces
        
        // Enum value "noWrap"
        case noWrap
        
        // Enum value "lineLimit"
        case lineLimit
        
        // Enum value "noClip"
        case noClip
        
    }

    // Gets or sets the System.Drawing.Text.HotkeyPrefix object for this System.Drawing.StringFormat object.
    public enum HotkeyPrefix : Int, Codable
    { 
        // Enum value "_none"
        case _none
        
        // Enum value "show"
        case show
        
        // Enum value "hide"
        case hide
        
    }

    // Gets or sets the vertical alignment of the string.
    public enum LineAlignment : Int, Codable
    { 
        // Enum value "near"
        case near
        
        // Enum value "center"
        case center
        
        // Enum value "far"
        case far
        
    }

    // Gets or sets the System.Drawing.StringTrimming enumeration for this System.Drawing.StringFormat object.
    public enum Trimming : Int, Codable
    { 
        // Enum value "_none"
        case _none
        
        // Enum value "character"
        case character
        
        // Enum value "word"
        case word
        
        // Enum value "ellipsisCharacter"
        case ellipsisCharacter
        
        // Enum value "ellipsisWord"
        case ellipsisWord
        
        // Enum value "ellipsisPath"
        case ellipsisPath
        
    }

        
    // Gets or sets horizontal alignment of the string.
    private var alignment : Alignment?;
    // Gets or sets a System.Drawing.StringFormatFlags enumeration that contains formatting information.
    private var formatFlags : FormatFlags?;
    // Gets or sets the System.Drawing.Text.HotkeyPrefix object for this System.Drawing.StringFormat object.
    private var hotkeyPrefix : HotkeyPrefix?;
    // Gets or sets the vertical alignment of the string.
    private var lineAlignment : LineAlignment?;
    // Gets or sets the System.Drawing.StringTrimming enumeration for this System.Drawing.StringFormat object.
    private var trimming : Trimming?;
        
    private enum CodingKeys: String, CodingKey {
        case alignment;
        case formatFlags;
        case hotkeyPrefix;
        case lineAlignment;
        case trimming;
        case invalidCodingKey;
    }
        
    public init() {
        
    }
    
    public required init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.alignment = try container.decodeIfPresent(Alignment.self, forKey: .alignment);
        self.formatFlags = try container.decodeIfPresent(FormatFlags.self, forKey: .formatFlags);
        self.hotkeyPrefix = try container.decodeIfPresent(HotkeyPrefix.self, forKey: .hotkeyPrefix);
        self.lineAlignment = try container.decodeIfPresent(LineAlignment.self, forKey: .lineAlignment);
        self.trimming = try container.decodeIfPresent(Trimming.self, forKey: .trimming);
    }

    public func encode(to encoder: Encoder) throws {
        
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.alignment != nil) {
            try container.encode(self.alignment, forKey: .alignment);
        }
        if (self.formatFlags != nil) {
            try container.encode(self.formatFlags, forKey: .formatFlags);
        }
        if (self.hotkeyPrefix != nil) {
            try container.encode(self.hotkeyPrefix, forKey: .hotkeyPrefix);
        }
        if (self.lineAlignment != nil) {
            try container.encode(self.lineAlignment, forKey: .lineAlignment);
        }
        if (self.trimming != nil) {
            try container.encode(self.trimming, forKey: .trimming);
        }
    }
        
    public func setAlignment(alignment : Alignment?) {
        self.alignment = alignment;
    }
    
    public func getAlignment() -> Alignment? {
        return self.alignment;
    }
    public func setFormatFlags(formatFlags : FormatFlags?) {
        self.formatFlags = formatFlags;
    }
    
    public func getFormatFlags() -> FormatFlags? {
        return self.formatFlags;
    }
    public func setHotkeyPrefix(hotkeyPrefix : HotkeyPrefix?) {
        self.hotkeyPrefix = hotkeyPrefix;
    }
    
    public func getHotkeyPrefix() -> HotkeyPrefix? {
        return self.hotkeyPrefix;
    }
    public func setLineAlignment(lineAlignment : LineAlignment?) {
        self.lineAlignment = lineAlignment;
    }
    
    public func getLineAlignment() -> LineAlignment? {
        return self.lineAlignment;
    }
    public func setTrimming(trimming : Trimming?) {
        self.trimming = trimming;
    }
    
    public func getTrimming() -> Trimming? {
        return self.trimming;
    }
}
