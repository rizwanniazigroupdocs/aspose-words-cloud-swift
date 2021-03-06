/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="TableCellFormat.swift">
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

// DTO container with all formatting for a table row.
public class TableCellFormat : LinkElement {
    // Gets or sets the option that controls how the cell is merged horizontally with other cells in the row.
    public enum HorizontalMerge : String, Codable
    {
        // Enum value "_none"
        case _none = "None"

        // Enum value "first"
        case first = "First"

        // Enum value "previous"
        case previous = "Previous"
    }

    // Gets or sets the orientation of text in a table cell.
    public enum Orientation : String, Codable
    {
        // Enum value "horizontal"
        case horizontal = "Horizontal"

        // Enum value "downward"
        case downward = "Downward"

        // Enum value "upward"
        case upward = "Upward"

        // Enum value "horizontalRotatedFarEast"
        case horizontalRotatedFarEast = "HorizontalRotatedFarEast"

        // Enum value "verticalFarEast"
        case verticalFarEast = "VerticalFarEast"

        // Enum value "verticalRotatedFarEast"
        case verticalRotatedFarEast = "VerticalRotatedFarEast"
    }

    // Gets or sets the vertical alignment of text in the cell.
    public enum VerticalAlignment : String, Codable
    {
        // Enum value "top"
        case top = "Top"

        // Enum value "center"
        case center = "Center"

        // Enum value "bottom"
        case bottom = "Bottom"
    }

    // Gets or sets the option that controls how the cell is merged with other cells vertically.
    public enum VerticalMerge : String, Codable
    {
        // Enum value "_none"
        case _none = "None"

        // Enum value "first"
        case first = "First"

        // Enum value "previous"
        case previous = "Previous"
    }

    // Field of bottomPadding. DTO container with all formatting for a table row.
    private var bottomPadding : Double?;

    // Field of fitText. DTO container with all formatting for a table row.
    private var fitText : Bool?;

    // Field of horizontalMerge. DTO container with all formatting for a table row.
    private var horizontalMerge : HorizontalMerge?;

    // Field of leftPadding. DTO container with all formatting for a table row.
    private var leftPadding : Double?;

    // Field of orientation. DTO container with all formatting for a table row.
    private var orientation : Orientation?;

    // Field of preferredWidth. DTO container with all formatting for a table row.
    private var preferredWidth : PreferredWidth?;

    // Field of rightPadding. DTO container with all formatting for a table row.
    private var rightPadding : Double?;

    // Field of topPadding. DTO container with all formatting for a table row.
    private var topPadding : Double?;

    // Field of verticalAlignment. DTO container with all formatting for a table row.
    private var verticalAlignment : VerticalAlignment?;

    // Field of verticalMerge. DTO container with all formatting for a table row.
    private var verticalMerge : VerticalMerge?;

    // Field of width. DTO container with all formatting for a table row.
    private var width : Double?;

    // Field of wrapText. DTO container with all formatting for a table row.
    private var wrapText : Bool?;

    private enum CodingKeys: String, CodingKey {
        case bottomPadding = "BottomPadding";
        case fitText = "FitText";
        case horizontalMerge = "HorizontalMerge";
        case leftPadding = "LeftPadding";
        case orientation = "Orientation";
        case preferredWidth = "PreferredWidth";
        case rightPadding = "RightPadding";
        case topPadding = "TopPadding";
        case verticalAlignment = "VerticalAlignment";
        case verticalMerge = "VerticalMerge";
        case width = "Width";
        case wrapText = "WrapText";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.bottomPadding = try container.decodeIfPresent(Double.self, forKey: .bottomPadding);
        self.fitText = try container.decodeIfPresent(Bool.self, forKey: .fitText);
        self.horizontalMerge = try container.decodeIfPresent(HorizontalMerge.self, forKey: .horizontalMerge);
        self.leftPadding = try container.decodeIfPresent(Double.self, forKey: .leftPadding);
        self.orientation = try container.decodeIfPresent(Orientation.self, forKey: .orientation);
        self.preferredWidth = try container.decodeIfPresent(PreferredWidth.self, forKey: .preferredWidth);
        self.rightPadding = try container.decodeIfPresent(Double.self, forKey: .rightPadding);
        self.topPadding = try container.decodeIfPresent(Double.self, forKey: .topPadding);
        self.verticalAlignment = try container.decodeIfPresent(VerticalAlignment.self, forKey: .verticalAlignment);
        self.verticalMerge = try container.decodeIfPresent(VerticalMerge.self, forKey: .verticalMerge);
        self.width = try container.decodeIfPresent(Double.self, forKey: .width);
        self.wrapText = try container.decodeIfPresent(Bool.self, forKey: .wrapText);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.bottomPadding != nil) {
            try container.encode(self.bottomPadding, forKey: .bottomPadding);
        }
        if (self.fitText != nil) {
            try container.encode(self.fitText, forKey: .fitText);
        }
        if (self.horizontalMerge != nil) {
            try container.encode(self.horizontalMerge, forKey: .horizontalMerge);
        }
        if (self.leftPadding != nil) {
            try container.encode(self.leftPadding, forKey: .leftPadding);
        }
        if (self.orientation != nil) {
            try container.encode(self.orientation, forKey: .orientation);
        }
        if (self.preferredWidth != nil) {
            try container.encode(self.preferredWidth, forKey: .preferredWidth);
        }
        if (self.rightPadding != nil) {
            try container.encode(self.rightPadding, forKey: .rightPadding);
        }
        if (self.topPadding != nil) {
            try container.encode(self.topPadding, forKey: .topPadding);
        }
        if (self.verticalAlignment != nil) {
            try container.encode(self.verticalAlignment, forKey: .verticalAlignment);
        }
        if (self.verticalMerge != nil) {
            try container.encode(self.verticalMerge, forKey: .verticalMerge);
        }
        if (self.width != nil) {
            try container.encode(self.width, forKey: .width);
        }
        if (self.wrapText != nil) {
            try container.encode(self.wrapText, forKey: .wrapText);
        }
    }

    // Sets bottomPadding. Gets or sets the amount of space (in points) to add below the contents of the cell.
    public func setBottomPadding(bottomPadding : Double?) {
        self.bottomPadding = bottomPadding;
    }

    // Gets bottomPadding. Gets or sets the amount of space (in points) to add below the contents of the cell.
    public func getBottomPadding() -> Double? {
        return self.bottomPadding;
    }

    // Sets fitText. Gets or sets a value indicating whether to fit text in the cell, compress each paragraph to the width of the cell.
    public func setFitText(fitText : Bool?) {
        self.fitText = fitText;
    }

    // Gets fitText. Gets or sets a value indicating whether to fit text in the cell, compress each paragraph to the width of the cell.
    public func getFitText() -> Bool? {
        return self.fitText;
    }

    // Sets horizontalMerge. Gets or sets the option that controls how the cell is merged horizontally with other cells in the row.
    public func setHorizontalMerge(horizontalMerge : HorizontalMerge?) {
        self.horizontalMerge = horizontalMerge;
    }

    // Gets horizontalMerge. Gets or sets the option that controls how the cell is merged horizontally with other cells in the row.
    public func getHorizontalMerge() -> HorizontalMerge? {
        return self.horizontalMerge;
    }

    // Sets leftPadding. Gets or sets the amount of space (in points) to add to the left of the contents of the cell.
    public func setLeftPadding(leftPadding : Double?) {
        self.leftPadding = leftPadding;
    }

    // Gets leftPadding. Gets or sets the amount of space (in points) to add to the left of the contents of the cell.
    public func getLeftPadding() -> Double? {
        return self.leftPadding;
    }

    // Sets orientation. Gets or sets the orientation of text in a table cell.
    public func setOrientation(orientation : Orientation?) {
        self.orientation = orientation;
    }

    // Gets orientation. Gets or sets the orientation of text in a table cell.
    public func getOrientation() -> Orientation? {
        return self.orientation;
    }

    // Sets preferredWidth. Gets or sets the preferred width of the cell.
    public func setPreferredWidth(preferredWidth : PreferredWidth?) {
        self.preferredWidth = preferredWidth;
    }

    // Gets preferredWidth. Gets or sets the preferred width of the cell.
    public func getPreferredWidth() -> PreferredWidth? {
        return self.preferredWidth;
    }

    // Sets rightPadding. Gets or sets the amount of space (in points) to add to the right of the contents of the cell.
    public func setRightPadding(rightPadding : Double?) {
        self.rightPadding = rightPadding;
    }

    // Gets rightPadding. Gets or sets the amount of space (in points) to add to the right of the contents of the cell.
    public func getRightPadding() -> Double? {
        return self.rightPadding;
    }

    // Sets topPadding. Gets or sets the amount of space (in points) to add above the contents of the cell.
    public func setTopPadding(topPadding : Double?) {
        self.topPadding = topPadding;
    }

    // Gets topPadding. Gets or sets the amount of space (in points) to add above the contents of the cell.
    public func getTopPadding() -> Double? {
        return self.topPadding;
    }

    // Sets verticalAlignment. Gets or sets the vertical alignment of text in the cell.
    public func setVerticalAlignment(verticalAlignment : VerticalAlignment?) {
        self.verticalAlignment = verticalAlignment;
    }

    // Gets verticalAlignment. Gets or sets the vertical alignment of text in the cell.
    public func getVerticalAlignment() -> VerticalAlignment? {
        return self.verticalAlignment;
    }

    // Sets verticalMerge. Gets or sets the option that controls how the cell is merged with other cells vertically.
    public func setVerticalMerge(verticalMerge : VerticalMerge?) {
        self.verticalMerge = verticalMerge;
    }

    // Gets verticalMerge. Gets or sets the option that controls how the cell is merged with other cells vertically.
    public func getVerticalMerge() -> VerticalMerge? {
        return self.verticalMerge;
    }

    // Sets width. Gets or sets the width of the cell in points.
    public func setWidth(width : Double?) {
        self.width = width;
    }

    // Gets width. Gets or sets the width of the cell in points.
    public func getWidth() -> Double? {
        return self.width;
    }

    // Sets wrapText. Gets or sets a value indicating whether to wrap text in the cell.
    public func setWrapText(wrapText : Bool?) {
        self.wrapText = wrapText;
    }

    // Gets wrapText. Gets or sets a value indicating whether to wrap text in the cell.
    public func getWrapText() -> Bool? {
        return self.wrapText;
    }
}
