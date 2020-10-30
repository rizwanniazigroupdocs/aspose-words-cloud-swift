/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="RangeTests.swift">
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

import XCTest
@testable import AsposeWordsCloud

// Example of how to work with ranges.
class RangeTests: BaseTestContext {
    static var allTests = [
        ("testGetRangeText", testGetRangeText),
        ("testRemoveRange", testRemoveRange),
        ("testSaveAsRange", testSaveAsRange),
        ("testReplaceWithText", testReplaceWithText)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentElements/Range";
    let localFile = "DocumentElements/Range/RangeGet.doc";

    // Test for getting the text from range.
    func testGetRangeText() throws {
      let remoteFileName = "TestGetRangeText.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetRangeTextRequest(name: remoteFileName, rangeStartIdentifier: "id0.0.0", rangeEndIdentifier: "id0.0.1", folder: remoteDataFolder);
      let actual = try super.getApi().getRangeText(request: request);
      assert( actual.getText().hasPrefix("This is HEADER ") == true);
    }

    // Test for removing the text for range.
    func testRemoveRange() throws {
      let remoteFileName = "TestRemoveRange.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = RemoveRangeRequest(name: remoteFileName, rangeStartIdentifier: "id0.0.0", rangeEndIdentifier: "id0.0.1", folder: remoteDataFolder);
      let actual = try super.getApi().removeRange(request: request);
      assert(actual.getDocument() != nil);
      assert( actual.getDocument()!.getFileName().hasPrefix("TestRemoveRange.docx") == true);
    }

    // Test for saving a range as a new document.
    func testSaveAsRange() throws {
      let remoteFileName = "TestSaveAsRange.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestDocumentParameters = RangeDocument();
      requestDocumentParameters.setDocumentName(documentName: remoteDataFolder + "/NewDoc.docx");


      let request = SaveAsRangeRequest(name: remoteFileName, rangeStartIdentifier: "id0.0.0", documentParameters: requestDocumentParameters, rangeEndIdentifier: "id0.0.1", folder: remoteDataFolder);
      let actual = try super.getApi().saveAsRange(request: request);
      assert(actual.getDocument() != nil);
      assert( actual.getDocument()!.getFileName().hasPrefix("NewDoc.docx") == true);
    }

    // Test for replacing text in range.
    func testReplaceWithText() throws {
      let remoteFileName = "TestReplaceWithText.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestRangeText = ReplaceRange();
      requestRangeText.setText(text: "Replaced header");


      let request = ReplaceWithTextRequest(name: remoteFileName, rangeStartIdentifier: "id0.0.0", rangeText: requestRangeText, rangeEndIdentifier: "id0.0.1", folder: remoteDataFolder);
      let actual = try super.getApi().replaceWithText(request: request);
      assert(actual.getDocument() != nil);
      assert( actual.getDocument()!.getFileName().hasPrefix("TestReplaceWithText.docx") == true);
    }
}
