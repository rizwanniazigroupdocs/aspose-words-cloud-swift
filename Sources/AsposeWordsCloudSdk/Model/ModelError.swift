/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ModelError.swift">
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

public class ModelError : Decodable {
        
    // Code             
    private let code : String?;
    // Message             
    private let message : String?;
    // Description             
    private let _description : String?;
    // Inner Error             
    private let innerError : ErrorDetails?;
        
    private enum CodingKeys: String, CodingKey { case code, message, _description, innerError }
        
    public init(code : String? = nil, message : String? = nil, _description : String? = nil, innerError : ErrorDetails? = nil) {
        self.code = code;
        self.message = message;
        self._description = _description;
        self.innerError = innerError;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        
        if let code = try container.decodeIfPresent(String.self, forKey: .code) {
            self.code = code;
        }
        if let message = try container.decodeIfPresent(String.self, forKey: .message) {
            self.message = message;
        }
        if let _description = try container.decodeIfPresent(String.self, forKey: ._description) {
            self._description = _description;
        }
        if let innerError = try container.decodeIfPresent(ErrorDetails.self, forKey: .innerError) {
            self.innerError = innerError;
        }

    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.code != nil) {
            try container.encode(self.code, forKey: .code);
        }
        if (self.message != nil) {
            try container.encode(self.message, forKey: .message);
        }
        if (self._description != nil) {
            try container.encode(self._description, forKey: ._description);
        }
        if (self.innerError != nil) {
            try container.encode(self.innerError, forKey: .innerError);
        }
        
        
    }
        
    public func getCode() -> String? {
        return self.code;
    }
    public func getMessage() -> String? {
        return self.message;
    }
    public func getDescription() -> String? {
        return self._description;
    }
    public func getInnerError() -> ErrorDetails? {
        return self.innerError;
    }
}
