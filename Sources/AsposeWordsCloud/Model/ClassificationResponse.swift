/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ClassificationResponse.swift">
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

// This response should be returned by the service when handling: PUT https://api.aspose.cloud/v4.0/words/classify.
public class ClassificationResponse : WordsResponse {
    
    // Field of bestClassName. Gets or sets best class name.      
    private var bestClassName : String?;
    
    // Field of bestClassProbability. Gets or sets best class probability.      
    private var bestClassProbability : Double?;
    
    // Field of bestResults. Gets or sets array of best classes results.      
    private var bestResults : [ClassificationResult]?;
        
    private enum CodingKeys: String, CodingKey {
        case bestClassName;
        case bestClassProbability;
        case bestResults;
        case invalidCodingKey;
    }
        
    public override init() {
        super.init();
    }
    
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.bestClassName = try container.decodeIfPresent(String.self, forKey: .bestClassName);
        self.bestClassProbability = try container.decodeIfPresent(Double.self, forKey: .bestClassProbability);
        self.bestResults = try container.decodeIfPresent([ClassificationResult].self, forKey: .bestResults);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.bestClassName != nil) {
            try container.encode(self.bestClassName, forKey: .bestClassName);
        }
        if (self.bestClassProbability != nil) {
            try container.encode(self.bestClassProbability, forKey: .bestClassProbability);
        }
        if (self.bestResults != nil) {
            try container.encode(self.bestResults, forKey: .bestResults);
        }
    }
    
    // Sets bestClassName. Gets or sets best class name.  
    public func setBestClassName(bestClassName : String?) {
        self.bestClassName = bestClassName;
    }
    
    // Gets bestClassName. Gets or sets best class name.  
    public func getBestClassName() -> String? {
        return self.bestClassName;
    }
    
    // Sets bestClassProbability. Gets or sets best class probability.  
    public func setBestClassProbability(bestClassProbability : Double?) {
        self.bestClassProbability = bestClassProbability;
    }
    
    // Gets bestClassProbability. Gets or sets best class probability.  
    public func getBestClassProbability() -> Double? {
        return self.bestClassProbability;
    }
    
    // Sets bestResults. Gets or sets array of best classes results.  
    public func setBestResults(bestResults : [ClassificationResult]?) {
        self.bestResults = bestResults;
    }
    
    // Gets bestResults. Gets or sets array of best classes results.  
    public func getBestResults() -> [ClassificationResult]? {
        return self.bestResults;
    }
}
