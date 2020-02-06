import XCTest
@testable import AsposeWordsCloudSdk

class HyperlinkTests: BaseTestContext {
    static var allTests = [
        ("testGetDocumentHyperlinkByIndex", testGetDocumentHyperlinkByIndex),
        ("testGetDocumentHyperlinks", testGetDocumentHyperlinks),
    ];

    func getRemoteDataFolder(action : String) -> String {
        return super.getRemoteTestDataFolder() + "Hyperlink/" + action;
    }

    func testGetDocumentHyperlinkByIndex() throws {
        let localName = "test_doc.docx";
        let remoteName = "TestGetDocumentHyperlinkByIndex.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentHyperlinkByIndex") + "/" + remoteName);
        let hyperlinkIndex = 0;
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetDocumentHyperlinkByIndexRequest(remoteName, hyperlinkIndex, getRemoteDataFolder(action: "GetDocumentHyperlinkByIndex"));
        let actual = super.getApi().getDocumentHyperlinkByIndex(request);
    }
    

    func testGetDocumentHyperlinks() throws {
        let localName = "test_doc.docx";
        let remoteName = "TestGetDocumentHyperlinks.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentHyperlinks") + "/" + remoteName);
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetDocumentHyperlinksRequest(remoteName, getRemoteDataFolder(action: "GetDocumentHyperlinks"));
        let actual = super.getApi().getDocumentHyperlinks(request);
    }
}
