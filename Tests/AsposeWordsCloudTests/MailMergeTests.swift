import XCTest
@testable import AsposeWordsCloud

class MailMergeTests: BaseTestContext {
    static var allTests = [
        ("testExecuteMailMergeOnlineOnline", testExecuteMailMergeOnlineOnline),
        ("testExecuteMailMerge", testExecuteMailMerge),
        ("testExecuteTemplate", testExecuteTemplate),
        ("testExecuteTemplateOnline", testExecuteTemplateOnline),
        ("testGetDocumentFieldNames", testGetDocumentFieldNames),
        ("testGetDocumentFieldNamesOnline", testGetDocumentFieldNamesOnline),
    ];

    func getRemoteDataFolder(action : String) -> String {
        return super.getRemoteTestDataFolder() + "MailMerge/" + action;
    }
    
    private let mailMergeFolder = "DocumentActions/MailMerge";
    
    func testExecuteMailMergeOnlineOnline() throws {
        let file = self.getLocalTestDataFolder()
            .appendingPathComponent(mailMergeFolder, isDirectory: true)
            .appendingPathComponent("SampleExecuteTemplate.docx", isDirectory: false);
        
        let data = self.getLocalTestDataFolder()
            .appendingPathComponent(mailMergeFolder, isDirectory: true)
            .appendingPathComponent("SampleExecuteTemplateData.txt", isDirectory: false);
        
        let request = ExecuteMailMergeOnlineRequest(template: InputStream(url: file)!, data: InputStream(url: data)!);
        let result = try super.getApi().executeMailMergeOnline(request: request);
        XCTAssert(result.count > 0, "Error occurred while executing mail merge");
    }
    

    func testExecuteMailMerge() throws {
        let localName = "SampleMailMergeTemplate.docx";
        let remoteName = "TestExecuteMailMerge.docx";
        let fullName = (getRemoteDataFolder(action: "ExecuteMailMerge") + "/" + remoteName);
        let destFileName = (super.getRemoteTestOut() + "/" + remoteName);

        let data = self.getLocalTestDataFolder()
            .appendingPathComponent(mailMergeFolder, isDirectory: true)
            .appendingPathComponent("SampleMailMergeTemplateData.txt", isDirectory: false);
        
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(mailMergeFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = ExecuteMailMergeRequest(name: remoteName, data: try String(contentsOf: data, encoding: .utf8), folder: getRemoteDataFolder(action: "ExecuteMailMerge"), withRegions: false, destFileName: destFileName);
        let actual = try super.getApi().executeMailMerge(request: request);
        XCTAssert(actual.getDocument() != nil);
    }

    func testExecuteTemplate() throws {
        let localName = "TestExecuteTemplate.doc";
        let remoteName = "TestExecuteTemplate.docx";
        let fullName = (getRemoteDataFolder(action: "ExecuteTemplate") + "/" + remoteName);
        let destFileName = (super.getRemoteTestOut() + "/" + remoteName);

        let data = self.getLocalTestDataFolder()
            .appendingPathComponent(mailMergeFolder, isDirectory: true)
            .appendingPathComponent("SampleMailMergeTemplateData.txt", isDirectory: false);
        
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(mailMergeFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = ExecuteMailMergeRequest(name: remoteName, data: try String(contentsOf: data, encoding: .utf8), folder: getRemoteDataFolder(action: "ExecuteTemplate"), destFileName: destFileName);
        let actual = try super.getApi().executeMailMerge(request: request);
        XCTAssert(actual.getDocument() != nil);
    }
    

    func testExecuteTemplateOnline() throws {
        let file = self.getLocalTestDataFolder()
            .appendingPathComponent(mailMergeFolder, isDirectory: true)
            .appendingPathComponent("SampleExecuteTemplate.docx", isDirectory: false);
        
        let data = self.getLocalTestDataFolder()
            .appendingPathComponent(mailMergeFolder, isDirectory: true)
            .appendingPathComponent("SampleExecuteTemplateData.txt", isDirectory: false);
        
        let request = ExecuteMailMergeOnlineRequest(template: InputStream(url: file)!, data: InputStream(url: data)!);
        let result = try super.getApi().executeMailMergeOnline(request: request);
        XCTAssert(result.count > 0, "Error occurred while executing template");
    }

    func testGetDocumentFieldNames() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentFieldNames.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentFieldNames") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetDocumentFieldNamesRequest(name: remoteName, folder: getRemoteDataFolder(action: "GetDocumentFieldNames"));
        let actual = try super.getApi().getDocumentFieldNames(request: request);
        XCTAssert(actual.getFieldNames() != nil);
    }
    

    func testGetDocumentFieldNamesOnline() throws {
        let file = self.getLocalTestDataFolder()
            .appendingPathComponent(mailMergeFolder, isDirectory: true)
            .appendingPathComponent("SampleExecuteTemplate.docx", isDirectory: false);
        
        let request = GetDocumentFieldNamesOnlineRequest(template: InputStream(url: file)!, useNonMergeFields: true);
        let actual = try super.getApi().getDocumentFieldNamesOnline(request: request);
        XCTAssert(actual.getFieldNames()?.getNames()?.count ?? 0 > 0);
    }
}