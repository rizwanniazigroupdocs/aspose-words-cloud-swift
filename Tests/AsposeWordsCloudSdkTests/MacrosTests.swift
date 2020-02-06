import XCTest
@testable import AsposeWordsCloudSdk

class MacrosTests: BaseTestContext {
    static var allTests = [
        ("testDeleteDocumentMacros", testDeleteDocumentMacros),
    ];

    func getRemoteDataFolder(action : String) -> String {
        return super.getRemoteTestDataFolder() + "Macros/" + action;
    }

    func testDeleteDocumentMacros() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestDeleteDocumentMacros.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteDocumentMacros") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = DeleteMacrosRequest(name: remoteName, folder: getRemoteDataFolder(action: "DeleteDocumentMacros"));
        try super.getApi().deleteMacros(request: request);
    }
}
