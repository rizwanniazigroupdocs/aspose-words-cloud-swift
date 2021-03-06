/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="CommentBase.swift">
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

// Comment.
public class CommentBase : Codable, WordsApiModel {
    // Field of author. Comment.
    private var author : String?;

    // Field of dateTime. Comment.
    private var dateTime : Date?;

    // Field of initial. Comment.
    private var initial : String?;

    // Field of rangeEnd. Comment.
    private var rangeEnd : DocumentPosition?;

    // Field of rangeStart. Comment.
    private var rangeStart : DocumentPosition?;

    // Field of text. Comment.
    private var text : String?;

    private enum CodingKeys: String, CodingKey {
        case author = "Author";
        case dateTime = "DateTime";
        case initial = "Initial";
        case rangeEnd = "RangeEnd";
        case rangeStart = "RangeStart";
        case text = "Text";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.author = try container.decodeIfPresent(String.self, forKey: .author);
        var raw_dateTime = try container.decodeIfPresent(String.self, forKey: .dateTime);
        if (raw_dateTime != nil) {
            raw_dateTime = raw_dateTime!.replacingOccurrences(of: "\\.\\d+", with: "", options: .regularExpression);
            self.dateTime = ObjectSerializer.customIso8601.date(from: raw_dateTime!)!;
        }

        self.initial = try container.decodeIfPresent(String.self, forKey: .initial);
        self.rangeEnd = try container.decodeIfPresent(DocumentPosition.self, forKey: .rangeEnd);
        self.rangeStart = try container.decodeIfPresent(DocumentPosition.self, forKey: .rangeStart);
        self.text = try container.decodeIfPresent(String.self, forKey: .text);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.author != nil) {
            try container.encode(self.author, forKey: .author);
        }
        if (self.dateTime != nil) {
            try container.encode(self.dateTime, forKey: .dateTime);
        }
        if (self.initial != nil) {
            try container.encode(self.initial, forKey: .initial);
        }
        if (self.rangeEnd != nil) {
            try container.encode(self.rangeEnd, forKey: .rangeEnd);
        }
        if (self.rangeStart != nil) {
            try container.encode(self.rangeStart, forKey: .rangeStart);
        }
        if (self.text != nil) {
            try container.encode(self.text, forKey: .text);
        }
    }

    // Sets author. Gets or sets the author name for a comment.
    public func setAuthor(author : String?) {
        self.author = author;
    }

    // Gets author. Gets or sets the author name for a comment.
    public func getAuthor() -> String? {
        return self.author;
    }

    // Sets dateTime. Gets or sets the date and time that the comment was made.
    public func setDateTime(dateTime : Date?) {
        self.dateTime = dateTime;
    }

    // Gets dateTime. Gets or sets the date and time that the comment was made.
    public func getDateTime() -> Date? {
        return self.dateTime;
    }

    // Sets initial. Gets or sets the initials of the user associated with a specific comment.
    public func setInitial(initial : String?) {
        self.initial = initial;
    }

    // Gets initial. Gets or sets the initials of the user associated with a specific comment.
    public func getInitial() -> String? {
        return self.initial;
    }

    // Sets rangeEnd. Gets or sets the link to comment range end node.
    public func setRangeEnd(rangeEnd : DocumentPosition?) {
        self.rangeEnd = rangeEnd;
    }

    // Gets rangeEnd. Gets or sets the link to comment range end node.
    public func getRangeEnd() -> DocumentPosition? {
        return self.rangeEnd;
    }

    // Sets rangeStart. Gets or sets the link to comment range start node.
    public func setRangeStart(rangeStart : DocumentPosition?) {
        self.rangeStart = rangeStart;
    }

    // Gets rangeStart. Gets or sets the link to comment range start node.
    public func getRangeStart() -> DocumentPosition? {
        return self.rangeStart;
    }

    // Sets text. Gets or sets text of the comment.
    public func setText(text : String?) {
        self.text = text;
    }

    // Gets text. Gets or sets text of the comment.
    public func getText() -> String? {
        return self.text;
    }
}
