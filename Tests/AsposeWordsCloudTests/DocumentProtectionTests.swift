/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="DocumentProtectionTests.swift">
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

// Example of how to set document protection.
class DocumentProtectionTests: BaseTestContext {
    static var allTests = [
        ("testProtectDocument", testProtectDocument),
        ("testGetDocumentProtection", testGetDocumentProtection),
        ("testDeleteUnprotectDocument", testDeleteUnprotectDocument)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentElements/DocumentProtection";
    let localFile = "Common/test_multi_pages.docx";

    // Test for setting document protection.
    func testProtectDocument() throws {
      let remoteFileName = "TestProtectDocument.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestProtectionRequest = ProtectionRequest();
      requestProtectionRequest.setPassword(password: "123");
      requestProtectionRequest.setProtectionType(protectionType: "ReadOnly");


      let request = ProtectDocumentRequest(name: remoteFileName, protectionRequest: requestProtectionRequest, folder: remoteDataFolder, destFileName: BaseTestContext.getRemoteTestOut() + "/" + remoteFileName);
      let actual = try super.getApi().protectDocument(request: request);
      XCTAssertNotNil(actual.getProtectionData());
      XCTAssertEqual(actual.getProtectionData()!.getProtectionType(), "ReadOnly");
    }

    // Test for getting document protection.
    func testGetDocumentProtection() throws {
      let localFilePath = "DocumentActions/DocumentProtection/SampleProtectedBlankWordDocument.docx";
      let remoteFileName = "TestGetDocumentProtection.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFilePath, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetDocumentProtectionRequest(name: remoteFileName, folder: remoteDataFolder);
      let actual = try super.getApi().getDocumentProtection(request: request);
      XCTAssertNotNil(actual.getProtectionData());
      XCTAssertEqual(actual.getProtectionData()!.getProtectionType(), "ReadOnly");
    }

    // Test for deleting unprotect document.
    func testDeleteUnprotectDocument() throws {
      let localFilePath = "DocumentActions/DocumentProtection/SampleProtectedBlankWordDocument.docx";
      let remoteFileName = "TestDeleteUnprotectDocument.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFilePath, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestProtectionRequest = ProtectionRequest();
      requestProtectionRequest.setPassword(password: "aspose");


      let request = UnprotectDocumentRequest(name: remoteFileName, protectionRequest: requestProtectionRequest, folder: remoteDataFolder);
      let actual = try super.getApi().unprotectDocument(request: request);
      XCTAssertNotNil(actual.getProtectionData());
      XCTAssertEqual(actual.getProtectionData()!.getProtectionType(), "NoProtection");
    }
}
