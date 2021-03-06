/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ListsTests.swift">
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

// Example of how to work with lists.
class ListsTests: BaseTestContext {
    static var allTests = [
        ("testGetLists", testGetLists),
        ("testGetList", testGetList),
        ("testUpdateList", testUpdateList),
        ("testUpdateListLevel", testUpdateListLevel),
        ("testInsertList", testInsertList)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentElements/Lists";
    let localFile = "DocumentElements/Lists/ListsGet.doc";

    // Test for getting lists from document.
    func testGetLists() throws {
      let remoteFileName = "TestGetLists.doc";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetListsRequest(name: remoteFileName, folder: remoteDataFolder);
      let actual = try super.getApi().getLists(request: request);
      XCTAssertNotNil(actual.getLists());
      XCTAssertNotNil(actual.getLists()!.getListInfo());
      XCTAssertEqual(actual.getLists()!.getListInfo()!.count, 2);
      XCTAssertEqual(actual.getLists()!.getListInfo()![0].getListId(), 1);
    }

    // Test for getting list from document.
    func testGetList() throws {
      let remoteFileName = "TestGetList.doc";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetListRequest(name: remoteFileName, listId: 1, folder: remoteDataFolder);
      let actual = try super.getApi().getList(request: request);
      XCTAssertNotNil(actual.getList());
      XCTAssertEqual(actual.getList()!.getListId(), 1);
    }

    // Test for updating list from document.
    func testUpdateList() throws {
      let remoteFileName = "TestUpdateList.doc";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestListUpdate = ListUpdate();
      requestListUpdate.setIsRestartAtEachSection(isRestartAtEachSection: true);


      let request = UpdateListRequest(name: remoteFileName, listUpdate: requestListUpdate, listId: 1, folder: remoteDataFolder);
      let actual = try super.getApi().updateList(request: request);
      XCTAssertNotNil(actual.getList());
      XCTAssertEqual(actual.getList()!.getListId(), 1);
      XCTAssertEqual(actual.getList()!.getIsRestartAtEachSection(), true);
    }

    // Test for updating list level from document.
    func testUpdateListLevel() throws {
      let remoteFileName = "TestUpdateListLevel.doc";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestListUpdate = ListLevelUpdate();
      requestListUpdate.setAlignment(alignment: ListLevelUpdate.Alignment._right);


      let request = UpdateListLevelRequest(name: remoteFileName, listUpdate: requestListUpdate, listId: 1, listLevel: 1, folder: remoteDataFolder);
      let actual = try super.getApi().updateListLevel(request: request);
      XCTAssertNotNil(actual.getList());
      XCTAssertNotNil(actual.getList()!.getListLevels());
      XCTAssertNotNil(actual.getList()!.getListLevels()!.getListLevel());
      XCTAssertEqual(actual.getList()!.getListLevels()!.getListLevel()!.count, 9);

    }

    // Test for inserting list from document.
    func testInsertList() throws {
      let remoteFileName = "TestInsertList.doc";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestListInsert = ListInsert();
      requestListInsert.setTemplate(template: ListInsert.Template.outlineLegal);


      let request = InsertListRequest(name: remoteFileName, listInsert: requestListInsert, folder: remoteDataFolder);
      let actual = try super.getApi().insertList(request: request);
      XCTAssertNotNil(actual.getList());
      XCTAssertEqual(actual.getList()!.getListId(), 3);
    }
}
