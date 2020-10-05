/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ClassifyRequest.swift">
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

import Foundation

// Request model for classify operation.
public class ClassifyRequest {
    private let text : String;
    private let bestClassesCount : String?;

    private enum CodingKeys: String, CodingKey {
        case text;
        case bestClassesCount;
        case invalidCodingKey;
    }

    // Initializes a new instance of the ClassifyRequest class.
    public init(text : String, bestClassesCount : String? = nil) {
        self.text = text;
        self.bestClassesCount = bestClassesCount;
    }

    // Creates the api request data
    public createApiRequest() throws -> ApiRequest {
         var rawPath = "/words/classify";
         rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

         let urlPath = (try self.configuration.getApiRootUrl()).appendingPathComponent(rawPath);
         var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
         var queryItems : [URLQueryItem] = [];
         if (request.getBestClassesCount() != nil) {
             queryItems.append(URLQueryItem(name: "bestClassesCount", value: try ObjectSerializer.serializeToString(value: request.getBestClassesCount()!)));
         }

         if (queryItems.count > 0) {
             urlBuilder.queryItems = queryItems;
         }

         var result = ApiRequest(url: urlBuilder.url!, method: "PUT");
         result.setBody(body: try ObjectSerializer.serializeBody(value: request.getText()), contentType: "application/json");
         return result;
    }

    // Text to classify.
    public func getText() -> String {
        return self.text;
    }

    // Number of the best classes to return.
    public func getBestClassesCount() -> String? {
        return self.bestClassesCount;
    }
}
