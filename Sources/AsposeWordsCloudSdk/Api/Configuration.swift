/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="Configuration.swift">
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

public class Configuration : Codable {
    private var baseUrl : String;
    private var appSid: String;
    private var appKey: String;
    private var debugMode: Bool?;
    
    public init(appSid: String, appKey: String, baseUrl: String = "https://api.aspose.cloud", debugMode: Bool = false) {
        self.appSid = appSid;
        self.appKey = appKey;
        self.baseUrl = baseUrl;
        self.debugMode = debugMode;
    }
    
    public func getBaseUrl() -> String {
        return self.baseUrl;
    }
    
    public func getAppSid() -> String {
        return self.appSid;
    }
    
    public func getAppKey() -> String {
        return self.appKey;
    }
    
    public func isDebugMode() -> Bool {
        return self.debugMode != nil ? self.debugMode! : false;
    }
    
    public func getApiVersion() -> String {
        return "v4.0";
    }
    
    public func getApiRootUrl() -> URL {
        return URL(string: self.getBaseUrl())!.appendingPathComponent(self.getApiVersion());
    }
    
    public func getSdkName() -> String {
        return "swift sdk";
    }
    
    public func getSdkVersion() -> String {
        return "19.10.0";
    }
}
