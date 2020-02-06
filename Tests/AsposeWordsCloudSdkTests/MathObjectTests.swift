import XCTest
@testable import AsposeWordsCloudSdk

class MathObjectTests: BaseTestContext {
    static var allTests = [
        ("testGetOfficeMathObjects", testGetOfficeMathObjects),
        ("testGetOfficeMathObjectsWithoutNodePath", testGetOfficeMathObjectsWithoutNodePath),
        ("testGetOfficeMathObject", testGetOfficeMathObject),
        ("testGetOfficeMathObjectWithoutNodePath", testGetOfficeMathObjectWithoutNodePath),
        ("testRenderMathObject", testRenderMathObject),
        ("testRenderMathObjectWithoutNodePath", testRenderMathObjectWithoutNodePath),
        ("testDeleteMathObject", testDeleteMathObject),
        ("testDeleteMathObjectWithoutNodePath", testDeleteMathObjectWithoutNodePath),
    ];

    func getRemoteDataFolder(action : String) -> String {
        return super.getRemoteTestDataFolder() + "MathObject/" + action;
    }

    func testGetOfficeMathObjects() throws {
        let localName = "MathObjects.docx";
        let remoteName = "TestGetOfficeMathObjects.docx";
        let fullName = (getRemoteDataFolder(action: "GetOfficeMathObjects") + "/" + remoteName);
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.mathObjectFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetOfficeMathObjectsRequest(remoteName, null, getRemoteDataFolder(action: "GetOfficeMathObjects"));
        let actual = try super.getApi().getOfficeMathObjects(request: request);
    }
    

    func testGetOfficeMathObjectsWithoutNodePath() throws {
        let localName = "MathObjects.docx";
        let remoteName = "TestGetOfficeMathObjectsWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "GetOfficeMathObjectsWithoutNodePath") + "/" + remoteName);
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.mathObjectFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetOfficeMathObjectsWithoutNodePathRequest(remoteName, getRemoteDataFolder(action: "GetOfficeMathObjectsWithoutNodePath"));
        let actual = try super.getApi().getOfficeMathObjectsWithoutNodePath(request: request);
    }
    

    func testGetOfficeMathObject() throws {
        let localName = "MathObjects.docx";
        let remoteName = "TestGetOfficeMathObject.docx";
        let fullName = (getRemoteDataFolder(action: "GetOfficeMathObject") + "/" + remoteName);
        let index = 0;
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.mathObjectFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetOfficeMathObjectRequest(remoteName, null, index, getRemoteDataFolder(action: "GetOfficeMathObject"));
        let actual = try super.getApi().getOfficeMathObject(request: request);
    }
    

    func testGetOfficeMathObjectWithoutNodePath() throws {
        let localName = "MathObjects.docx";
        let remoteName = "TestGetOfficeMathObjectWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "GetOfficeMathObjectWithoutNodePath") + "/" + remoteName);
        let index = 0;
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.mathObjectFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetOfficeMathObjectWithoutNodePathRequest(remoteName, index, getRemoteDataFolder(action: "GetOfficeMathObjectWithoutNodePath"));
        let actual = try super.getApi().getOfficeMathObjectWithoutNodePath(request: request);
    }
    

    func testRenderMathObject() throws {
        let localName = "MathObjects.docx";
        let remoteName = "TestRenderMathObject.docx";
        let fullName = (getRemoteDataFolder(action: "RenderMathObject") + "/" + remoteName);
        let index = 0;
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.mathObjectFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = RenderMathObjectRequest(remoteName, "png", null, index, getRemoteDataFolder(action: "RenderMathObject"));
        let actual = try super.getApi().renderMathObject(request: request);
        Assert.IsTrue(actual.Length > 0, "Error has occurred while mathObject rendering");
    }
    

    func testRenderMathObjectWithoutNodePath() throws {
        let localName = "MathObjects.docx";
        let remoteName = "TestRenderMathObjectWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "RenderMathObjectWithoutNodePath") + "/" + remoteName);
        let index = 0;
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.mathObjectFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = RenderMathObjectWithoutNodePathRequest(remoteName, "png", index, getRemoteDataFolder(action: "RenderMathObjectWithoutNodePath"));
        let actual = try super.getApi().renderMathObjectWithoutNodePath(request: request);
        Assert.IsTrue(actual.Length > 0, "Error has occurred while mathObject rendering");
    }
    

    func testDeleteMathObject() throws {
        let localName = "MathObjects.docx";
        let remoteName = "TestDeleteMathObject.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteMathObject") + "/" + remoteName);
        let index = 0;
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.mathObjectFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = DeleteOfficeMathObjectRequest(remoteName, null, index, getRemoteDataFolder(action: "DeleteMathObject"));
        try super.getApi().deleteOfficeMathObject(request: request);
    }
    

    func testDeleteMathObjectWithoutNodePath() throws {
        let localName = "MathObjects.docx";
        let remoteName = "TestDeleteMathObjectWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteMathObjectWithoutNodePath") + "/" + remoteName);
        let index = 0;
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.mathObjectFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = DeleteOfficeMathObjectWithoutNodePathRequest(remoteName, index, getRemoteDataFolder(action: "DeleteMathObjectWithoutNodePath"));
        try super.getApi().deleteOfficeMathObjectWithoutNodePath(request: request);
    }
}
