![](https://img.shields.io/badge/api-v4.0-lightgrey) ![GitHub release (latest by date)](https://img.shields.io/github/v/release/aspose-words-cloud/aspose-words-cloud-swift) [![GitHub license](https://img.shields.io/github/license/aspose-words-cloud/aspose-words-cloud-swift)](https://github.com/aspose-words-cloud/aspose-words-cloud-swift)

# Go SDK for Word Documents Processing in the Cloud
[Aspose.Wors Cloud SDK for Go](https://products.aspose.cloud/words/go)  DK allows you to work with Aspose.Words Cloud REST APIs in your Swift applications quickly and easily, with zero initial cost.
Feel free to explore the [Developer's Guide](https://docs.aspose.cloud/display/wordscloud/Developer+Guide) & [API Reference](https://apireference.aspose.cloud/words/) to know all about Aspose.Words Cloud API. 

## Document Processing Services in REST

- Convert between various document-related formats, including Word to PDF & vice versa.
- Mail merge and report generation in the Cloud.
- Split & merge Word documents.
- Access Word document metadata.
- Find and replace text.
- Add & remove watermarks and protection.
- Read & write access to Document Object Model.
- Get document information in JSON or XML representation.
- Convert an encrypted PDF document into Word document format.
- [Fetch statistical data](https://docs.aspose.cloud/display/wordscloud/Get+Document+Statistics) of a document.
- [Remove all macros](https://docs.aspose.cloud/display/wordscloud/Remove+all+Macros+from+Document) contained in a specific document.
- [Convert a document to desired file format](https://docs.aspose.cloud/display/wordscloud/Convert+Document+to+Destination+Format+with+Detailed+Settings+and+Save+Result+to+Storage) along with detailed settings.

Check out the [Developer's Guide](https://docs.aspose.cloud/display/wordscloud/Developer+Guide) to know more about Aspose Words Cloud REST API.

## Read & Write Document Formats

**Microsoft Word:** DOC, DOCX, RTF, DOT, DOTX, DOTM, FlatOPC (XML)
**OpenOffice:** ODT, OTT
**WordprocessingML:** XML
**Web:** HTML, MHTML, HtmlFixed
**Text:** TXT
**Fixed Layout:** PDF

## Save Document As

**Fixed Layout:** PDF/A, XPS, OpenXPS, PS
**Images:** JPEG, PNG, BMP, SVG, TIFF, EMF
**Others:** PCL

## Enhancements in Version 20.11

- In configuration json file appSid / appKey has been replaced to clientId / clientSecret.
- In Words API initialization methods clientId parameter precedes clientSecret parameter.
- Fixed the problem with serialization of object properties (it was a souce of NPE).

## Enhancements in Version 20.10

- Internal API changes.


## Enhancements in Version 20.9

- Added Batch API feature


## Enhancements in Version 20.8

- Added new api method (PUT '/words/{name}/compatibility/optimize') which is allows to optimize the document contents as well as default Aspose.Words behavior to a particular versions of MS Word
- Added 'ApplyBaseDocumentHeadersAndFootersToAppendingDocuments' option to 'DocumentEntryList' for AppendDocument API
- WithoutNodePath methods have been removed, pass null values instead


## Enhancements in Version 20.7

- Added 'Markdown' save format
- Added endpoint to update paragraph format without node path (PUT '/words/{name}/paragraphs/{index}/format')
- Fix url parameters encoding issue.

## How to use the SDK?
The complete source code is available in this repository folder. You can either directly use it in your project via source code or add this repository as dependency (recommended). For more details, please visit our [documentation website](https://docs.aspose.cloud/display/wordscloud/Available+SDKs).

### Prerequisites
To use Aspose Words Cloud SDK for Swift you need to register an account with [Aspose Cloud](https://www.aspose.cloud/) and lookup/create App Key and SID at [Cloud Dashboard](https://dashboard.aspose.cloud/#/apps). There is free quota available. For more details, see [Aspose Cloud Pricing](https://purchase.aspose.cloud/pricing).

## Dependencies
- Swift 4.2+
- referenced packages (see [here](Package.swift) for more details)

## Installation & Usage

### Swift Package Manager

Add link to this repository as dependency to your Package.swift:

```swift

dependencies: [
    // Dependencies declare other packages that this package depends on.
    .package(url: "https://github.com/aspose-words-cloud/aspose-words-cloud-swift", from: "20.11"),
],
targets: [
    // Targets are the basic building blocks of a package. A target can define a module or a test suite.
    // Targets can depend on other targets in this package, and on products in packages which this package depends on.
    .target(
        name: "YourTargetName",
        dependencies: ["AsposeWordsCloud"]
    ),
]

```

### Cocoapods

Add link to git repository as dependency to your Podfile:

```ruby
pod 'AsposeWordsCloud', :git => 'https://github.com/aspose-words-cloud/aspose-words-cloud-swift.git', :tag => '20.11'
```

## Getting Started

```swift

import Foundation;
import AsposeWordsCloud;

let wordsApi = WordsAPI(clientId: "YOUR_APP_SID", clientSecret: "YOUR_APP_KEY");
let fileName = "TestCreateDocument.doc";
let request = CreateDocumentRequest(fileName: fileName);
let response = try wordsApi.createDocument(request: request);

```

[Test](Tests/AsposeWordsCloudTests) contain various examples of using the SDK.
Please put your credentials into "Settings/servercreds.json" for run tests.

## Aspose.Words Cloud SDKs in Popular Languages

| .NET | Java | PHP | Python | Ruby | Node.js | Android | Swift|Dart|Go|
|---|---|---|---|---|---|---|--|--|--|
| [GitHub](https://github.com/aspose-words-cloud/aspose-words-cloud-dotnet) | [GitHub](https://github.com/aspose-words-cloud/aspose-words-cloud-java) | [GitHub](https://github.com/aspose-words-cloud/aspose-words-cloud-php) | [GitHub](https://github.com/aspose-words-cloud/aspose-words-cloud-python) | [GitHub](https://github.com/aspose-words-cloud/aspose-words-cloud-ruby)  | [GitHub](https://github.com/aspose-words-cloud/aspose-words-cloud-node) | [GitHub](https://github.com/aspose-words-cloud/aspose-words-cloud-android) | [GitHub](https://github.com/aspose-words-cloud/aspose-words-cloud-swift)|[GitHub](https://github.com/aspose-words-cloud/aspose-words-cloud-dart) |[GitHub](https://github.com/aspose-words-cloud/aspose-words-cloud-go) |
| [NuGet](https://www.nuget.org/packages/Aspose.Words-Cloud/) | [Maven](https://repository.aspose.cloud/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words-cloud) | [Composer](https://packagist.org/packages/aspose-cloud/aspose-words-cloud) | [PIP](https://pypi.org/project/aspose.words-cloud/) | [GEM](https://rubygems.org/gems/aspose_words_cloud)  | [NPM](https://www.npmjs.com/package/asposewordscloud) | [Maven](https://repository.aspose.cloud/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words-cloud) | [Cocoapods](https://cocoapods.org/pods/AsposeWordsCloud)|[Pub.Dev](https://pub.dev/packages/aspose_words_cloud) | [Go.Dev](https://pkg.go.dev/github.com/aspose-words-cloud/aspose-words-cloud-go/) | 

[Product Page](https://products.aspose.cloud/words/go) | [Documentation](https://docs.aspose.cloud/display/wordscloud/Home) | [API Reference](https://apireference.aspose.cloud/words/) | [Code Samples](https://github.com/aspose-words-cloud/aspose-words-cloud-go) | [Blog](https://blog.aspose.cloud/category/words/) | [Free Support](https://forum.aspose.cloud/c/words) | [Free Trial](https://dashboard.aspose.cloud/#/apps)
