/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="OutlineOptionsData.swift">
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

public class OutlineOptionsData : Codable {
        
    // Gets or sets allows to specify individual bookmarks outline level.
    private let bookmarksOutlineLevels : [BookmarksOutlineLevelData]?;
    // Gets or sets specifies the default level in the document outline at which to display Word bookmarks.
    private let defaultBookmarksOutlineLevel : Int?;
    // Gets or sets a value determining whether or not to create missing outline levels     when the document is exported.     Default value for this property is false.
    private let createMissingOutlineLevels : Bool?;
    // Gets or sets specifies whether or not to create outlines for headings (paragraphs formatted     with the Heading styles) inside tables.
    private let createOutlinesForHeadingsInTables : Bool?;
    // Gets or sets specifies how many levels in the document outline to show expanded when the file is viewed.
    private let expandedOutlineLevels : Int?;
    // Gets or sets specifies how many levels of headings (paragraphs formatted with the Heading styles) to include in the document outline.
    private let headingsOutlineLevels : Int?;
        
    private enum CodingKeys: String, CodingKey { case bookmarksOutlineLevels, defaultBookmarksOutlineLevel, createMissingOutlineLevels, createOutlinesForHeadingsInTables, expandedOutlineLevels, headingsOutlineLevels }
        
    public init(bookmarksOutlineLevels : [BookmarksOutlineLevelData]? = nil, defaultBookmarksOutlineLevel : Int? = nil, createMissingOutlineLevels : Bool? = nil, createOutlinesForHeadingsInTables : Bool? = nil, expandedOutlineLevels : Int? = nil, headingsOutlineLevels : Int? = nil) {
        self.bookmarksOutlineLevels = bookmarksOutlineLevels;
        self.defaultBookmarksOutlineLevel = defaultBookmarksOutlineLevel;
        self.createMissingOutlineLevels = createMissingOutlineLevels;
        self.createOutlinesForHeadingsInTables = createOutlinesForHeadingsInTables;
        self.expandedOutlineLevels = expandedOutlineLevels;
        self.headingsOutlineLevels = headingsOutlineLevels;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        
        if let bookmarksOutlineLevels = try container.decodeIfPresent([BookmarksOutlineLevelData].self, forKey: .bookmarksOutlineLevels) {
            self.bookmarksOutlineLevels = bookmarksOutlineLevels;
        }
        if let defaultBookmarksOutlineLevel = try container.decodeIfPresent(Int.self, forKey: .defaultBookmarksOutlineLevel) {
            self.defaultBookmarksOutlineLevel = defaultBookmarksOutlineLevel;
        }
        if let createMissingOutlineLevels = try container.decodeIfPresent(Bool.self, forKey: .createMissingOutlineLevels) {
            self.createMissingOutlineLevels = createMissingOutlineLevels;
        }
        if let createOutlinesForHeadingsInTables = try container.decodeIfPresent(Bool.self, forKey: .createOutlinesForHeadingsInTables) {
            self.createOutlinesForHeadingsInTables = createOutlinesForHeadingsInTables;
        }
        if let expandedOutlineLevels = try container.decodeIfPresent(Int.self, forKey: .expandedOutlineLevels) {
            self.expandedOutlineLevels = expandedOutlineLevels;
        }
        if let headingsOutlineLevels = try container.decodeIfPresent(Int.self, forKey: .headingsOutlineLevels) {
            self.headingsOutlineLevels = headingsOutlineLevels;
        }

    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.bookmarksOutlineLevels != nil) {
            try container.encode(self.bookmarksOutlineLevels, forKey: .bookmarksOutlineLevels);
        }
        if (self.defaultBookmarksOutlineLevel != nil) {
            try container.encode(self.defaultBookmarksOutlineLevel, forKey: .defaultBookmarksOutlineLevel);
        }
        if (self.createMissingOutlineLevels != nil) {
            try container.encode(self.createMissingOutlineLevels, forKey: .createMissingOutlineLevels);
        }
        if (self.createOutlinesForHeadingsInTables != nil) {
            try container.encode(self.createOutlinesForHeadingsInTables, forKey: .createOutlinesForHeadingsInTables);
        }
        if (self.expandedOutlineLevels != nil) {
            try container.encode(self.expandedOutlineLevels, forKey: .expandedOutlineLevels);
        }
        if (self.headingsOutlineLevels != nil) {
            try container.encode(self.headingsOutlineLevels, forKey: .headingsOutlineLevels);
        }
        
        
    }
        
    public func getBookmarksOutlineLevels() -> [BookmarksOutlineLevelData]? {
        return self.bookmarksOutlineLevels;
    }
    public func getDefaultBookmarksOutlineLevel() -> Int? {
        return self.defaultBookmarksOutlineLevel;
    }
    public func getCreateMissingOutlineLevels() -> Bool? {
        return self.createMissingOutlineLevels;
    }
    public func getCreateOutlinesForHeadingsInTables() -> Bool? {
        return self.createOutlinesForHeadingsInTables;
    }
    public func getExpandedOutlineLevels() -> Int? {
        return self.expandedOutlineLevels;
    }
    public func getHeadingsOutlineLevels() -> Int? {
        return self.headingsOutlineLevels;
    }
}
