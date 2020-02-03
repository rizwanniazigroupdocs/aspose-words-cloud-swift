/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="FormField.swift">
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

public class FormField : NodeLink {
        
    // Gets or sets true if references to the specified form field are automatically updated whenever the field is exited.
    private let calculateOnExit : Bool?;
    // Gets or sets true if a form field is enabled.
    private let enabled : Bool?;
    // Gets or sets returns or sets an entry macro name for the form field.
    private let entryMacro : String?;
    // Gets or sets returns or sets an exit macro name for the form field.
    private let exitMacro : String?;
    // Gets or sets returns or sets the text that&#39;s displayed in a message box when the form field has the focus and the user presses F1.
    private let helpText : String?;
    // Gets or sets the form field name.
    private let name : String?;
    // Gets or sets specifies the source of the text that&#39;s displayed in a message box when a form field has the focus and the user presses F1.
    private let ownHelp : Bool?;
    // Gets or sets specifies the source of the text that&#39;s displayed in the status bar when a form field has the focus.
    private let ownStatus : Bool?;
    // Gets or sets returns or sets the text that&#39;s displayed in the status bar when a form field has the focus.
    private let statusText : String?;
        
    private enum CodingKeys: String, CodingKey { case calculateOnExit, enabled, entryMacro, exitMacro, helpText, name, ownHelp, ownStatus, statusText }
        
    public init(calculateOnExit : Bool? = nil, enabled : Bool? = nil, entryMacro : String? = nil, exitMacro : String? = nil, helpText : String? = nil, name : String? = nil, ownHelp : Bool? = nil, ownStatus : Bool? = nil, statusText : String? = nil) {
        self.calculateOnExit = calculateOnExit;
        self.enabled = enabled;
        self.entryMacro = entryMacro;
        self.exitMacro = exitMacro;
        self.helpText = helpText;
        self.name = name;
        self.ownHelp = ownHelp;
        self.ownStatus = ownStatus;
        self.statusText = statusText;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        try super.init(from: try container.superDecoder());
        self.calculateOnExit = try container.decodeIfPresent(Bool.self, forKey: .calculateOnExit);
        self.enabled = try container.decodeIfPresent(Bool.self, forKey: .enabled);
        self.entryMacro = try container.decodeIfPresent(String.self, forKey: .entryMacro);
        self.exitMacro = try container.decodeIfPresent(String.self, forKey: .exitMacro);
        self.helpText = try container.decodeIfPresent(String.self, forKey: .helpText);
        self.name = try container.decodeIfPresent(String.self, forKey: .name);
        self.ownHelp = try container.decodeIfPresent(Bool.self, forKey: .ownHelp);
        self.ownStatus = try container.decodeIfPresent(Bool.self, forKey: .ownStatus);
        self.statusText = try container.decodeIfPresent(String.self, forKey: .statusText);
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.calculateOnExit != nil) {
            try container.encode(self.calculateOnExit, forKey: .calculateOnExit);
        }
        if (self.enabled != nil) {
            try container.encode(self.enabled, forKey: .enabled);
        }
        if (self.entryMacro != nil) {
            try container.encode(self.entryMacro, forKey: .entryMacro);
        }
        if (self.exitMacro != nil) {
            try container.encode(self.exitMacro, forKey: .exitMacro);
        }
        if (self.helpText != nil) {
            try container.encode(self.helpText, forKey: .helpText);
        }
        if (self.name != nil) {
            try container.encode(self.name, forKey: .name);
        }
        if (self.ownHelp != nil) {
            try container.encode(self.ownHelp, forKey: .ownHelp);
        }
        if (self.ownStatus != nil) {
            try container.encode(self.ownStatus, forKey: .ownStatus);
        }
        if (self.statusText != nil) {
            try container.encode(self.statusText, forKey: .statusText);
        }
        try super.encode(to: container.superEncoder());
    }
        
    public func getCalculateOnExit() -> Bool? {
        return self.calculateOnExit;
    }
    public func getEnabled() -> Bool? {
        return self.enabled;
    }
    public func getEntryMacro() -> String? {
        return self.entryMacro;
    }
    public func getExitMacro() -> String? {
        return self.exitMacro;
    }
    public func getHelpText() -> String? {
        return self.helpText;
    }
    public func getName() -> String? {
        return self.name;
    }
    public func getOwnHelp() -> Bool? {
        return self.ownHelp;
    }
    public func getOwnStatus() -> Bool? {
        return self.ownStatus;
    }
    public func getStatusText() -> String? {
        return self.statusText;
    }
}
