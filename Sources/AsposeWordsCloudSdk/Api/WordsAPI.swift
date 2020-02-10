/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="WordsAPI.swift">
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

public class WordsAPI {
    private let configuration : Configuration;
    private let apiInvoker : ApiInvoker;
    
    public init(configuration : Configuration) {
        self.configuration = configuration;
        self.apiInvoker = ApiInvoker(configuration: configuration);
    }
    
    public func acceptAllRevisions(request : AcceptAllRevisionsRequest, callback : @escaping (_ response : RevisionsModificationResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/revisions/acceptAll";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : RevisionsModificationResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: RevisionsModificationResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func acceptAllRevisions(request : AcceptAllRevisionsRequest) throws -> RevisionsModificationResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : RevisionsModificationResponse? = nil;
        var responseError : Error? = nil;
        self.acceptAllRevisions(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func appendDocument(request : AppendDocumentRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/appendDocument";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getDocumentList()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : DocumentResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func appendDocument(request : AppendDocumentRequest) throws -> DocumentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentResponse? = nil;
        var responseError : Error? = nil;
        self.appendDocument(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func classify(request : ClassifyRequest, callback : @escaping (_ response : ClassificationResponse?, _ error : Error?) -> ()) {
        do {
            let rawPath = "/words/classify";
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getBestClassesCount() != nil) {
                queryItems.append(URLQueryItem(name: "bestClassesCount", value: try ObjectSerializer.serializeToString(value: request.getBestClassesCount()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getText()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : ClassificationResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: ClassificationResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func classify(request : ClassifyRequest) throws -> ClassificationResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ClassificationResponse? = nil;
        var responseError : Error? = nil;
        self.classify(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func classifyDocument(request : ClassifyDocumentRequest, callback : @escaping (_ response : ClassificationResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{documentName}/classify";
            rawPath = rawPath.replacingOccurrences(of: "{documentName}", with: try ObjectSerializer.serializeToString(value: request.getDocumentName()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getBestClassesCount() != nil) {
                queryItems.append(URLQueryItem(name: "bestClassesCount", value: try ObjectSerializer.serializeToString(value: request.getBestClassesCount()!)));
            }
            if (request.getTaxonomy() != nil) {
                queryItems.append(URLQueryItem(name: "taxonomy", value: try ObjectSerializer.serializeToString(value: request.getTaxonomy()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : ClassificationResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: ClassificationResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func classifyDocument(request : ClassifyDocumentRequest) throws -> ClassificationResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ClassificationResponse? = nil;
        var responseError : Error? = nil;
        self.classifyDocument(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func compareDocument(request : CompareDocumentRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/compareDocument";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getCompareData()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : DocumentResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func compareDocument(request : CompareDocumentRequest) throws -> DocumentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentResponse? = nil;
        var responseError : Error? = nil;
        self.compareDocument(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func convertDocument(request : ConvertDocumentRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            let rawPath = "/words/convert";
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            queryItems.append(URLQueryItem(name: "format", value: try ObjectSerializer.serializeToString(value: request.getFormat())));
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getOutPath() != nil) {
                queryItems.append(URLQueryItem(name: "outPath", value: try ObjectSerializer.serializeToString(value: request.getOutPath()!)));
            }
            if (request.getFileNameFieldValue() != nil) {
                queryItems.append(URLQueryItem(name: "fileNameFieldValue", value: try ObjectSerializer.serializeToString(value: request.getFileNameFieldValue()!)));
            }
            if (request.getFontsLocation() != nil) {
                queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serializeToString(value: request.getFontsLocation()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            var formParams : [RequestFormParam] = [];
            formParams.append(RequestFormParam(name: "document", body: try ObjectSerializer.serialize(value: request.getDocument())));
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: nil,
                headers: nil,
                formParams: formParams,
                callback: { response, error in
                    callback(response, error);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func convertDocument(request : ConvertDocumentRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.convertDocument(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func copyFile(request : CopyFileRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/storage/file/copy/{srcPath}";
            rawPath = rawPath.replacingOccurrences(of: "{srcPath}", with: try ObjectSerializer.serializeToString(value: request.getSrcPath()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            queryItems.append(URLQueryItem(name: "destPath", value: try ObjectSerializer.serializeToString(value: request.getDestPath())));
            if (request.getSrcStorageName() != nil) {
                queryItems.append(URLQueryItem(name: "srcStorageName", value: try ObjectSerializer.serializeToString(value: request.getSrcStorageName()!)));
            }
            if (request.getDestStorageName() != nil) {
                queryItems.append(URLQueryItem(name: "destStorageName", value: try ObjectSerializer.serializeToString(value: request.getDestStorageName()!)));
            }
            if (request.getVersionId() != nil) {
                queryItems.append(URLQueryItem(name: "versionId", value: try ObjectSerializer.serializeToString(value: request.getVersionId()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }   
    
    public func copyFile(request : CopyFileRequest) throws  {
        let semaphore = DispatchSemaphore(value: 0);
        
        var responseError : Error? = nil;
        self.copyFile(request : request, callback: { error in
            
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        
    }
    
    public func copyFolder(request : CopyFolderRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/storage/folder/copy/{srcPath}";
            rawPath = rawPath.replacingOccurrences(of: "{srcPath}", with: try ObjectSerializer.serializeToString(value: request.getSrcPath()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            queryItems.append(URLQueryItem(name: "destPath", value: try ObjectSerializer.serializeToString(value: request.getDestPath())));
            if (request.getSrcStorageName() != nil) {
                queryItems.append(URLQueryItem(name: "srcStorageName", value: try ObjectSerializer.serializeToString(value: request.getSrcStorageName()!)));
            }
            if (request.getDestStorageName() != nil) {
                queryItems.append(URLQueryItem(name: "destStorageName", value: try ObjectSerializer.serializeToString(value: request.getDestStorageName()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }   
    
    public func copyFolder(request : CopyFolderRequest) throws  {
        let semaphore = DispatchSemaphore(value: 0);
        
        var responseError : Error? = nil;
        self.copyFolder(request : request, callback: { error in
            
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        
    }
    
    public func createDocument(request : CreateDocumentRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            let rawPath = "/words/create";
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getFileName() != nil) {
                queryItems.append(URLQueryItem(name: "fileName", value: try ObjectSerializer.serializeToString(value: request.getFileName()!)));
            }
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : DocumentResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func createDocument(request : CreateDocumentRequest) throws -> DocumentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentResponse? = nil;
        var responseError : Error? = nil;
        self.createDocument(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func createFolder(request : CreateFolderRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/storage/folder/{path}";
            rawPath = rawPath.replacingOccurrences(of: "{path}", with: try ObjectSerializer.serializeToString(value: request.getPath()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getStorageName() != nil) {
                queryItems.append(URLQueryItem(name: "storageName", value: try ObjectSerializer.serializeToString(value: request.getStorageName()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }   
    
    public func createFolder(request : CreateFolderRequest) throws  {
        let semaphore = DispatchSemaphore(value: 0);
        
        var responseError : Error? = nil;
        self.createFolder(request : request, callback: { error in
            
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        
    }
    
    public func createOrUpdateDocumentProperty(request : CreateOrUpdateDocumentPropertyRequest, callback : @escaping (_ response : DocumentPropertyResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/documentProperties/{propertyName}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{propertyName}", with: try ObjectSerializer.serializeToString(value: request.getPropertyName()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getProperty()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : DocumentPropertyResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: DocumentPropertyResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func createOrUpdateDocumentProperty(request : CreateOrUpdateDocumentPropertyRequest) throws -> DocumentPropertyResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentPropertyResponse? = nil;
        var responseError : Error? = nil;
        self.createOrUpdateDocumentProperty(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func deleteBorder(request : DeleteBorderRequest, callback : @escaping (_ response : BorderResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/borders/{borderType}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));
            rawPath = rawPath.replacingOccurrences(of: "{borderType}", with: try ObjectSerializer.serializeToString(value: request.getBorderType()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : BorderResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: BorderResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func deleteBorder(request : DeleteBorderRequest) throws -> BorderResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : BorderResponse? = nil;
        var responseError : Error? = nil;
        self.deleteBorder(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func deleteBorders(request : DeleteBordersRequest, callback : @escaping (_ response : BordersResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/borders";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : BordersResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: BordersResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func deleteBorders(request : DeleteBordersRequest) throws -> BordersResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : BordersResponse? = nil;
        var responseError : Error? = nil;
        self.deleteBorders(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func deleteComment(request : DeleteCommentRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/comments/{commentIndex}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{commentIndex}", with: try ObjectSerializer.serializeToString(value: request.getCommentIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }   
    
    public func deleteComment(request : DeleteCommentRequest) throws  {
        let semaphore = DispatchSemaphore(value: 0);
        
        var responseError : Error? = nil;
        self.deleteComment(request : request, callback: { error in
            
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        
    }
    
    public func deleteDocumentProperty(request : DeleteDocumentPropertyRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/documentProperties/{propertyName}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{propertyName}", with: try ObjectSerializer.serializeToString(value: request.getPropertyName()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }   
    
    public func deleteDocumentProperty(request : DeleteDocumentPropertyRequest) throws  {
        let semaphore = DispatchSemaphore(value: 0);
        
        var responseError : Error? = nil;
        self.deleteDocumentProperty(request : request, callback: { error in
            
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        
    }
    
    public func deleteDrawingObject(request : DeleteDrawingObjectRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/drawingObjects/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }   
    
    public func deleteDrawingObject(request : DeleteDrawingObjectRequest) throws  {
        let semaphore = DispatchSemaphore(value: 0);
        
        var responseError : Error? = nil;
        self.deleteDrawingObject(request : request, callback: { error in
            
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        
    }
    
    public func deleteDrawingObjectWithoutNodePath(request : DeleteDrawingObjectWithoutNodePathRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/drawingObjects/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }   
    
    public func deleteDrawingObjectWithoutNodePath(request : DeleteDrawingObjectWithoutNodePathRequest) throws  {
        let semaphore = DispatchSemaphore(value: 0);
        
        var responseError : Error? = nil;
        self.deleteDrawingObjectWithoutNodePath(request : request, callback: { error in
            
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        
    }
    
    public func deleteField(request : DeleteFieldRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/fields/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }   
    
    public func deleteField(request : DeleteFieldRequest) throws  {
        let semaphore = DispatchSemaphore(value: 0);
        
        var responseError : Error? = nil;
        self.deleteField(request : request, callback: { error in
            
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        
    }
    
    public func deleteFieldWithoutNodePath(request : DeleteFieldWithoutNodePathRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/fields/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }   
    
    public func deleteFieldWithoutNodePath(request : DeleteFieldWithoutNodePathRequest) throws  {
        let semaphore = DispatchSemaphore(value: 0);
        
        var responseError : Error? = nil;
        self.deleteFieldWithoutNodePath(request : request, callback: { error in
            
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        
    }
    
    public func deleteFields(request : DeleteFieldsRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/fields";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }   
    
    public func deleteFields(request : DeleteFieldsRequest) throws  {
        let semaphore = DispatchSemaphore(value: 0);
        
        var responseError : Error? = nil;
        self.deleteFields(request : request, callback: { error in
            
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        
    }
    
    public func deleteFieldsWithoutNodePath(request : DeleteFieldsWithoutNodePathRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/fields";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }   
    
    public func deleteFieldsWithoutNodePath(request : DeleteFieldsWithoutNodePathRequest) throws  {
        let semaphore = DispatchSemaphore(value: 0);
        
        var responseError : Error? = nil;
        self.deleteFieldsWithoutNodePath(request : request, callback: { error in
            
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        
    }
    
    public func deleteFile(request : DeleteFileRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/storage/file/{path}";
            rawPath = rawPath.replacingOccurrences(of: "{path}", with: try ObjectSerializer.serializeToString(value: request.getPath()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getStorageName() != nil) {
                queryItems.append(URLQueryItem(name: "storageName", value: try ObjectSerializer.serializeToString(value: request.getStorageName()!)));
            }
            if (request.getVersionId() != nil) {
                queryItems.append(URLQueryItem(name: "versionId", value: try ObjectSerializer.serializeToString(value: request.getVersionId()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }   
    
    public func deleteFile(request : DeleteFileRequest) throws  {
        let semaphore = DispatchSemaphore(value: 0);
        
        var responseError : Error? = nil;
        self.deleteFile(request : request, callback: { error in
            
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        
    }
    
    public func deleteFolder(request : DeleteFolderRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/storage/folder/{path}";
            rawPath = rawPath.replacingOccurrences(of: "{path}", with: try ObjectSerializer.serializeToString(value: request.getPath()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getStorageName() != nil) {
                queryItems.append(URLQueryItem(name: "storageName", value: try ObjectSerializer.serializeToString(value: request.getStorageName()!)));
            }
            if (request.getRecursive() != nil) {
                queryItems.append(URLQueryItem(name: "recursive", value: try ObjectSerializer.serializeToString(value: request.getRecursive()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }   
    
    public func deleteFolder(request : DeleteFolderRequest) throws  {
        let semaphore = DispatchSemaphore(value: 0);
        
        var responseError : Error? = nil;
        self.deleteFolder(request : request, callback: { error in
            
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        
    }
    
    public func deleteFootnote(request : DeleteFootnoteRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/footnotes/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }   
    
    public func deleteFootnote(request : DeleteFootnoteRequest) throws  {
        let semaphore = DispatchSemaphore(value: 0);
        
        var responseError : Error? = nil;
        self.deleteFootnote(request : request, callback: { error in
            
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        
    }
    
    public func deleteFootnoteWithoutNodePath(request : DeleteFootnoteWithoutNodePathRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/footnotes/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }   
    
    public func deleteFootnoteWithoutNodePath(request : DeleteFootnoteWithoutNodePathRequest) throws  {
        let semaphore = DispatchSemaphore(value: 0);
        
        var responseError : Error? = nil;
        self.deleteFootnoteWithoutNodePath(request : request, callback: { error in
            
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        
    }
    
    public func deleteFormField(request : DeleteFormFieldRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/formfields/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }   
    
    public func deleteFormField(request : DeleteFormFieldRequest) throws  {
        let semaphore = DispatchSemaphore(value: 0);
        
        var responseError : Error? = nil;
        self.deleteFormField(request : request, callback: { error in
            
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        
    }
    
    public func deleteFormFieldWithoutNodePath(request : DeleteFormFieldWithoutNodePathRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/formfields/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }   
    
    public func deleteFormFieldWithoutNodePath(request : DeleteFormFieldWithoutNodePathRequest) throws  {
        let semaphore = DispatchSemaphore(value: 0);
        
        var responseError : Error? = nil;
        self.deleteFormFieldWithoutNodePath(request : request, callback: { error in
            
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        
    }
    
    public func deleteHeaderFooter(request : DeleteHeaderFooterRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{sectionPath}/headersfooters/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{sectionPath}", with: try ObjectSerializer.serializeToString(value: request.getSectionPath()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }   
    
    public func deleteHeaderFooter(request : DeleteHeaderFooterRequest) throws  {
        let semaphore = DispatchSemaphore(value: 0);
        
        var responseError : Error? = nil;
        self.deleteHeaderFooter(request : request, callback: { error in
            
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        
    }
    
    public func deleteHeadersFooters(request : DeleteHeadersFootersRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{sectionPath}/headersfooters";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{sectionPath}", with: try ObjectSerializer.serializeToString(value: request.getSectionPath()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (request.getHeadersFootersTypes() != nil) {
                queryItems.append(URLQueryItem(name: "headersFootersTypes", value: try ObjectSerializer.serializeToString(value: request.getHeadersFootersTypes()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }   
    
    public func deleteHeadersFooters(request : DeleteHeadersFootersRequest) throws  {
        let semaphore = DispatchSemaphore(value: 0);
        
        var responseError : Error? = nil;
        self.deleteHeadersFooters(request : request, callback: { error in
            
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        
    }
    
    public func deleteMacros(request : DeleteMacrosRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/macros";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }   
    
    public func deleteMacros(request : DeleteMacrosRequest) throws  {
        let semaphore = DispatchSemaphore(value: 0);
        
        var responseError : Error? = nil;
        self.deleteMacros(request : request, callback: { error in
            
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        
    }
    
    public func deleteOfficeMathObject(request : DeleteOfficeMathObjectRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/OfficeMathObjects/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }   
    
    public func deleteOfficeMathObject(request : DeleteOfficeMathObjectRequest) throws  {
        let semaphore = DispatchSemaphore(value: 0);
        
        var responseError : Error? = nil;
        self.deleteOfficeMathObject(request : request, callback: { error in
            
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        
    }
    
    public func deleteOfficeMathObjectWithoutNodePath(request : DeleteOfficeMathObjectWithoutNodePathRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/OfficeMathObjects/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }   
    
    public func deleteOfficeMathObjectWithoutNodePath(request : DeleteOfficeMathObjectWithoutNodePathRequest) throws  {
        let semaphore = DispatchSemaphore(value: 0);
        
        var responseError : Error? = nil;
        self.deleteOfficeMathObjectWithoutNodePath(request : request, callback: { error in
            
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        
    }
    
    public func deleteParagraph(request : DeleteParagraphRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/paragraphs/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }   
    
    public func deleteParagraph(request : DeleteParagraphRequest) throws  {
        let semaphore = DispatchSemaphore(value: 0);
        
        var responseError : Error? = nil;
        self.deleteParagraph(request : request, callback: { error in
            
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        
    }
    
    public func deleteParagraphWithoutNodePath(request : DeleteParagraphWithoutNodePathRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/paragraphs/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }   
    
    public func deleteParagraphWithoutNodePath(request : DeleteParagraphWithoutNodePathRequest) throws  {
        let semaphore = DispatchSemaphore(value: 0);
        
        var responseError : Error? = nil;
        self.deleteParagraphWithoutNodePath(request : request, callback: { error in
            
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        
    }
    
    public func deleteRun(request : DeleteRunRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{paragraphPath}/runs/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{paragraphPath}", with: try ObjectSerializer.serializeToString(value: request.getParagraphPath()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }   
    
    public func deleteRun(request : DeleteRunRequest) throws  {
        let semaphore = DispatchSemaphore(value: 0);
        
        var responseError : Error? = nil;
        self.deleteRun(request : request, callback: { error in
            
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        
    }
    
    public func deleteSection(request : DeleteSectionRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/sections/{sectionIndex}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{sectionIndex}", with: try ObjectSerializer.serializeToString(value: request.getSectionIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }   
    
    public func deleteSection(request : DeleteSectionRequest) throws  {
        let semaphore = DispatchSemaphore(value: 0);
        
        var responseError : Error? = nil;
        self.deleteSection(request : request, callback: { error in
            
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        
    }
    
    public func deleteTable(request : DeleteTableRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/tables/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }   
    
    public func deleteTable(request : DeleteTableRequest) throws  {
        let semaphore = DispatchSemaphore(value: 0);
        
        var responseError : Error? = nil;
        self.deleteTable(request : request, callback: { error in
            
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        
    }
    
    public func deleteTableCell(request : DeleteTableCellRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{tableRowPath}/cells/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{tableRowPath}", with: try ObjectSerializer.serializeToString(value: request.getTableRowPath()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }   
    
    public func deleteTableCell(request : DeleteTableCellRequest) throws  {
        let semaphore = DispatchSemaphore(value: 0);
        
        var responseError : Error? = nil;
        self.deleteTableCell(request : request, callback: { error in
            
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        
    }
    
    public func deleteTableRow(request : DeleteTableRowRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{tablePath}/rows/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{tablePath}", with: try ObjectSerializer.serializeToString(value: request.getTablePath()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }   
    
    public func deleteTableRow(request : DeleteTableRowRequest) throws  {
        let semaphore = DispatchSemaphore(value: 0);
        
        var responseError : Error? = nil;
        self.deleteTableRow(request : request, callback: { error in
            
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        
    }
    
    public func deleteTableWithoutNodePath(request : DeleteTableWithoutNodePathRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/tables/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }   
    
    public func deleteTableWithoutNodePath(request : DeleteTableWithoutNodePathRequest) throws  {
        let semaphore = DispatchSemaphore(value: 0);
        
        var responseError : Error? = nil;
        self.deleteTableWithoutNodePath(request : request, callback: { error in
            
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        
    }
    
    public func deleteWatermark(request : DeleteWatermarkRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/watermarks/deleteLast";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "POST",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : DocumentResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func deleteWatermark(request : DeleteWatermarkRequest) throws -> DocumentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentResponse? = nil;
        var responseError : Error? = nil;
        self.deleteWatermark(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func downloadFile(request : DownloadFileRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/storage/file/{path}";
            rawPath = rawPath.replacingOccurrences(of: "{path}", with: try ObjectSerializer.serializeToString(value: request.getPath()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getStorageName() != nil) {
                queryItems.append(URLQueryItem(name: "storageName", value: try ObjectSerializer.serializeToString(value: request.getStorageName()!)));
            }
            if (request.getVersionId() != nil) {
                queryItems.append(URLQueryItem(name: "versionId", value: try ObjectSerializer.serializeToString(value: request.getVersionId()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(response, error);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func downloadFile(request : DownloadFileRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.downloadFile(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func executeMailMerge(request : ExecuteMailMergeRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/MailMerge";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getWithRegions() != nil) {
                queryItems.append(URLQueryItem(name: "withRegions", value: try ObjectSerializer.serializeToString(value: request.getWithRegions()!)));
            }
            if (request.getMailMergeDataFile() != nil) {
                queryItems.append(URLQueryItem(name: "mailMergeDataFile", value: try ObjectSerializer.serializeToString(value: request.getMailMergeDataFile()!)));
            }
            if (request.getCleanup() != nil) {
                queryItems.append(URLQueryItem(name: "cleanup", value: try ObjectSerializer.serializeToString(value: request.getCleanup()!)));
            }
            if (request.getUseWholeParagraphAsRegion() != nil) {
                queryItems.append(URLQueryItem(name: "useWholeParagraphAsRegion", value: try ObjectSerializer.serializeToString(value: request.getUseWholeParagraphAsRegion()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            var formParams : [RequestFormParam] = [];
            if (request.getData() != nil) {
                formParams.append(RequestFormParam(name: "data", body: try ObjectSerializer.serialize(value: request.getData()!)));
            }
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: nil,
                headers: nil,
                formParams: formParams,
                callback: { response, error in
                    var responseObject : DocumentResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func executeMailMerge(request : ExecuteMailMergeRequest) throws -> DocumentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentResponse? = nil;
        var responseError : Error? = nil;
        self.executeMailMerge(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func executeMailMergeOnline(request : ExecuteMailMergeOnlineRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            let rawPath = "/words/MailMerge";
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getWithRegions() != nil) {
                queryItems.append(URLQueryItem(name: "withRegions", value: try ObjectSerializer.serializeToString(value: request.getWithRegions()!)));
            }
            if (request.getCleanup() != nil) {
                queryItems.append(URLQueryItem(name: "cleanup", value: try ObjectSerializer.serializeToString(value: request.getCleanup()!)));
            }
            if (request.getDocumentFileName() != nil) {
                queryItems.append(URLQueryItem(name: "documentFileName", value: try ObjectSerializer.serializeToString(value: request.getDocumentFileName()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            var formParams : [RequestFormParam] = [];
            formParams.append(RequestFormParam(name: "template", body: try ObjectSerializer.serialize(value: request.getTemplate())));
            formParams.append(RequestFormParam(name: "data", body: try ObjectSerializer.serialize(value: request.getData())));
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: nil,
                headers: nil,
                formParams: formParams,
                callback: { response, error in
                    callback(response, error);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func executeMailMergeOnline(request : ExecuteMailMergeOnlineRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.executeMailMergeOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getAvailableFonts(request : GetAvailableFontsRequest, callback : @escaping (_ response : AvailableFontsResponse?, _ error : Error?) -> ()) {
        do {
            let rawPath = "/words/fonts/available";
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFontsLocation() != nil) {
                queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serializeToString(value: request.getFontsLocation()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : AvailableFontsResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: AvailableFontsResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getAvailableFonts(request : GetAvailableFontsRequest) throws -> AvailableFontsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : AvailableFontsResponse? = nil;
        var responseError : Error? = nil;
        self.getAvailableFonts(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getBookmarkByName(request : GetBookmarkByNameRequest, callback : @escaping (_ response : BookmarkResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/bookmarks/{bookmarkName}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{bookmarkName}", with: try ObjectSerializer.serializeToString(value: request.getBookmarkName()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : BookmarkResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: BookmarkResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getBookmarkByName(request : GetBookmarkByNameRequest) throws -> BookmarkResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : BookmarkResponse? = nil;
        var responseError : Error? = nil;
        self.getBookmarkByName(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getBookmarks(request : GetBookmarksRequest, callback : @escaping (_ response : BookmarksResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/bookmarks";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : BookmarksResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: BookmarksResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getBookmarks(request : GetBookmarksRequest) throws -> BookmarksResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : BookmarksResponse? = nil;
        var responseError : Error? = nil;
        self.getBookmarks(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getBorder(request : GetBorderRequest, callback : @escaping (_ response : BorderResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/borders/{borderType}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));
            rawPath = rawPath.replacingOccurrences(of: "{borderType}", with: try ObjectSerializer.serializeToString(value: request.getBorderType()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : BorderResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: BorderResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getBorder(request : GetBorderRequest) throws -> BorderResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : BorderResponse? = nil;
        var responseError : Error? = nil;
        self.getBorder(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getBorders(request : GetBordersRequest, callback : @escaping (_ response : BordersResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/borders";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : BordersResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: BordersResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getBorders(request : GetBordersRequest) throws -> BordersResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : BordersResponse? = nil;
        var responseError : Error? = nil;
        self.getBorders(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getComment(request : GetCommentRequest, callback : @escaping (_ response : CommentResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/comments/{commentIndex}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{commentIndex}", with: try ObjectSerializer.serializeToString(value: request.getCommentIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : CommentResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: CommentResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getComment(request : GetCommentRequest) throws -> CommentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : CommentResponse? = nil;
        var responseError : Error? = nil;
        self.getComment(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getComments(request : GetCommentsRequest, callback : @escaping (_ response : CommentsResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/comments";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : CommentsResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: CommentsResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getComments(request : GetCommentsRequest) throws -> CommentsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : CommentsResponse? = nil;
        var responseError : Error? = nil;
        self.getComments(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getDocument(request : GetDocumentRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{documentName}";
            rawPath = rawPath.replacingOccurrences(of: "{documentName}", with: try ObjectSerializer.serializeToString(value: request.getDocumentName()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : DocumentResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getDocument(request : GetDocumentRequest) throws -> DocumentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentResponse? = nil;
        var responseError : Error? = nil;
        self.getDocument(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getDocumentDrawingObjectByIndex(request : GetDocumentDrawingObjectByIndexRequest, callback : @escaping (_ response : DrawingObjectResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/drawingObjects/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : DrawingObjectResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: DrawingObjectResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getDocumentDrawingObjectByIndex(request : GetDocumentDrawingObjectByIndexRequest) throws -> DrawingObjectResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DrawingObjectResponse? = nil;
        var responseError : Error? = nil;
        self.getDocumentDrawingObjectByIndex(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getDocumentDrawingObjectByIndexWithoutNodePath(request : GetDocumentDrawingObjectByIndexWithoutNodePathRequest, callback : @escaping (_ response : DrawingObjectResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/drawingObjects/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : DrawingObjectResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: DrawingObjectResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getDocumentDrawingObjectByIndexWithoutNodePath(request : GetDocumentDrawingObjectByIndexWithoutNodePathRequest) throws -> DrawingObjectResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DrawingObjectResponse? = nil;
        var responseError : Error? = nil;
        self.getDocumentDrawingObjectByIndexWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getDocumentDrawingObjectImageData(request : GetDocumentDrawingObjectImageDataRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/drawingObjects/{index}/imageData";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(response, error);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getDocumentDrawingObjectImageData(request : GetDocumentDrawingObjectImageDataRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.getDocumentDrawingObjectImageData(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getDocumentDrawingObjectImageDataWithoutNodePath(request : GetDocumentDrawingObjectImageDataWithoutNodePathRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/drawingObjects/{index}/imageData";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(response, error);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getDocumentDrawingObjectImageDataWithoutNodePath(request : GetDocumentDrawingObjectImageDataWithoutNodePathRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.getDocumentDrawingObjectImageDataWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getDocumentDrawingObjectOleData(request : GetDocumentDrawingObjectOleDataRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/drawingObjects/{index}/oleData";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(response, error);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getDocumentDrawingObjectOleData(request : GetDocumentDrawingObjectOleDataRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.getDocumentDrawingObjectOleData(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getDocumentDrawingObjectOleDataWithoutNodePath(request : GetDocumentDrawingObjectOleDataWithoutNodePathRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/drawingObjects/{index}/oleData";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(response, error);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getDocumentDrawingObjectOleDataWithoutNodePath(request : GetDocumentDrawingObjectOleDataWithoutNodePathRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.getDocumentDrawingObjectOleDataWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getDocumentDrawingObjects(request : GetDocumentDrawingObjectsRequest, callback : @escaping (_ response : DrawingObjectsResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/drawingObjects";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : DrawingObjectsResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: DrawingObjectsResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getDocumentDrawingObjects(request : GetDocumentDrawingObjectsRequest) throws -> DrawingObjectsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DrawingObjectsResponse? = nil;
        var responseError : Error? = nil;
        self.getDocumentDrawingObjects(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getDocumentDrawingObjectsWithoutNodePath(request : GetDocumentDrawingObjectsWithoutNodePathRequest, callback : @escaping (_ response : DrawingObjectsResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/drawingObjects";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : DrawingObjectsResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: DrawingObjectsResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getDocumentDrawingObjectsWithoutNodePath(request : GetDocumentDrawingObjectsWithoutNodePathRequest) throws -> DrawingObjectsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DrawingObjectsResponse? = nil;
        var responseError : Error? = nil;
        self.getDocumentDrawingObjectsWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getDocumentFieldNames(request : GetDocumentFieldNamesRequest, callback : @escaping (_ response : FieldNamesResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/mailMerge/FieldNames";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getUseNonMergeFields() != nil) {
                queryItems.append(URLQueryItem(name: "useNonMergeFields", value: try ObjectSerializer.serializeToString(value: request.getUseNonMergeFields()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FieldNamesResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FieldNamesResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getDocumentFieldNames(request : GetDocumentFieldNamesRequest) throws -> FieldNamesResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FieldNamesResponse? = nil;
        var responseError : Error? = nil;
        self.getDocumentFieldNames(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getDocumentFieldNamesOnline(request : GetDocumentFieldNamesOnlineRequest, callback : @escaping (_ response : FieldNamesResponse?, _ error : Error?) -> ()) {
        do {
            let rawPath = "/words/mailMerge/FieldNames";
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getUseNonMergeFields() != nil) {
                queryItems.append(URLQueryItem(name: "useNonMergeFields", value: try ObjectSerializer.serializeToString(value: request.getUseNonMergeFields()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            var formParams : [RequestFormParam] = [];
            formParams.append(RequestFormParam(name: "template", body: try ObjectSerializer.serialize(value: request.getTemplate())));
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: nil,
                headers: nil,
                formParams: formParams,
                callback: { response, error in
                    var responseObject : FieldNamesResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FieldNamesResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getDocumentFieldNamesOnline(request : GetDocumentFieldNamesOnlineRequest) throws -> FieldNamesResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FieldNamesResponse? = nil;
        var responseError : Error? = nil;
        self.getDocumentFieldNamesOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getDocumentHyperlinkByIndex(request : GetDocumentHyperlinkByIndexRequest, callback : @escaping (_ response : HyperlinkResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/hyperlinks/{hyperlinkIndex}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{hyperlinkIndex}", with: try ObjectSerializer.serializeToString(value: request.getHyperlinkIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : HyperlinkResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: HyperlinkResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getDocumentHyperlinkByIndex(request : GetDocumentHyperlinkByIndexRequest) throws -> HyperlinkResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : HyperlinkResponse? = nil;
        var responseError : Error? = nil;
        self.getDocumentHyperlinkByIndex(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getDocumentHyperlinks(request : GetDocumentHyperlinksRequest, callback : @escaping (_ response : HyperlinksResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/hyperlinks";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : HyperlinksResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: HyperlinksResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getDocumentHyperlinks(request : GetDocumentHyperlinksRequest) throws -> HyperlinksResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : HyperlinksResponse? = nil;
        var responseError : Error? = nil;
        self.getDocumentHyperlinks(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getDocumentProperties(request : GetDocumentPropertiesRequest, callback : @escaping (_ response : DocumentPropertiesResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/documentProperties";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : DocumentPropertiesResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: DocumentPropertiesResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getDocumentProperties(request : GetDocumentPropertiesRequest) throws -> DocumentPropertiesResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentPropertiesResponse? = nil;
        var responseError : Error? = nil;
        self.getDocumentProperties(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getDocumentProperty(request : GetDocumentPropertyRequest, callback : @escaping (_ response : DocumentPropertyResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/documentProperties/{propertyName}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{propertyName}", with: try ObjectSerializer.serializeToString(value: request.getPropertyName()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : DocumentPropertyResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: DocumentPropertyResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getDocumentProperty(request : GetDocumentPropertyRequest) throws -> DocumentPropertyResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentPropertyResponse? = nil;
        var responseError : Error? = nil;
        self.getDocumentProperty(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getDocumentProtection(request : GetDocumentProtectionRequest, callback : @escaping (_ response : ProtectionDataResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/protection";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : ProtectionDataResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: ProtectionDataResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getDocumentProtection(request : GetDocumentProtectionRequest) throws -> ProtectionDataResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ProtectionDataResponse? = nil;
        var responseError : Error? = nil;
        self.getDocumentProtection(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getDocumentStatistics(request : GetDocumentStatisticsRequest, callback : @escaping (_ response : StatDataResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/statistics";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getIncludeComments() != nil) {
                queryItems.append(URLQueryItem(name: "includeComments", value: try ObjectSerializer.serializeToString(value: request.getIncludeComments()!)));
            }
            if (request.getIncludeFootnotes() != nil) {
                queryItems.append(URLQueryItem(name: "includeFootnotes", value: try ObjectSerializer.serializeToString(value: request.getIncludeFootnotes()!)));
            }
            if (request.getIncludeTextInShapes() != nil) {
                queryItems.append(URLQueryItem(name: "includeTextInShapes", value: try ObjectSerializer.serializeToString(value: request.getIncludeTextInShapes()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : StatDataResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: StatDataResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getDocumentStatistics(request : GetDocumentStatisticsRequest) throws -> StatDataResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : StatDataResponse? = nil;
        var responseError : Error? = nil;
        self.getDocumentStatistics(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getDocumentWithFormat(request : GetDocumentWithFormatRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            queryItems.append(URLQueryItem(name: "format", value: try ObjectSerializer.serializeToString(value: request.getFormat())));
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getOutPath() != nil) {
                queryItems.append(URLQueryItem(name: "outPath", value: try ObjectSerializer.serializeToString(value: request.getOutPath()!)));
            }
            if (request.getFontsLocation() != nil) {
                queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serializeToString(value: request.getFontsLocation()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(response, error);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getDocumentWithFormat(request : GetDocumentWithFormatRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.getDocumentWithFormat(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getField(request : GetFieldRequest, callback : @escaping (_ response : FieldResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/fields/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FieldResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FieldResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getField(request : GetFieldRequest) throws -> FieldResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FieldResponse? = nil;
        var responseError : Error? = nil;
        self.getField(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getFieldWithoutNodePath(request : GetFieldWithoutNodePathRequest, callback : @escaping (_ response : FieldResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/fields/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FieldResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FieldResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getFieldWithoutNodePath(request : GetFieldWithoutNodePathRequest) throws -> FieldResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FieldResponse? = nil;
        var responseError : Error? = nil;
        self.getFieldWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getFields(request : GetFieldsRequest, callback : @escaping (_ response : FieldsResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/fields";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FieldsResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FieldsResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getFields(request : GetFieldsRequest) throws -> FieldsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FieldsResponse? = nil;
        var responseError : Error? = nil;
        self.getFields(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getFieldsWithoutNodePath(request : GetFieldsWithoutNodePathRequest, callback : @escaping (_ response : FieldsResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/fields";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FieldsResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FieldsResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getFieldsWithoutNodePath(request : GetFieldsWithoutNodePathRequest) throws -> FieldsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FieldsResponse? = nil;
        var responseError : Error? = nil;
        self.getFieldsWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getFilesList(request : GetFilesListRequest, callback : @escaping (_ response : FilesList?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/storage/folder/{path}";
            rawPath = rawPath.replacingOccurrences(of: "{path}", with: try ObjectSerializer.serializeToString(value: request.getPath()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getStorageName() != nil) {
                queryItems.append(URLQueryItem(name: "storageName", value: try ObjectSerializer.serializeToString(value: request.getStorageName()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FilesList? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FilesList.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getFilesList(request : GetFilesListRequest) throws -> FilesList {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FilesList? = nil;
        var responseError : Error? = nil;
        self.getFilesList(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getFootnote(request : GetFootnoteRequest, callback : @escaping (_ response : FootnoteResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/footnotes/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FootnoteResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FootnoteResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getFootnote(request : GetFootnoteRequest) throws -> FootnoteResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FootnoteResponse? = nil;
        var responseError : Error? = nil;
        self.getFootnote(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getFootnoteWithoutNodePath(request : GetFootnoteWithoutNodePathRequest, callback : @escaping (_ response : FootnoteResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/footnotes/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FootnoteResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FootnoteResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getFootnoteWithoutNodePath(request : GetFootnoteWithoutNodePathRequest) throws -> FootnoteResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FootnoteResponse? = nil;
        var responseError : Error? = nil;
        self.getFootnoteWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getFootnotes(request : GetFootnotesRequest, callback : @escaping (_ response : FootnotesResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/footnotes";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FootnotesResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FootnotesResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getFootnotes(request : GetFootnotesRequest) throws -> FootnotesResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FootnotesResponse? = nil;
        var responseError : Error? = nil;
        self.getFootnotes(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getFootnotesWithoutNodePath(request : GetFootnotesWithoutNodePathRequest, callback : @escaping (_ response : FootnotesResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/footnotes";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FootnotesResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FootnotesResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getFootnotesWithoutNodePath(request : GetFootnotesWithoutNodePathRequest) throws -> FootnotesResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FootnotesResponse? = nil;
        var responseError : Error? = nil;
        self.getFootnotesWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getFormField(request : GetFormFieldRequest, callback : @escaping (_ response : FormFieldResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/formfields/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FormFieldResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FormFieldResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getFormField(request : GetFormFieldRequest) throws -> FormFieldResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FormFieldResponse? = nil;
        var responseError : Error? = nil;
        self.getFormField(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getFormFieldWithoutNodePath(request : GetFormFieldWithoutNodePathRequest, callback : @escaping (_ response : FormFieldResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/formfields/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FormFieldResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FormFieldResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getFormFieldWithoutNodePath(request : GetFormFieldWithoutNodePathRequest) throws -> FormFieldResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FormFieldResponse? = nil;
        var responseError : Error? = nil;
        self.getFormFieldWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getFormFields(request : GetFormFieldsRequest, callback : @escaping (_ response : FormFieldsResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/formfields";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FormFieldsResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FormFieldsResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getFormFields(request : GetFormFieldsRequest) throws -> FormFieldsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FormFieldsResponse? = nil;
        var responseError : Error? = nil;
        self.getFormFields(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getFormFieldsWithoutNodePath(request : GetFormFieldsWithoutNodePathRequest, callback : @escaping (_ response : FormFieldsResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/formfields";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FormFieldsResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FormFieldsResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getFormFieldsWithoutNodePath(request : GetFormFieldsWithoutNodePathRequest) throws -> FormFieldsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FormFieldsResponse? = nil;
        var responseError : Error? = nil;
        self.getFormFieldsWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getHeaderFooter(request : GetHeaderFooterRequest, callback : @escaping (_ response : HeaderFooterResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/headersfooters/{headerFooterIndex}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{headerFooterIndex}", with: try ObjectSerializer.serializeToString(value: request.getHeaderFooterIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getFilterByType() != nil) {
                queryItems.append(URLQueryItem(name: "filterByType", value: try ObjectSerializer.serializeToString(value: request.getFilterByType()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : HeaderFooterResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: HeaderFooterResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getHeaderFooter(request : GetHeaderFooterRequest) throws -> HeaderFooterResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : HeaderFooterResponse? = nil;
        var responseError : Error? = nil;
        self.getHeaderFooter(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getHeaderFooterOfSection(request : GetHeaderFooterOfSectionRequest, callback : @escaping (_ response : HeaderFooterResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/sections/{sectionIndex}/headersfooters/{headerFooterIndex}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{headerFooterIndex}", with: try ObjectSerializer.serializeToString(value: request.getHeaderFooterIndex()));
            rawPath = rawPath.replacingOccurrences(of: "{sectionIndex}", with: try ObjectSerializer.serializeToString(value: request.getSectionIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getFilterByType() != nil) {
                queryItems.append(URLQueryItem(name: "filterByType", value: try ObjectSerializer.serializeToString(value: request.getFilterByType()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : HeaderFooterResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: HeaderFooterResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getHeaderFooterOfSection(request : GetHeaderFooterOfSectionRequest) throws -> HeaderFooterResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : HeaderFooterResponse? = nil;
        var responseError : Error? = nil;
        self.getHeaderFooterOfSection(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getHeaderFooters(request : GetHeaderFootersRequest, callback : @escaping (_ response : HeaderFootersResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{sectionPath}/headersfooters";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{sectionPath}", with: try ObjectSerializer.serializeToString(value: request.getSectionPath()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getFilterByType() != nil) {
                queryItems.append(URLQueryItem(name: "filterByType", value: try ObjectSerializer.serializeToString(value: request.getFilterByType()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : HeaderFootersResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: HeaderFootersResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getHeaderFooters(request : GetHeaderFootersRequest) throws -> HeaderFootersResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : HeaderFootersResponse? = nil;
        var responseError : Error? = nil;
        self.getHeaderFooters(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getOfficeMathObject(request : GetOfficeMathObjectRequest, callback : @escaping (_ response : OfficeMathObjectResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/OfficeMathObjects/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : OfficeMathObjectResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: OfficeMathObjectResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getOfficeMathObject(request : GetOfficeMathObjectRequest) throws -> OfficeMathObjectResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : OfficeMathObjectResponse? = nil;
        var responseError : Error? = nil;
        self.getOfficeMathObject(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getOfficeMathObjectWithoutNodePath(request : GetOfficeMathObjectWithoutNodePathRequest, callback : @escaping (_ response : OfficeMathObjectResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/OfficeMathObjects/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : OfficeMathObjectResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: OfficeMathObjectResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getOfficeMathObjectWithoutNodePath(request : GetOfficeMathObjectWithoutNodePathRequest) throws -> OfficeMathObjectResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : OfficeMathObjectResponse? = nil;
        var responseError : Error? = nil;
        self.getOfficeMathObjectWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getOfficeMathObjects(request : GetOfficeMathObjectsRequest, callback : @escaping (_ response : OfficeMathObjectsResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/OfficeMathObjects";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : OfficeMathObjectsResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: OfficeMathObjectsResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getOfficeMathObjects(request : GetOfficeMathObjectsRequest) throws -> OfficeMathObjectsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : OfficeMathObjectsResponse? = nil;
        var responseError : Error? = nil;
        self.getOfficeMathObjects(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getOfficeMathObjectsWithoutNodePath(request : GetOfficeMathObjectsWithoutNodePathRequest, callback : @escaping (_ response : OfficeMathObjectsResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/OfficeMathObjects";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : OfficeMathObjectsResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: OfficeMathObjectsResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getOfficeMathObjectsWithoutNodePath(request : GetOfficeMathObjectsWithoutNodePathRequest) throws -> OfficeMathObjectsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : OfficeMathObjectsResponse? = nil;
        var responseError : Error? = nil;
        self.getOfficeMathObjectsWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getParagraph(request : GetParagraphRequest, callback : @escaping (_ response : ParagraphResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/paragraphs/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : ParagraphResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: ParagraphResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getParagraph(request : GetParagraphRequest) throws -> ParagraphResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ParagraphResponse? = nil;
        var responseError : Error? = nil;
        self.getParagraph(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getParagraphFormat(request : GetParagraphFormatRequest, callback : @escaping (_ response : ParagraphFormatResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/paragraphs/{index}/format";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : ParagraphFormatResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: ParagraphFormatResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getParagraphFormat(request : GetParagraphFormatRequest) throws -> ParagraphFormatResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ParagraphFormatResponse? = nil;
        var responseError : Error? = nil;
        self.getParagraphFormat(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getParagraphFormatWithoutNodePath(request : GetParagraphFormatWithoutNodePathRequest, callback : @escaping (_ response : ParagraphFormatResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/paragraphs/{index}/format";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : ParagraphFormatResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: ParagraphFormatResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getParagraphFormatWithoutNodePath(request : GetParagraphFormatWithoutNodePathRequest) throws -> ParagraphFormatResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ParagraphFormatResponse? = nil;
        var responseError : Error? = nil;
        self.getParagraphFormatWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getParagraphWithoutNodePath(request : GetParagraphWithoutNodePathRequest, callback : @escaping (_ response : ParagraphResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/paragraphs/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : ParagraphResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: ParagraphResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getParagraphWithoutNodePath(request : GetParagraphWithoutNodePathRequest) throws -> ParagraphResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ParagraphResponse? = nil;
        var responseError : Error? = nil;
        self.getParagraphWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getParagraphs(request : GetParagraphsRequest, callback : @escaping (_ response : ParagraphLinkCollectionResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/paragraphs";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : ParagraphLinkCollectionResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: ParagraphLinkCollectionResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getParagraphs(request : GetParagraphsRequest) throws -> ParagraphLinkCollectionResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ParagraphLinkCollectionResponse? = nil;
        var responseError : Error? = nil;
        self.getParagraphs(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getParagraphsWithoutNodePath(request : GetParagraphsWithoutNodePathRequest, callback : @escaping (_ response : ParagraphLinkCollectionResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/paragraphs";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : ParagraphLinkCollectionResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: ParagraphLinkCollectionResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getParagraphsWithoutNodePath(request : GetParagraphsWithoutNodePathRequest) throws -> ParagraphLinkCollectionResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ParagraphLinkCollectionResponse? = nil;
        var responseError : Error? = nil;
        self.getParagraphsWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getRangeText(request : GetRangeTextRequest, callback : @escaping (_ response : RangeTextResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/range/{rangeStartIdentifier}/{rangeEndIdentifier}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{rangeStartIdentifier}", with: try ObjectSerializer.serializeToString(value: request.getRangeStartIdentifier()));
            rawPath = rawPath.replacingOccurrences(of: "{rangeEndIdentifier}", with: try ObjectSerializer.serializeToString(value: request.getRangeEndIdentifier()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : RangeTextResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: RangeTextResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getRangeText(request : GetRangeTextRequest) throws -> RangeTextResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : RangeTextResponse? = nil;
        var responseError : Error? = nil;
        self.getRangeText(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getRun(request : GetRunRequest, callback : @escaping (_ response : RunResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{paragraphPath}/runs/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{paragraphPath}", with: try ObjectSerializer.serializeToString(value: request.getParagraphPath()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : RunResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: RunResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getRun(request : GetRunRequest) throws -> RunResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : RunResponse? = nil;
        var responseError : Error? = nil;
        self.getRun(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getRunFont(request : GetRunFontRequest, callback : @escaping (_ response : FontResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{paragraphPath}/runs/{index}/font";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{paragraphPath}", with: try ObjectSerializer.serializeToString(value: request.getParagraphPath()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FontResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FontResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getRunFont(request : GetRunFontRequest) throws -> FontResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FontResponse? = nil;
        var responseError : Error? = nil;
        self.getRunFont(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getRuns(request : GetRunsRequest, callback : @escaping (_ response : RunsResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{paragraphPath}/runs";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{paragraphPath}", with: try ObjectSerializer.serializeToString(value: request.getParagraphPath()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : RunsResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: RunsResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getRuns(request : GetRunsRequest) throws -> RunsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : RunsResponse? = nil;
        var responseError : Error? = nil;
        self.getRuns(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getSection(request : GetSectionRequest, callback : @escaping (_ response : SectionResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/sections/{sectionIndex}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{sectionIndex}", with: try ObjectSerializer.serializeToString(value: request.getSectionIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : SectionResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: SectionResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getSection(request : GetSectionRequest) throws -> SectionResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : SectionResponse? = nil;
        var responseError : Error? = nil;
        self.getSection(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getSectionPageSetup(request : GetSectionPageSetupRequest, callback : @escaping (_ response : SectionPageSetupResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/sections/{sectionIndex}/pageSetup";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{sectionIndex}", with: try ObjectSerializer.serializeToString(value: request.getSectionIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : SectionPageSetupResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: SectionPageSetupResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getSectionPageSetup(request : GetSectionPageSetupRequest) throws -> SectionPageSetupResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : SectionPageSetupResponse? = nil;
        var responseError : Error? = nil;
        self.getSectionPageSetup(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getSections(request : GetSectionsRequest, callback : @escaping (_ response : SectionLinkCollectionResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/sections";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : SectionLinkCollectionResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: SectionLinkCollectionResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getSections(request : GetSectionsRequest) throws -> SectionLinkCollectionResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : SectionLinkCollectionResponse? = nil;
        var responseError : Error? = nil;
        self.getSections(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getTable(request : GetTableRequest, callback : @escaping (_ response : TableResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/tables/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : TableResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: TableResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getTable(request : GetTableRequest) throws -> TableResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TableResponse? = nil;
        var responseError : Error? = nil;
        self.getTable(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getTableCell(request : GetTableCellRequest, callback : @escaping (_ response : TableCellResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{tableRowPath}/cells/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{tableRowPath}", with: try ObjectSerializer.serializeToString(value: request.getTableRowPath()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : TableCellResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: TableCellResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getTableCell(request : GetTableCellRequest) throws -> TableCellResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TableCellResponse? = nil;
        var responseError : Error? = nil;
        self.getTableCell(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getTableCellFormat(request : GetTableCellFormatRequest, callback : @escaping (_ response : TableCellFormatResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{tableRowPath}/cells/{index}/cellformat";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{tableRowPath}", with: try ObjectSerializer.serializeToString(value: request.getTableRowPath()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : TableCellFormatResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: TableCellFormatResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getTableCellFormat(request : GetTableCellFormatRequest) throws -> TableCellFormatResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TableCellFormatResponse? = nil;
        var responseError : Error? = nil;
        self.getTableCellFormat(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getTableProperties(request : GetTablePropertiesRequest, callback : @escaping (_ response : TablePropertiesResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/tables/{index}/properties";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : TablePropertiesResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: TablePropertiesResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getTableProperties(request : GetTablePropertiesRequest) throws -> TablePropertiesResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TablePropertiesResponse? = nil;
        var responseError : Error? = nil;
        self.getTableProperties(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getTablePropertiesWithoutNodePath(request : GetTablePropertiesWithoutNodePathRequest, callback : @escaping (_ response : TablePropertiesResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/tables/{index}/properties";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : TablePropertiesResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: TablePropertiesResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getTablePropertiesWithoutNodePath(request : GetTablePropertiesWithoutNodePathRequest) throws -> TablePropertiesResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TablePropertiesResponse? = nil;
        var responseError : Error? = nil;
        self.getTablePropertiesWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getTableRow(request : GetTableRowRequest, callback : @escaping (_ response : TableRowResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{tablePath}/rows/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{tablePath}", with: try ObjectSerializer.serializeToString(value: request.getTablePath()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : TableRowResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: TableRowResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getTableRow(request : GetTableRowRequest) throws -> TableRowResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TableRowResponse? = nil;
        var responseError : Error? = nil;
        self.getTableRow(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getTableRowFormat(request : GetTableRowFormatRequest, callback : @escaping (_ response : TableRowFormatResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{tablePath}/rows/{index}/rowformat";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{tablePath}", with: try ObjectSerializer.serializeToString(value: request.getTablePath()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : TableRowFormatResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: TableRowFormatResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getTableRowFormat(request : GetTableRowFormatRequest) throws -> TableRowFormatResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TableRowFormatResponse? = nil;
        var responseError : Error? = nil;
        self.getTableRowFormat(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getTableWithoutNodePath(request : GetTableWithoutNodePathRequest, callback : @escaping (_ response : TableResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/tables/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : TableResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: TableResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getTableWithoutNodePath(request : GetTableWithoutNodePathRequest) throws -> TableResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TableResponse? = nil;
        var responseError : Error? = nil;
        self.getTableWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getTables(request : GetTablesRequest, callback : @escaping (_ response : TableLinkCollectionResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/tables";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : TableLinkCollectionResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: TableLinkCollectionResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getTables(request : GetTablesRequest) throws -> TableLinkCollectionResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TableLinkCollectionResponse? = nil;
        var responseError : Error? = nil;
        self.getTables(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func getTablesWithoutNodePath(request : GetTablesWithoutNodePathRequest, callback : @escaping (_ response : TableLinkCollectionResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/tables";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : TableLinkCollectionResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: TableLinkCollectionResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func getTablesWithoutNodePath(request : GetTablesWithoutNodePathRequest) throws -> TableLinkCollectionResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TableLinkCollectionResponse? = nil;
        var responseError : Error? = nil;
        self.getTablesWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func insertComment(request : InsertCommentRequest, callback : @escaping (_ response : CommentResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/comments";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "POST",
                body: try ObjectSerializer.serializeBody(value: request.getComment()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : CommentResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: CommentResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func insertComment(request : InsertCommentRequest) throws -> CommentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : CommentResponse? = nil;
        var responseError : Error? = nil;
        self.insertComment(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func insertDrawingObject(request : InsertDrawingObjectRequest, callback : @escaping (_ response : DrawingObjectResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/drawingObjects";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            var formParams : [RequestFormParam] = [];
            formParams.append(RequestFormParam(name: "drawingObject", body: try ObjectSerializer.serialize(value: request.getDrawingObject())));
            formParams.append(RequestFormParam(name: "imageFile", body: try ObjectSerializer.serialize(value: request.getImageFile())));
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "POST",
                body: nil,
                headers: nil,
                formParams: formParams,
                callback: { response, error in
                    var responseObject : DrawingObjectResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: DrawingObjectResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func insertDrawingObject(request : InsertDrawingObjectRequest) throws -> DrawingObjectResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DrawingObjectResponse? = nil;
        var responseError : Error? = nil;
        self.insertDrawingObject(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func insertDrawingObjectWithoutNodePath(request : InsertDrawingObjectWithoutNodePathRequest, callback : @escaping (_ response : DrawingObjectResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/drawingObjects";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            var formParams : [RequestFormParam] = [];
            formParams.append(RequestFormParam(name: "drawingObject", body: try ObjectSerializer.serialize(value: request.getDrawingObject())));
            formParams.append(RequestFormParam(name: "imageFile", body: try ObjectSerializer.serialize(value: request.getImageFile())));
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "POST",
                body: nil,
                headers: nil,
                formParams: formParams,
                callback: { response, error in
                    var responseObject : DrawingObjectResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: DrawingObjectResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func insertDrawingObjectWithoutNodePath(request : InsertDrawingObjectWithoutNodePathRequest) throws -> DrawingObjectResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DrawingObjectResponse? = nil;
        var responseError : Error? = nil;
        self.insertDrawingObjectWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func insertField(request : InsertFieldRequest, callback : @escaping (_ response : FieldResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/fields";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (request.getInsertBeforeNode() != nil) {
                queryItems.append(URLQueryItem(name: "insertBeforeNode", value: try ObjectSerializer.serializeToString(value: request.getInsertBeforeNode()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "POST",
                body: try ObjectSerializer.serializeBody(value: request.getField()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FieldResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FieldResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func insertField(request : InsertFieldRequest) throws -> FieldResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FieldResponse? = nil;
        var responseError : Error? = nil;
        self.insertField(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func insertFieldWithoutNodePath(request : InsertFieldWithoutNodePathRequest, callback : @escaping (_ response : FieldResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/fields";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (request.getInsertBeforeNode() != nil) {
                queryItems.append(URLQueryItem(name: "insertBeforeNode", value: try ObjectSerializer.serializeToString(value: request.getInsertBeforeNode()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "POST",
                body: try ObjectSerializer.serializeBody(value: request.getField()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FieldResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FieldResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func insertFieldWithoutNodePath(request : InsertFieldWithoutNodePathRequest) throws -> FieldResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FieldResponse? = nil;
        var responseError : Error? = nil;
        self.insertFieldWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func insertFootnote(request : InsertFootnoteRequest, callback : @escaping (_ response : FootnoteResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/footnotes";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "POST",
                body: try ObjectSerializer.serializeBody(value: request.getFootnoteDto()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FootnoteResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FootnoteResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func insertFootnote(request : InsertFootnoteRequest) throws -> FootnoteResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FootnoteResponse? = nil;
        var responseError : Error? = nil;
        self.insertFootnote(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func insertFootnoteWithoutNodePath(request : InsertFootnoteWithoutNodePathRequest, callback : @escaping (_ response : FootnoteResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/footnotes";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "POST",
                body: try ObjectSerializer.serializeBody(value: request.getFootnoteDto()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FootnoteResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FootnoteResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func insertFootnoteWithoutNodePath(request : InsertFootnoteWithoutNodePathRequest) throws -> FootnoteResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FootnoteResponse? = nil;
        var responseError : Error? = nil;
        self.insertFootnoteWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func insertFormField(request : InsertFormFieldRequest, callback : @escaping (_ response : FormFieldResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/formfields";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (request.getInsertBeforeNode() != nil) {
                queryItems.append(URLQueryItem(name: "insertBeforeNode", value: try ObjectSerializer.serializeToString(value: request.getInsertBeforeNode()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "POST",
                body: try ObjectSerializer.serializeBody(value: request.getFormField()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FormFieldResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FormFieldResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func insertFormField(request : InsertFormFieldRequest) throws -> FormFieldResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FormFieldResponse? = nil;
        var responseError : Error? = nil;
        self.insertFormField(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func insertFormFieldWithoutNodePath(request : InsertFormFieldWithoutNodePathRequest, callback : @escaping (_ response : FormFieldResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/formfields";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (request.getInsertBeforeNode() != nil) {
                queryItems.append(URLQueryItem(name: "insertBeforeNode", value: try ObjectSerializer.serializeToString(value: request.getInsertBeforeNode()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "POST",
                body: try ObjectSerializer.serializeBody(value: request.getFormField()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FormFieldResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FormFieldResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func insertFormFieldWithoutNodePath(request : InsertFormFieldWithoutNodePathRequest) throws -> FormFieldResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FormFieldResponse? = nil;
        var responseError : Error? = nil;
        self.insertFormFieldWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func insertHeaderFooter(request : InsertHeaderFooterRequest, callback : @escaping (_ response : HeaderFooterResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{sectionPath}/headersfooters";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{sectionPath}", with: try ObjectSerializer.serializeToString(value: request.getSectionPath()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getHeaderFooterType()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : HeaderFooterResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: HeaderFooterResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func insertHeaderFooter(request : InsertHeaderFooterRequest) throws -> HeaderFooterResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : HeaderFooterResponse? = nil;
        var responseError : Error? = nil;
        self.insertHeaderFooter(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func insertPageNumbers(request : InsertPageNumbersRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/PageNumbers";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getPageNumber()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : DocumentResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func insertPageNumbers(request : InsertPageNumbersRequest) throws -> DocumentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentResponse? = nil;
        var responseError : Error? = nil;
        self.insertPageNumbers(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func insertParagraph(request : InsertParagraphRequest, callback : @escaping (_ response : ParagraphResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/paragraphs";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (request.getInsertBeforeNode() != nil) {
                queryItems.append(URLQueryItem(name: "insertBeforeNode", value: try ObjectSerializer.serializeToString(value: request.getInsertBeforeNode()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "POST",
                body: try ObjectSerializer.serializeBody(value: request.getParagraph()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : ParagraphResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: ParagraphResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func insertParagraph(request : InsertParagraphRequest) throws -> ParagraphResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ParagraphResponse? = nil;
        var responseError : Error? = nil;
        self.insertParagraph(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func insertRun(request : InsertRunRequest, callback : @escaping (_ response : RunResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{paragraphPath}/runs";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{paragraphPath}", with: try ObjectSerializer.serializeToString(value: request.getParagraphPath()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (request.getInsertBeforeNode() != nil) {
                queryItems.append(URLQueryItem(name: "insertBeforeNode", value: try ObjectSerializer.serializeToString(value: request.getInsertBeforeNode()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "POST",
                body: try ObjectSerializer.serializeBody(value: request.getRun()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : RunResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: RunResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func insertRun(request : InsertRunRequest) throws -> RunResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : RunResponse? = nil;
        var responseError : Error? = nil;
        self.insertRun(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func insertTable(request : InsertTableRequest, callback : @escaping (_ response : TableResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/tables";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "POST",
                body: try ObjectSerializer.serializeBody(value: request.getTable()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : TableResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: TableResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func insertTable(request : InsertTableRequest) throws -> TableResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TableResponse? = nil;
        var responseError : Error? = nil;
        self.insertTable(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func insertTableCell(request : InsertTableCellRequest, callback : @escaping (_ response : TableCellResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{tableRowPath}/cells";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{tableRowPath}", with: try ObjectSerializer.serializeToString(value: request.getTableRowPath()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "POST",
                body: try ObjectSerializer.serializeBody(value: request.getCell()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : TableCellResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: TableCellResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func insertTableCell(request : InsertTableCellRequest) throws -> TableCellResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TableCellResponse? = nil;
        var responseError : Error? = nil;
        self.insertTableCell(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func insertTableRow(request : InsertTableRowRequest, callback : @escaping (_ response : TableRowResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{tablePath}/rows";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{tablePath}", with: try ObjectSerializer.serializeToString(value: request.getTablePath()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "POST",
                body: try ObjectSerializer.serializeBody(value: request.getRow()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : TableRowResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: TableRowResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func insertTableRow(request : InsertTableRowRequest) throws -> TableRowResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TableRowResponse? = nil;
        var responseError : Error? = nil;
        self.insertTableRow(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func insertTableWithoutNodePath(request : InsertTableWithoutNodePathRequest, callback : @escaping (_ response : TableResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/tables";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "POST",
                body: try ObjectSerializer.serializeBody(value: request.getTable()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : TableResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: TableResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func insertTableWithoutNodePath(request : InsertTableWithoutNodePathRequest) throws -> TableResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TableResponse? = nil;
        var responseError : Error? = nil;
        self.insertTableWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func insertWatermarkImage(request : InsertWatermarkImageRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/watermarks/images";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (request.getRotationAngle() != nil) {
                queryItems.append(URLQueryItem(name: "rotationAngle", value: try ObjectSerializer.serializeToString(value: request.getRotationAngle()!)));
            }
            if (request.getImage() != nil) {
                queryItems.append(URLQueryItem(name: "image", value: try ObjectSerializer.serializeToString(value: request.getImage()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            var formParams : [RequestFormParam] = [];
            if (request.getImageFile() != nil) {
                formParams.append(RequestFormParam(name: "imageFile", body: try ObjectSerializer.serialize(value: request.getImageFile()!)));
            }
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "POST",
                body: nil,
                headers: nil,
                formParams: formParams,
                callback: { response, error in
                    var responseObject : DocumentResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func insertWatermarkImage(request : InsertWatermarkImageRequest) throws -> DocumentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentResponse? = nil;
        var responseError : Error? = nil;
        self.insertWatermarkImage(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func insertWatermarkText(request : InsertWatermarkTextRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/watermarks/texts";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "POST",
                body: try ObjectSerializer.serializeBody(value: request.getWatermarkText()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : DocumentResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func insertWatermarkText(request : InsertWatermarkTextRequest) throws -> DocumentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentResponse? = nil;
        var responseError : Error? = nil;
        self.insertWatermarkText(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func loadWebDocument(request : LoadWebDocumentRequest, callback : @escaping (_ response : SaveResponse?, _ error : Error?) -> ()) {
        do {
            let rawPath = "/words/loadWebDocument";
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getData()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : SaveResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: SaveResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func loadWebDocument(request : LoadWebDocumentRequest) throws -> SaveResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : SaveResponse? = nil;
        var responseError : Error? = nil;
        self.loadWebDocument(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func moveFile(request : MoveFileRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/storage/file/move/{srcPath}";
            rawPath = rawPath.replacingOccurrences(of: "{srcPath}", with: try ObjectSerializer.serializeToString(value: request.getSrcPath()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            queryItems.append(URLQueryItem(name: "destPath", value: try ObjectSerializer.serializeToString(value: request.getDestPath())));
            if (request.getSrcStorageName() != nil) {
                queryItems.append(URLQueryItem(name: "srcStorageName", value: try ObjectSerializer.serializeToString(value: request.getSrcStorageName()!)));
            }
            if (request.getDestStorageName() != nil) {
                queryItems.append(URLQueryItem(name: "destStorageName", value: try ObjectSerializer.serializeToString(value: request.getDestStorageName()!)));
            }
            if (request.getVersionId() != nil) {
                queryItems.append(URLQueryItem(name: "versionId", value: try ObjectSerializer.serializeToString(value: request.getVersionId()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }   
    
    public func moveFile(request : MoveFileRequest) throws  {
        let semaphore = DispatchSemaphore(value: 0);
        
        var responseError : Error? = nil;
        self.moveFile(request : request, callback: { error in
            
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        
    }
    
    public func moveFolder(request : MoveFolderRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/storage/folder/move/{srcPath}";
            rawPath = rawPath.replacingOccurrences(of: "{srcPath}", with: try ObjectSerializer.serializeToString(value: request.getSrcPath()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            queryItems.append(URLQueryItem(name: "destPath", value: try ObjectSerializer.serializeToString(value: request.getDestPath())));
            if (request.getSrcStorageName() != nil) {
                queryItems.append(URLQueryItem(name: "srcStorageName", value: try ObjectSerializer.serializeToString(value: request.getSrcStorageName()!)));
            }
            if (request.getDestStorageName() != nil) {
                queryItems.append(URLQueryItem(name: "destStorageName", value: try ObjectSerializer.serializeToString(value: request.getDestStorageName()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }   
    
    public func moveFolder(request : MoveFolderRequest) throws  {
        let semaphore = DispatchSemaphore(value: 0);
        
        var responseError : Error? = nil;
        self.moveFolder(request : request, callback: { error in
            
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        
    }
    
    public func protectDocument(request : ProtectDocumentRequest, callback : @escaping (_ response : ProtectionDataResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/protection";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getProtectionRequest()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : ProtectionDataResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: ProtectionDataResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func protectDocument(request : ProtectDocumentRequest) throws -> ProtectionDataResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ProtectionDataResponse? = nil;
        var responseError : Error? = nil;
        self.protectDocument(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func rejectAllRevisions(request : RejectAllRevisionsRequest, callback : @escaping (_ response : RevisionsModificationResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/revisions/rejectAll";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : RevisionsModificationResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: RevisionsModificationResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func rejectAllRevisions(request : RejectAllRevisionsRequest) throws -> RevisionsModificationResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : RevisionsModificationResponse? = nil;
        var responseError : Error? = nil;
        self.rejectAllRevisions(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func removeRange(request : RemoveRangeRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/range/{rangeStartIdentifier}/{rangeEndIdentifier}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{rangeStartIdentifier}", with: try ObjectSerializer.serializeToString(value: request.getRangeStartIdentifier()));
            rawPath = rawPath.replacingOccurrences(of: "{rangeEndIdentifier}", with: try ObjectSerializer.serializeToString(value: request.getRangeEndIdentifier()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : DocumentResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func removeRange(request : RemoveRangeRequest) throws -> DocumentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentResponse? = nil;
        var responseError : Error? = nil;
        self.removeRange(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func renderDrawingObject(request : RenderDrawingObjectRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/drawingObjects/{index}/render";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            queryItems.append(URLQueryItem(name: "format", value: try ObjectSerializer.serializeToString(value: request.getFormat())));
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getFontsLocation() != nil) {
                queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serializeToString(value: request.getFontsLocation()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(response, error);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func renderDrawingObject(request : RenderDrawingObjectRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.renderDrawingObject(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func renderDrawingObjectWithoutNodePath(request : RenderDrawingObjectWithoutNodePathRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/drawingObjects/{index}/render";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            queryItems.append(URLQueryItem(name: "format", value: try ObjectSerializer.serializeToString(value: request.getFormat())));
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getFontsLocation() != nil) {
                queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serializeToString(value: request.getFontsLocation()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(response, error);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func renderDrawingObjectWithoutNodePath(request : RenderDrawingObjectWithoutNodePathRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.renderDrawingObjectWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func renderMathObject(request : RenderMathObjectRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/OfficeMathObjects/{index}/render";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            queryItems.append(URLQueryItem(name: "format", value: try ObjectSerializer.serializeToString(value: request.getFormat())));
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getFontsLocation() != nil) {
                queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serializeToString(value: request.getFontsLocation()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(response, error);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func renderMathObject(request : RenderMathObjectRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.renderMathObject(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func renderMathObjectWithoutNodePath(request : RenderMathObjectWithoutNodePathRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/OfficeMathObjects/{index}/render";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            queryItems.append(URLQueryItem(name: "format", value: try ObjectSerializer.serializeToString(value: request.getFormat())));
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getFontsLocation() != nil) {
                queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serializeToString(value: request.getFontsLocation()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(response, error);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func renderMathObjectWithoutNodePath(request : RenderMathObjectWithoutNodePathRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.renderMathObjectWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func renderPage(request : RenderPageRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/pages/{pageIndex}/render";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{pageIndex}", with: try ObjectSerializer.serializeToString(value: request.getPageIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            queryItems.append(URLQueryItem(name: "format", value: try ObjectSerializer.serializeToString(value: request.getFormat())));
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getFontsLocation() != nil) {
                queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serializeToString(value: request.getFontsLocation()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(response, error);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func renderPage(request : RenderPageRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.renderPage(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func renderParagraph(request : RenderParagraphRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/paragraphs/{index}/render";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            queryItems.append(URLQueryItem(name: "format", value: try ObjectSerializer.serializeToString(value: request.getFormat())));
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getFontsLocation() != nil) {
                queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serializeToString(value: request.getFontsLocation()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(response, error);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func renderParagraph(request : RenderParagraphRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.renderParagraph(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func renderParagraphWithoutNodePath(request : RenderParagraphWithoutNodePathRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/paragraphs/{index}/render";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            queryItems.append(URLQueryItem(name: "format", value: try ObjectSerializer.serializeToString(value: request.getFormat())));
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getFontsLocation() != nil) {
                queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serializeToString(value: request.getFontsLocation()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(response, error);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func renderParagraphWithoutNodePath(request : RenderParagraphWithoutNodePathRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.renderParagraphWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func renderTable(request : RenderTableRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/tables/{index}/render";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            queryItems.append(URLQueryItem(name: "format", value: try ObjectSerializer.serializeToString(value: request.getFormat())));
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getFontsLocation() != nil) {
                queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serializeToString(value: request.getFontsLocation()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(response, error);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func renderTable(request : RenderTableRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.renderTable(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func renderTableWithoutNodePath(request : RenderTableWithoutNodePathRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/tables/{index}/render";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            queryItems.append(URLQueryItem(name: "format", value: try ObjectSerializer.serializeToString(value: request.getFormat())));
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getFontsLocation() != nil) {
                queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serializeToString(value: request.getFontsLocation()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(response, error);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func renderTableWithoutNodePath(request : RenderTableWithoutNodePathRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.renderTableWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func replaceText(request : ReplaceTextRequest, callback : @escaping (_ response : ReplaceTextResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/replaceText";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getReplaceText()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : ReplaceTextResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: ReplaceTextResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func replaceText(request : ReplaceTextRequest) throws -> ReplaceTextResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ReplaceTextResponse? = nil;
        var responseError : Error? = nil;
        self.replaceText(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func replaceWithText(request : ReplaceWithTextRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/range/{rangeStartIdentifier}/{rangeEndIdentifier}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{rangeStartIdentifier}", with: try ObjectSerializer.serializeToString(value: request.getRangeStartIdentifier()));
            rawPath = rawPath.replacingOccurrences(of: "{rangeEndIdentifier}", with: try ObjectSerializer.serializeToString(value: request.getRangeEndIdentifier()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "POST",
                body: try ObjectSerializer.serializeBody(value: request.getRangeText()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : DocumentResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func replaceWithText(request : ReplaceWithTextRequest) throws -> DocumentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentResponse? = nil;
        var responseError : Error? = nil;
        self.replaceWithText(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func resetCache(request : ResetCacheRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            let rawPath = "/words/fonts/cache";
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            
            
            
            apiInvoker.invoke(
                url: urlPath,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }   
    
    public func resetCache(request : ResetCacheRequest) throws  {
        let semaphore = DispatchSemaphore(value: 0);
        
        var responseError : Error? = nil;
        self.resetCache(request : request, callback: { error in
            
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        
    }
    
    public func saveAs(request : SaveAsRequest, callback : @escaping (_ response : SaveResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/saveAs";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getFontsLocation() != nil) {
                queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serializeToString(value: request.getFontsLocation()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getSaveOptionsData()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : SaveResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: SaveResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func saveAs(request : SaveAsRequest) throws -> SaveResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : SaveResponse? = nil;
        var responseError : Error? = nil;
        self.saveAs(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func saveAsRange(request : SaveAsRangeRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/range/{rangeStartIdentifier}/{rangeEndIdentifier}/SaveAs";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{rangeStartIdentifier}", with: try ObjectSerializer.serializeToString(value: request.getRangeStartIdentifier()));
            rawPath = rawPath.replacingOccurrences(of: "{rangeEndIdentifier}", with: try ObjectSerializer.serializeToString(value: request.getRangeEndIdentifier()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "POST",
                body: try ObjectSerializer.serializeBody(value: request.getDocumentParameters()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : DocumentResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func saveAsRange(request : SaveAsRangeRequest) throws -> DocumentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentResponse? = nil;
        var responseError : Error? = nil;
        self.saveAsRange(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func saveAsTiff(request : SaveAsTiffRequest, callback : @escaping (_ response : SaveResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/saveAs/tiff";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getUseAntiAliasing() != nil) {
                queryItems.append(URLQueryItem(name: "useAntiAliasing", value: try ObjectSerializer.serializeToString(value: request.getUseAntiAliasing()!)));
            }
            if (request.getUseHighQualityRendering() != nil) {
                queryItems.append(URLQueryItem(name: "useHighQualityRendering", value: try ObjectSerializer.serializeToString(value: request.getUseHighQualityRendering()!)));
            }
            if (request.getImageBrightness() != nil) {
                queryItems.append(URLQueryItem(name: "imageBrightness", value: try ObjectSerializer.serializeToString(value: request.getImageBrightness()!)));
            }
            if (request.getImageColorMode() != nil) {
                queryItems.append(URLQueryItem(name: "imageColorMode", value: try ObjectSerializer.serializeToString(value: request.getImageColorMode()!)));
            }
            if (request.getImageContrast() != nil) {
                queryItems.append(URLQueryItem(name: "imageContrast", value: try ObjectSerializer.serializeToString(value: request.getImageContrast()!)));
            }
            if (request.getNumeralFormat() != nil) {
                queryItems.append(URLQueryItem(name: "numeralFormat", value: try ObjectSerializer.serializeToString(value: request.getNumeralFormat()!)));
            }
            if (request.getPageCount() != nil) {
                queryItems.append(URLQueryItem(name: "pageCount", value: try ObjectSerializer.serializeToString(value: request.getPageCount()!)));
            }
            if (request.getPageIndex() != nil) {
                queryItems.append(URLQueryItem(name: "pageIndex", value: try ObjectSerializer.serializeToString(value: request.getPageIndex()!)));
            }
            if (request.getPaperColor() != nil) {
                queryItems.append(URLQueryItem(name: "paperColor", value: try ObjectSerializer.serializeToString(value: request.getPaperColor()!)));
            }
            if (request.getPixelFormat() != nil) {
                queryItems.append(URLQueryItem(name: "pixelFormat", value: try ObjectSerializer.serializeToString(value: request.getPixelFormat()!)));
            }
            if (request.getResolution() != nil) {
                queryItems.append(URLQueryItem(name: "resolution", value: try ObjectSerializer.serializeToString(value: request.getResolution()!)));
            }
            if (request.getScale() != nil) {
                queryItems.append(URLQueryItem(name: "scale", value: try ObjectSerializer.serializeToString(value: request.getScale()!)));
            }
            if (request.getTiffCompression() != nil) {
                queryItems.append(URLQueryItem(name: "tiffCompression", value: try ObjectSerializer.serializeToString(value: request.getTiffCompression()!)));
            }
            if (request.getDmlRenderingMode() != nil) {
                queryItems.append(URLQueryItem(name: "dmlRenderingMode", value: try ObjectSerializer.serializeToString(value: request.getDmlRenderingMode()!)));
            }
            if (request.getDmlEffectsRenderingMode() != nil) {
                queryItems.append(URLQueryItem(name: "dmlEffectsRenderingMode", value: try ObjectSerializer.serializeToString(value: request.getDmlEffectsRenderingMode()!)));
            }
            if (request.getTiffBinarizationMethod() != nil) {
                queryItems.append(URLQueryItem(name: "tiffBinarizationMethod", value: try ObjectSerializer.serializeToString(value: request.getTiffBinarizationMethod()!)));
            }
            if (request.getZipOutput() != nil) {
                queryItems.append(URLQueryItem(name: "zipOutput", value: try ObjectSerializer.serializeToString(value: request.getZipOutput()!)));
            }
            if (request.getFontsLocation() != nil) {
                queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serializeToString(value: request.getFontsLocation()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getSaveOptions()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : SaveResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: SaveResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func saveAsTiff(request : SaveAsTiffRequest) throws -> SaveResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : SaveResponse? = nil;
        var responseError : Error? = nil;
        self.saveAsTiff(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func search(request : SearchRequest, callback : @escaping (_ response : SearchResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/search";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            queryItems.append(URLQueryItem(name: "pattern", value: try ObjectSerializer.serializeToString(value: request.getPattern())));
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : SearchResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: SearchResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func search(request : SearchRequest) throws -> SearchResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : SearchResponse? = nil;
        var responseError : Error? = nil;
        self.search(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func splitDocument(request : SplitDocumentRequest, callback : @escaping (_ response : SplitDocumentResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/split";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getFormat() != nil) {
                queryItems.append(URLQueryItem(name: "format", value: try ObjectSerializer.serializeToString(value: request.getFormat()!)));
            }
            if (request.getFrom() != nil) {
                queryItems.append(URLQueryItem(name: "from", value: try ObjectSerializer.serializeToString(value: request.getFrom()!)));
            }
            if (request.getTo() != nil) {
                queryItems.append(URLQueryItem(name: "to", value: try ObjectSerializer.serializeToString(value: request.getTo()!)));
            }
            if (request.getZipOutput() != nil) {
                queryItems.append(URLQueryItem(name: "zipOutput", value: try ObjectSerializer.serializeToString(value: request.getZipOutput()!)));
            }
            if (request.getFontsLocation() != nil) {
                queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serializeToString(value: request.getFontsLocation()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : SplitDocumentResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: SplitDocumentResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func splitDocument(request : SplitDocumentRequest) throws -> SplitDocumentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : SplitDocumentResponse? = nil;
        var responseError : Error? = nil;
        self.splitDocument(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func unprotectDocument(request : UnprotectDocumentRequest, callback : @escaping (_ response : ProtectionDataResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/protection";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: try ObjectSerializer.serializeBody(value: request.getProtectionRequest()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : ProtectionDataResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: ProtectionDataResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func unprotectDocument(request : UnprotectDocumentRequest) throws -> ProtectionDataResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ProtectionDataResponse? = nil;
        var responseError : Error? = nil;
        self.unprotectDocument(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func updateBookmark(request : UpdateBookmarkRequest, callback : @escaping (_ response : BookmarkResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/bookmarks/{bookmarkName}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{bookmarkName}", with: try ObjectSerializer.serializeToString(value: request.getBookmarkName()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getBookmarkData()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : BookmarkResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: BookmarkResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func updateBookmark(request : UpdateBookmarkRequest) throws -> BookmarkResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : BookmarkResponse? = nil;
        var responseError : Error? = nil;
        self.updateBookmark(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func updateBorder(request : UpdateBorderRequest, callback : @escaping (_ response : BorderResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/borders/{borderType}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));
            rawPath = rawPath.replacingOccurrences(of: "{borderType}", with: try ObjectSerializer.serializeToString(value: request.getBorderType()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getBorderProperties()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : BorderResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: BorderResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func updateBorder(request : UpdateBorderRequest) throws -> BorderResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : BorderResponse? = nil;
        var responseError : Error? = nil;
        self.updateBorder(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func updateComment(request : UpdateCommentRequest, callback : @escaping (_ response : CommentResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/comments/{commentIndex}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{commentIndex}", with: try ObjectSerializer.serializeToString(value: request.getCommentIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getComment()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : CommentResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: CommentResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func updateComment(request : UpdateCommentRequest) throws -> CommentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : CommentResponse? = nil;
        var responseError : Error? = nil;
        self.updateComment(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func updateDrawingObject(request : UpdateDrawingObjectRequest, callback : @escaping (_ response : DrawingObjectResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/drawingObjects/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            var formParams : [RequestFormParam] = [];
            formParams.append(RequestFormParam(name: "drawingObject", body: try ObjectSerializer.serialize(value: request.getDrawingObject())));
            formParams.append(RequestFormParam(name: "imageFile", body: try ObjectSerializer.serialize(value: request.getImageFile())));
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: nil,
                headers: nil,
                formParams: formParams,
                callback: { response, error in
                    var responseObject : DrawingObjectResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: DrawingObjectResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func updateDrawingObject(request : UpdateDrawingObjectRequest) throws -> DrawingObjectResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DrawingObjectResponse? = nil;
        var responseError : Error? = nil;
        self.updateDrawingObject(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func updateDrawingObjectWithoutNodePath(request : UpdateDrawingObjectWithoutNodePathRequest, callback : @escaping (_ response : DrawingObjectResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/drawingObjects/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            var formParams : [RequestFormParam] = [];
            formParams.append(RequestFormParam(name: "drawingObject", body: try ObjectSerializer.serialize(value: request.getDrawingObject())));
            formParams.append(RequestFormParam(name: "imageFile", body: try ObjectSerializer.serialize(value: request.getImageFile())));
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: nil,
                headers: nil,
                formParams: formParams,
                callback: { response, error in
                    var responseObject : DrawingObjectResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: DrawingObjectResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func updateDrawingObjectWithoutNodePath(request : UpdateDrawingObjectWithoutNodePathRequest) throws -> DrawingObjectResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DrawingObjectResponse? = nil;
        var responseError : Error? = nil;
        self.updateDrawingObjectWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func updateField(request : UpdateFieldRequest, callback : @escaping (_ response : FieldResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/fields/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getField()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FieldResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FieldResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func updateField(request : UpdateFieldRequest) throws -> FieldResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FieldResponse? = nil;
        var responseError : Error? = nil;
        self.updateField(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func updateFields(request : UpdateFieldsRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/updateFields";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : DocumentResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func updateFields(request : UpdateFieldsRequest) throws -> DocumentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentResponse? = nil;
        var responseError : Error? = nil;
        self.updateFields(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func updateFootnote(request : UpdateFootnoteRequest, callback : @escaping (_ response : FootnoteResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/footnotes/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getFootnoteDto()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FootnoteResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FootnoteResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func updateFootnote(request : UpdateFootnoteRequest) throws -> FootnoteResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FootnoteResponse? = nil;
        var responseError : Error? = nil;
        self.updateFootnote(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func updateFootnoteWithoutNodePath(request : UpdateFootnoteWithoutNodePathRequest, callback : @escaping (_ response : FootnoteResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/footnotes/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getFootnoteDto()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FootnoteResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FootnoteResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func updateFootnoteWithoutNodePath(request : UpdateFootnoteWithoutNodePathRequest) throws -> FootnoteResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FootnoteResponse? = nil;
        var responseError : Error? = nil;
        self.updateFootnoteWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func updateFormField(request : UpdateFormFieldRequest, callback : @escaping (_ response : FormFieldResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/formfields/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getFormField()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FormFieldResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FormFieldResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func updateFormField(request : UpdateFormFieldRequest) throws -> FormFieldResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FormFieldResponse? = nil;
        var responseError : Error? = nil;
        self.updateFormField(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func updateFormFieldWithoutNodePath(request : UpdateFormFieldWithoutNodePathRequest, callback : @escaping (_ response : FormFieldResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/formfields/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getFormField()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FormFieldResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FormFieldResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func updateFormFieldWithoutNodePath(request : UpdateFormFieldWithoutNodePathRequest) throws -> FormFieldResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FormFieldResponse? = nil;
        var responseError : Error? = nil;
        self.updateFormFieldWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func updateParagraphFormat(request : UpdateParagraphFormatRequest, callback : @escaping (_ response : ParagraphFormatResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/paragraphs/{index}/format";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getDto()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : ParagraphFormatResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: ParagraphFormatResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func updateParagraphFormat(request : UpdateParagraphFormatRequest) throws -> ParagraphFormatResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ParagraphFormatResponse? = nil;
        var responseError : Error? = nil;
        self.updateParagraphFormat(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func updateRun(request : UpdateRunRequest, callback : @escaping (_ response : RunResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{paragraphPath}/runs/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{paragraphPath}", with: try ObjectSerializer.serializeToString(value: request.getParagraphPath()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getRun()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : RunResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: RunResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func updateRun(request : UpdateRunRequest) throws -> RunResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : RunResponse? = nil;
        var responseError : Error? = nil;
        self.updateRun(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func updateRunFont(request : UpdateRunFontRequest, callback : @escaping (_ response : FontResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{paragraphPath}/runs/{index}/font";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{paragraphPath}", with: try ObjectSerializer.serializeToString(value: request.getParagraphPath()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getFontDto()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FontResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FontResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func updateRunFont(request : UpdateRunFontRequest) throws -> FontResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FontResponse? = nil;
        var responseError : Error? = nil;
        self.updateRunFont(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func updateSectionPageSetup(request : UpdateSectionPageSetupRequest, callback : @escaping (_ response : SectionPageSetupResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/sections/{sectionIndex}/pageSetup";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{sectionIndex}", with: try ObjectSerializer.serializeToString(value: request.getSectionIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getPageSetup()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : SectionPageSetupResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: SectionPageSetupResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func updateSectionPageSetup(request : UpdateSectionPageSetupRequest) throws -> SectionPageSetupResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : SectionPageSetupResponse? = nil;
        var responseError : Error? = nil;
        self.updateSectionPageSetup(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func updateTableCellFormat(request : UpdateTableCellFormatRequest, callback : @escaping (_ response : TableCellFormatResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{tableRowPath}/cells/{index}/cellformat";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{tableRowPath}", with: try ObjectSerializer.serializeToString(value: request.getTableRowPath()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getFormat()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : TableCellFormatResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: TableCellFormatResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func updateTableCellFormat(request : UpdateTableCellFormatRequest) throws -> TableCellFormatResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TableCellFormatResponse? = nil;
        var responseError : Error? = nil;
        self.updateTableCellFormat(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func updateTableProperties(request : UpdateTablePropertiesRequest, callback : @escaping (_ response : TablePropertiesResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/tables/{index}/properties";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getProperties()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : TablePropertiesResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: TablePropertiesResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func updateTableProperties(request : UpdateTablePropertiesRequest) throws -> TablePropertiesResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TablePropertiesResponse? = nil;
        var responseError : Error? = nil;
        self.updateTableProperties(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func updateTablePropertiesWithoutNodePath(request : UpdateTablePropertiesWithoutNodePathRequest, callback : @escaping (_ response : TablePropertiesResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/tables/{index}/properties";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getProperties()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : TablePropertiesResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: TablePropertiesResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func updateTablePropertiesWithoutNodePath(request : UpdateTablePropertiesWithoutNodePathRequest) throws -> TablePropertiesResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TablePropertiesResponse? = nil;
        var responseError : Error? = nil;
        self.updateTablePropertiesWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func updateTableRowFormat(request : UpdateTableRowFormatRequest, callback : @escaping (_ response : TableRowFormatResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{tablePath}/rows/{index}/rowformat";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));
            rawPath = rawPath.replacingOccurrences(of: "{tablePath}", with: try ObjectSerializer.serializeToString(value: request.getTablePath()));
            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFolder() != nil) {
                queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
            }
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }
            if (request.getLoadEncoding() != nil) {
                queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
            }
            if (request.getPassword() != nil) {
                queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
            }
            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }
            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }
            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getFormat()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : TableRowFormatResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: TableRowFormatResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func updateTableRowFormat(request : UpdateTableRowFormatRequest) throws -> TableRowFormatResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TableRowFormatResponse? = nil;
        var responseError : Error? = nil;
        self.updateTableRowFormat(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
    
    public func uploadFile(request : UploadFileRequest, callback : @escaping (_ response : FilesUploadResult?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/storage/file/{path}";
            rawPath = rawPath.replacingOccurrences(of: "{path}", with: try ObjectSerializer.serializeToString(value: request.getPath()));
            let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
            
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getStorageName() != nil) {
                queryItems.append(URLQueryItem(name: "storageName", value: try ObjectSerializer.serializeToString(value: request.getStorageName()!)));
            }
            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            
            
            var formParams : [RequestFormParam] = [];
            formParams.append(RequestFormParam(name: "fileContent", body: try ObjectSerializer.serialize(value: request.getFileContent())));
            
            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: nil,
                headers: nil,
                formParams: formParams,
                callback: { response, error in
                    var responseObject : FilesUploadResult? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FilesUploadResult.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }   
    
    public func uploadFile(request : UploadFileRequest) throws -> FilesUploadResult {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FilesUploadResult? = nil;
        var responseError : Error? = nil;
        self.uploadFile(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });
                
        _ = semaphore.wait();
        
        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
}

