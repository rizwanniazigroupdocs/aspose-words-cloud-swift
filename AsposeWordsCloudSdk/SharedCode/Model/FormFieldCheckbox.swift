/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="FormFieldCheckbox.swift">
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

public class FormFieldCheckbox : FormField {
        
    // Gets or sets the size of the checkbox in points. Has effect only when  is true.
    private let checkBoxSize : Double?;
    // Gets or sets the checked status of the check box form field.
    private let checked : Bool?;
    // Gets or sets the boolean value that indicates whether the size of the textbox is automatic or specified explicitly.
    private let isCheckBoxExactSize : Bool?;
        
    public init(checkBoxSize : Double? = nil, checked : Bool? = nil, isCheckBoxExactSize : Bool? = nil) {
        self.checkBoxSize = checkBoxSize;
        self.checked = checked;
        self.isCheckBoxExactSize = isCheckBoxExactSize;
    }
        
    public func getFormFieldCheckbox() -> Double? {
        return self.checkBoxSize;
    }
    public func getFormFieldCheckbox() -> Bool? {
        return self.checked;
    }
    public func getFormFieldCheckbox() -> Bool? {
        return self.isCheckBoxExactSize;
    }
}
