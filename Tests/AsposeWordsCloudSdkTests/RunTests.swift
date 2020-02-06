import XCTest
@testable import AsposeWordsCloudSdk

class RunTests: BaseTestContext {
    static var allTests = [
        ("testUpdateRun", testUpdateRun),
        ("testInsertRun", testInsertRun),
        ("testDeleteRun", testDeleteRun),
    ];

    func getRemoteDataFolder(action : String) -> String {
        return super.getRemoteTestDataFolder() + "Run/" + action;
    }

    func testUpdateRun() throws {
        let localName = "Run.doc";
        let remoteName = "TestUpdateRun.docx";
        let fullName = (getRemoteDataFolder(action: "UpdateRun") + "/" + remoteName);
        let run = Run { Text = "run with text" };
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.runFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = UpdateRunRequest(remoteName, run, "paragraphs/1", 0, getRemoteDataFolder(action: "UpdateRun"));
        let actual = try super.getApi().updateRun(request: request);
    }
    

    func testInsertRun() throws {
        let localName = "Run.doc";
        let remoteName = "TestInsertRun.docx";
        let fullName = (getRemoteDataFolder(action: "InsertRun") + "/" + remoteName);
        let run = Run { Text = "run with text" };
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.runFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = InsertRunRequest(remoteName, "paragraphs/1", run, getRemoteDataFolder(action: "InsertRun"));
        let actual = try super.getApi().insertRun(request: request);
    }
    

    func testDeleteRun() throws {
        let localName = "Run.doc";
        let remoteName = "TestDeleteRun.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteRun") + "/" + remoteName);
        let index = 0;
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.runFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = DeleteRunRequest(remoteName, "paragraphs/1", index, getRemoteDataFolder(action: "DeleteRun"));
        try super.getApi().deleteRun(request: request);
    }
}
