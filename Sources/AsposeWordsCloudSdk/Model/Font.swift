/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="Font.swift">
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

public class Font : LinkElement {
    // Gets or sets the locale independent style identifier of the character style applied to this formatting.
    public enum StyleIdentifier
    { 
        // Enum value "normal"
        case normal
        
        // Enum value "heading1"
        case heading1
        
        // Enum value "heading2"
        case heading2
        
        // Enum value "heading3"
        case heading3
        
        // Enum value "heading4"
        case heading4
        
        // Enum value "heading5"
        case heading5
        
        // Enum value "heading6"
        case heading6
        
        // Enum value "heading7"
        case heading7
        
        // Enum value "heading8"
        case heading8
        
        // Enum value "heading9"
        case heading9
        
        // Enum value "index1"
        case index1
        
        // Enum value "index2"
        case index2
        
        // Enum value "index3"
        case index3
        
        // Enum value "index4"
        case index4
        
        // Enum value "index5"
        case index5
        
        // Enum value "index6"
        case index6
        
        // Enum value "index7"
        case index7
        
        // Enum value "index8"
        case index8
        
        // Enum value "index9"
        case index9
        
        // Enum value "toc1"
        case toc1
        
        // Enum value "toc2"
        case toc2
        
        // Enum value "toc3"
        case toc3
        
        // Enum value "toc4"
        case toc4
        
        // Enum value "toc5"
        case toc5
        
        // Enum value "toc6"
        case toc6
        
        // Enum value "toc7"
        case toc7
        
        // Enum value "toc8"
        case toc8
        
        // Enum value "toc9"
        case toc9
        
        // Enum value "normalIndent"
        case normalIndent
        
        // Enum value "footnoteText"
        case footnoteText
        
        // Enum value "commentText"
        case commentText
        
        // Enum value "header"
        case header
        
        // Enum value "footer"
        case footer
        
        // Enum value "indexHeading"
        case indexHeading
        
        // Enum value "caption"
        case caption
        
        // Enum value "tableOfFigures"
        case tableOfFigures
        
        // Enum value "envelopeAddress"
        case envelopeAddress
        
        // Enum value "envelopeReturn"
        case envelopeReturn
        
        // Enum value "footnoteReference"
        case footnoteReference
        
        // Enum value "commentReference"
        case commentReference
        
        // Enum value "lineNumber"
        case lineNumber
        
        // Enum value "pageNumber"
        case pageNumber
        
        // Enum value "endnoteReference"
        case endnoteReference
        
        // Enum value "endnoteText"
        case endnoteText
        
        // Enum value "tableOfAuthorities"
        case tableOfAuthorities
        
        // Enum value "macro"
        case macro
        
        // Enum value "toaHeading"
        case toaHeading
        
        // Enum value "list"
        case list
        
        // Enum value "listBullet"
        case listBullet
        
        // Enum value "listNumber"
        case listNumber
        
        // Enum value "list2"
        case list2
        
        // Enum value "list3"
        case list3
        
        // Enum value "list4"
        case list4
        
        // Enum value "list5"
        case list5
        
        // Enum value "listBullet2"
        case listBullet2
        
        // Enum value "listBullet3"
        case listBullet3
        
        // Enum value "listBullet4"
        case listBullet4
        
        // Enum value "listBullet5"
        case listBullet5
        
        // Enum value "listNumber2"
        case listNumber2
        
        // Enum value "listNumber3"
        case listNumber3
        
        // Enum value "listNumber4"
        case listNumber4
        
        // Enum value "listNumber5"
        case listNumber5
        
        // Enum value "title"
        case title
        
        // Enum value "closing"
        case closing
        
        // Enum value "signature"
        case signature
        
        // Enum value "defaultParagraphFont"
        case defaultParagraphFont
        
        // Enum value "bodyText"
        case bodyText
        
        // Enum value "bodyTextInd"
        case bodyTextInd
        
        // Enum value "listContinue"
        case listContinue
        
        // Enum value "listContinue2"
        case listContinue2
        
        // Enum value "listContinue3"
        case listContinue3
        
        // Enum value "listContinue4"
        case listContinue4
        
        // Enum value "listContinue5"
        case listContinue5
        
        // Enum value "messageHeader"
        case messageHeader
        
        // Enum value "subtitle"
        case subtitle
        
        // Enum value "salutation"
        case salutation
        
        // Enum value "date"
        case date
        
        // Enum value "bodyText1I"
        case bodyText1I
        
        // Enum value "bodyText1I2"
        case bodyText1I2
        
        // Enum value "noteHeading"
        case noteHeading
        
        // Enum value "bodyText2"
        case bodyText2
        
        // Enum value "bodyText3"
        case bodyText3
        
        // Enum value "bodyTextInd2"
        case bodyTextInd2
        
        // Enum value "bodyTextInd3"
        case bodyTextInd3
        
        // Enum value "blockText"
        case blockText
        
        // Enum value "hyperlink"
        case hyperlink
        
        // Enum value "followedHyperlink"
        case followedHyperlink
        
        // Enum value "strong"
        case strong
        
        // Enum value "emphasis"
        case emphasis
        
        // Enum value "documentMap"
        case documentMap
        
        // Enum value "plainText"
        case plainText
        
        // Enum value "emailSignature"
        case emailSignature
        
        // Enum value "htmlTopOfForm"
        case htmlTopOfForm
        
        // Enum value "htmlBottomOfForm"
        case htmlBottomOfForm
        
        // Enum value "normalWeb"
        case normalWeb
        
        // Enum value "htmlAcronym"
        case htmlAcronym
        
        // Enum value "htmlAddress"
        case htmlAddress
        
        // Enum value "htmlCite"
        case htmlCite
        
        // Enum value "htmlCode"
        case htmlCode
        
        // Enum value "htmlDefinition"
        case htmlDefinition
        
        // Enum value "htmlKeyboard"
        case htmlKeyboard
        
        // Enum value "htmlPreformatted"
        case htmlPreformatted
        
        // Enum value "htmlSample"
        case htmlSample
        
        // Enum value "htmlTypewriter"
        case htmlTypewriter
        
        // Enum value "htmlVariable"
        case htmlVariable
        
        // Enum value "tableNormal"
        case tableNormal
        
        // Enum value "commentSubject"
        case commentSubject
        
        // Enum value "noList"
        case noList
        
        // Enum value "outlineList1"
        case outlineList1
        
        // Enum value "outlineList2"
        case outlineList2
        
        // Enum value "outlineList3"
        case outlineList3
        
        // Enum value "tableSimple1"
        case tableSimple1
        
        // Enum value "tableSimple2"
        case tableSimple2
        
        // Enum value "tableSimple3"
        case tableSimple3
        
        // Enum value "tableClassic1"
        case tableClassic1
        
        // Enum value "tableClassic2"
        case tableClassic2
        
        // Enum value "tableClassic3"
        case tableClassic3
        
        // Enum value "tableClassic4"
        case tableClassic4
        
        // Enum value "tableColorful1"
        case tableColorful1
        
        // Enum value "tableColorful2"
        case tableColorful2
        
        // Enum value "tableColorful3"
        case tableColorful3
        
        // Enum value "tableColumns1"
        case tableColumns1
        
        // Enum value "tableColumns2"
        case tableColumns2
        
        // Enum value "tableColumns3"
        case tableColumns3
        
        // Enum value "tableColumns4"
        case tableColumns4
        
        // Enum value "tableColumns5"
        case tableColumns5
        
        // Enum value "tableGrid1"
        case tableGrid1
        
        // Enum value "tableGrid2"
        case tableGrid2
        
        // Enum value "tableGrid3"
        case tableGrid3
        
        // Enum value "tableGrid4"
        case tableGrid4
        
        // Enum value "tableGrid5"
        case tableGrid5
        
        // Enum value "tableGrid6"
        case tableGrid6
        
        // Enum value "tableGrid7"
        case tableGrid7
        
        // Enum value "tableGrid8"
        case tableGrid8
        
        // Enum value "tableList1"
        case tableList1
        
        // Enum value "tableList2"
        case tableList2
        
        // Enum value "tableList3"
        case tableList3
        
        // Enum value "tableList4"
        case tableList4
        
        // Enum value "tableList5"
        case tableList5
        
        // Enum value "tableList6"
        case tableList6
        
        // Enum value "tableList7"
        case tableList7
        
        // Enum value "tableList8"
        case tableList8
        
        // Enum value "table3DEffects1"
        case table3DEffects1
        
        // Enum value "table3DEffects2"
        case table3DEffects2
        
        // Enum value "table3DEffects3"
        case table3DEffects3
        
        // Enum value "tableContemporary"
        case tableContemporary
        
        // Enum value "tableElegant"
        case tableElegant
        
        // Enum value "tableProfessional"
        case tableProfessional
        
        // Enum value "tableSubtle1"
        case tableSubtle1
        
        // Enum value "tableSubtle2"
        case tableSubtle2
        
        // Enum value "tableWeb1"
        case tableWeb1
        
        // Enum value "tableWeb2"
        case tableWeb2
        
        // Enum value "tableWeb3"
        case tableWeb3
        
        // Enum value "balloonText"
        case balloonText
        
        // Enum value "tableGrid"
        case tableGrid
        
        // Enum value "tableTheme"
        case tableTheme
        
        // Enum value "placeholderText"
        case placeholderText
        
        // Enum value "noSpacing"
        case noSpacing
        
        // Enum value "lightShading"
        case lightShading
        
        // Enum value "lightList"
        case lightList
        
        // Enum value "lightGrid"
        case lightGrid
        
        // Enum value "mediumShading1"
        case mediumShading1
        
        // Enum value "mediumShading2"
        case mediumShading2
        
        // Enum value "mediumList1"
        case mediumList1
        
        // Enum value "mediumList2"
        case mediumList2
        
        // Enum value "mediumGrid1"
        case mediumGrid1
        
        // Enum value "mediumGrid2"
        case mediumGrid2
        
        // Enum value "mediumGrid3"
        case mediumGrid3
        
        // Enum value "darkList"
        case darkList
        
        // Enum value "colorfulShading"
        case colorfulShading
        
        // Enum value "colorfulList"
        case colorfulList
        
        // Enum value "colorfulGrid"
        case colorfulGrid
        
        // Enum value "lightShadingAccent1"
        case lightShadingAccent1
        
        // Enum value "lightListAccent1"
        case lightListAccent1
        
        // Enum value "lightGridAccent1"
        case lightGridAccent1
        
        // Enum value "mediumShading1Accent1"
        case mediumShading1Accent1
        
        // Enum value "mediumShading2Accent1"
        case mediumShading2Accent1
        
        // Enum value "mediumList1Accent1"
        case mediumList1Accent1
        
        // Enum value "revision"
        case revision
        
        // Enum value "listParagraph"
        case listParagraph
        
        // Enum value "quote"
        case quote
        
        // Enum value "intenseQuote"
        case intenseQuote
        
        // Enum value "mediumList2Accent1"
        case mediumList2Accent1
        
        // Enum value "mediumGrid1Accent1"
        case mediumGrid1Accent1
        
        // Enum value "mediumGrid2Accent1"
        case mediumGrid2Accent1
        
        // Enum value "mediumGrid3Accent1"
        case mediumGrid3Accent1
        
        // Enum value "darkListAccent1"
        case darkListAccent1
        
        // Enum value "colorfulShadingAccent1"
        case colorfulShadingAccent1
        
        // Enum value "colorfulListAccent1"
        case colorfulListAccent1
        
        // Enum value "colorfulGridAccent1"
        case colorfulGridAccent1
        
        // Enum value "lightShadingAccent2"
        case lightShadingAccent2
        
        // Enum value "lightListAccent2"
        case lightListAccent2
        
        // Enum value "lightGridAccent2"
        case lightGridAccent2
        
        // Enum value "mediumShading1Accent2"
        case mediumShading1Accent2
        
        // Enum value "mediumShading2Accent2"
        case mediumShading2Accent2
        
        // Enum value "mediumList1Accent2"
        case mediumList1Accent2
        
        // Enum value "mediumList2Accent2"
        case mediumList2Accent2
        
        // Enum value "mediumGrid1Accent2"
        case mediumGrid1Accent2
        
        // Enum value "mediumGrid2Accent2"
        case mediumGrid2Accent2
        
        // Enum value "mediumGrid3Accent2"
        case mediumGrid3Accent2
        
        // Enum value "darkListAccent2"
        case darkListAccent2
        
        // Enum value "colorfulShadingAccent2"
        case colorfulShadingAccent2
        
        // Enum value "colorfulListAccent2"
        case colorfulListAccent2
        
        // Enum value "colorfulGridAccent2"
        case colorfulGridAccent2
        
        // Enum value "lightShadingAccent3"
        case lightShadingAccent3
        
        // Enum value "lightListAccent3"
        case lightListAccent3
        
        // Enum value "lightGridAccent3"
        case lightGridAccent3
        
        // Enum value "mediumShading1Accent3"
        case mediumShading1Accent3
        
        // Enum value "mediumShading2Accent3"
        case mediumShading2Accent3
        
        // Enum value "mediumList1Accent3"
        case mediumList1Accent3
        
        // Enum value "mediumList2Accent3"
        case mediumList2Accent3
        
        // Enum value "mediumGrid1Accent3"
        case mediumGrid1Accent3
        
        // Enum value "mediumGrid2Accent3"
        case mediumGrid2Accent3
        
        // Enum value "mediumGrid3Accent3"
        case mediumGrid3Accent3
        
        // Enum value "darkListAccent3"
        case darkListAccent3
        
        // Enum value "colorfulShadingAccent3"
        case colorfulShadingAccent3
        
        // Enum value "colorfulListAccent3"
        case colorfulListAccent3
        
        // Enum value "colorfulGridAccent3"
        case colorfulGridAccent3
        
        // Enum value "lightShadingAccent4"
        case lightShadingAccent4
        
        // Enum value "lightListAccent4"
        case lightListAccent4
        
        // Enum value "lightGridAccent4"
        case lightGridAccent4
        
        // Enum value "mediumShading1Accent4"
        case mediumShading1Accent4
        
        // Enum value "mediumShading2Accent4"
        case mediumShading2Accent4
        
        // Enum value "mediumList1Accent4"
        case mediumList1Accent4
        
        // Enum value "mediumList2Accent4"
        case mediumList2Accent4
        
        // Enum value "mediumGrid1Accent4"
        case mediumGrid1Accent4
        
        // Enum value "mediumGrid2Accent4"
        case mediumGrid2Accent4
        
        // Enum value "mediumGrid3Accent4"
        case mediumGrid3Accent4
        
        // Enum value "darkListAccent4"
        case darkListAccent4
        
        // Enum value "colorfulShadingAccent4"
        case colorfulShadingAccent4
        
        // Enum value "colorfulListAccent4"
        case colorfulListAccent4
        
        // Enum value "colorfulGridAccent4"
        case colorfulGridAccent4
        
        // Enum value "lightShadingAccent5"
        case lightShadingAccent5
        
        // Enum value "lightListAccent5"
        case lightListAccent5
        
        // Enum value "lightGridAccent5"
        case lightGridAccent5
        
        // Enum value "mediumShading1Accent5"
        case mediumShading1Accent5
        
        // Enum value "mediumShading2Accent5"
        case mediumShading2Accent5
        
        // Enum value "mediumList1Accent5"
        case mediumList1Accent5
        
        // Enum value "mediumList2Accent5"
        case mediumList2Accent5
        
        // Enum value "mediumGrid1Accent5"
        case mediumGrid1Accent5
        
        // Enum value "mediumGrid2Accent5"
        case mediumGrid2Accent5
        
        // Enum value "mediumGrid3Accent5"
        case mediumGrid3Accent5
        
        // Enum value "darkListAccent5"
        case darkListAccent5
        
        // Enum value "colorfulShadingAccent5"
        case colorfulShadingAccent5
        
        // Enum value "colorfulListAccent5"
        case colorfulListAccent5
        
        // Enum value "colorfulGridAccent5"
        case colorfulGridAccent5
        
        // Enum value "lightShadingAccent6"
        case lightShadingAccent6
        
        // Enum value "lightListAccent6"
        case lightListAccent6
        
        // Enum value "lightGridAccent6"
        case lightGridAccent6
        
        // Enum value "mediumShading1Accent6"
        case mediumShading1Accent6
        
        // Enum value "mediumShading2Accent6"
        case mediumShading2Accent6
        
        // Enum value "mediumList1Accent6"
        case mediumList1Accent6
        
        // Enum value "mediumList2Accent6"
        case mediumList2Accent6
        
        // Enum value "mediumGrid1Accent6"
        case mediumGrid1Accent6
        
        // Enum value "mediumGrid2Accent6"
        case mediumGrid2Accent6
        
        // Enum value "mediumGrid3Accent6"
        case mediumGrid3Accent6
        
        // Enum value "darkListAccent6"
        case darkListAccent6
        
        // Enum value "colorfulShadingAccent6"
        case colorfulShadingAccent6
        
        // Enum value "colorfulListAccent6"
        case colorfulListAccent6
        
        // Enum value "colorfulGridAccent6"
        case colorfulGridAccent6
        
        // Enum value "subtleEmphasis"
        case subtleEmphasis
        
        // Enum value "intenseEmphasis"
        case intenseEmphasis
        
        // Enum value "subtleReference"
        case subtleReference
        
        // Enum value "intenseReference"
        case intenseReference
        
        // Enum value "bookTitle"
        case bookTitle
        
        // Enum value "bibliography"
        case bibliography
        
        // Enum value "tocHeading"
        case tocHeading
        
        // Enum value "plainTable1"
        case plainTable1
        
        // Enum value "plainTable2"
        case plainTable2
        
        // Enum value "plainTable3"
        case plainTable3
        
        // Enum value "plainTable4"
        case plainTable4
        
        // Enum value "plainTable5"
        case plainTable5
        
        // Enum value "tableGridLight"
        case tableGridLight
        
        // Enum value "gridTable1Light"
        case gridTable1Light
        
        // Enum value "gridTable2"
        case gridTable2
        
        // Enum value "gridTable3"
        case gridTable3
        
        // Enum value "gridTable4"
        case gridTable4
        
        // Enum value "gridTable5Dark"
        case gridTable5Dark
        
        // Enum value "gridTable6Colorful"
        case gridTable6Colorful
        
        // Enum value "gridTable7Colorful"
        case gridTable7Colorful
        
        // Enum value "gridTable1LightAccent1"
        case gridTable1LightAccent1
        
        // Enum value "gridTable2Accent1"
        case gridTable2Accent1
        
        // Enum value "gridTable3Accent1"
        case gridTable3Accent1
        
        // Enum value "gridTable4Accent1"
        case gridTable4Accent1
        
        // Enum value "gridTable5DarkAccent1"
        case gridTable5DarkAccent1
        
        // Enum value "gridTable6ColorfulAccent1"
        case gridTable6ColorfulAccent1
        
        // Enum value "gridTable7ColorfulAccent1"
        case gridTable7ColorfulAccent1
        
        // Enum value "gridTable1LightAccent2"
        case gridTable1LightAccent2
        
        // Enum value "gridTable2Accent2"
        case gridTable2Accent2
        
        // Enum value "gridTable3Accent2"
        case gridTable3Accent2
        
        // Enum value "gridTable4Accent2"
        case gridTable4Accent2
        
        // Enum value "gridTable5DarkAccent2"
        case gridTable5DarkAccent2
        
        // Enum value "gridTable6ColorfulAccent2"
        case gridTable6ColorfulAccent2
        
        // Enum value "gridTable7ColorfulAccent2"
        case gridTable7ColorfulAccent2
        
        // Enum value "gridTable1LightAccent3"
        case gridTable1LightAccent3
        
        // Enum value "gridTable2Accent3"
        case gridTable2Accent3
        
        // Enum value "gridTable3Accent3"
        case gridTable3Accent3
        
        // Enum value "gridTable4Accent3"
        case gridTable4Accent3
        
        // Enum value "gridTable5DarkAccent3"
        case gridTable5DarkAccent3
        
        // Enum value "gridTable6ColorfulAccent3"
        case gridTable6ColorfulAccent3
        
        // Enum value "gridTable7ColorfulAccent3"
        case gridTable7ColorfulAccent3
        
        // Enum value "gridTable1LightAccent4"
        case gridTable1LightAccent4
        
        // Enum value "gridTable2Accent4"
        case gridTable2Accent4
        
        // Enum value "gridTable3Accent4"
        case gridTable3Accent4
        
        // Enum value "gridTable4Accent4"
        case gridTable4Accent4
        
        // Enum value "gridTable5DarkAccent4"
        case gridTable5DarkAccent4
        
        // Enum value "gridTable6ColorfulAccent4"
        case gridTable6ColorfulAccent4
        
        // Enum value "gridTable7ColorfulAccent4"
        case gridTable7ColorfulAccent4
        
        // Enum value "gridTable1LightAccent5"
        case gridTable1LightAccent5
        
        // Enum value "gridTable2Accent5"
        case gridTable2Accent5
        
        // Enum value "gridTable3Accent5"
        case gridTable3Accent5
        
        // Enum value "gridTable4Accent5"
        case gridTable4Accent5
        
        // Enum value "gridTable5DarkAccent5"
        case gridTable5DarkAccent5
        
        // Enum value "gridTable6ColorfulAccent5"
        case gridTable6ColorfulAccent5
        
        // Enum value "gridTable7ColorfulAccent5"
        case gridTable7ColorfulAccent5
        
        // Enum value "gridTable1LightAccent6"
        case gridTable1LightAccent6
        
        // Enum value "gridTable2Accent6"
        case gridTable2Accent6
        
        // Enum value "gridTable3Accent6"
        case gridTable3Accent6
        
        // Enum value "gridTable4Accent6"
        case gridTable4Accent6
        
        // Enum value "gridTable5DarkAccent6"
        case gridTable5DarkAccent6
        
        // Enum value "gridTable6ColorfulAccent6"
        case gridTable6ColorfulAccent6
        
        // Enum value "gridTable7ColorfulAccent6"
        case gridTable7ColorfulAccent6
        
        // Enum value "listTable1Light"
        case listTable1Light
        
        // Enum value "listTable2"
        case listTable2
        
        // Enum value "listTable3"
        case listTable3
        
        // Enum value "listTable4"
        case listTable4
        
        // Enum value "listTable5Dark"
        case listTable5Dark
        
        // Enum value "listTable6Colorful"
        case listTable6Colorful
        
        // Enum value "listTable7Colorful"
        case listTable7Colorful
        
        // Enum value "listTable1LightAccent1"
        case listTable1LightAccent1
        
        // Enum value "listTable2Accent1"
        case listTable2Accent1
        
        // Enum value "listTable3Accent1"
        case listTable3Accent1
        
        // Enum value "listTable4Accent1"
        case listTable4Accent1
        
        // Enum value "listTable5DarkAccent1"
        case listTable5DarkAccent1
        
        // Enum value "listTable6ColorfulAccent1"
        case listTable6ColorfulAccent1
        
        // Enum value "listTable7ColorfulAccent1"
        case listTable7ColorfulAccent1
        
        // Enum value "listTable1LightAccent2"
        case listTable1LightAccent2
        
        // Enum value "listTable2Accent2"
        case listTable2Accent2
        
        // Enum value "listTable3Accent2"
        case listTable3Accent2
        
        // Enum value "listTable4Accent2"
        case listTable4Accent2
        
        // Enum value "listTable5DarkAccent2"
        case listTable5DarkAccent2
        
        // Enum value "listTable6ColorfulAccent2"
        case listTable6ColorfulAccent2
        
        // Enum value "listTable7ColorfulAccent2"
        case listTable7ColorfulAccent2
        
        // Enum value "listTable1LightAccent3"
        case listTable1LightAccent3
        
        // Enum value "listTable2Accent3"
        case listTable2Accent3
        
        // Enum value "listTable3Accent3"
        case listTable3Accent3
        
        // Enum value "listTable4Accent3"
        case listTable4Accent3
        
        // Enum value "listTable5DarkAccent3"
        case listTable5DarkAccent3
        
        // Enum value "listTable6ColorfulAccent3"
        case listTable6ColorfulAccent3
        
        // Enum value "listTable7ColorfulAccent3"
        case listTable7ColorfulAccent3
        
        // Enum value "listTable1LightAccent4"
        case listTable1LightAccent4
        
        // Enum value "listTable2Accent4"
        case listTable2Accent4
        
        // Enum value "listTable3Accent4"
        case listTable3Accent4
        
        // Enum value "listTable4Accent4"
        case listTable4Accent4
        
        // Enum value "listTable5DarkAccent4"
        case listTable5DarkAccent4
        
        // Enum value "listTable6ColorfulAccent4"
        case listTable6ColorfulAccent4
        
        // Enum value "listTable7ColorfulAccent4"
        case listTable7ColorfulAccent4
        
        // Enum value "listTable1LightAccent5"
        case listTable1LightAccent5
        
        // Enum value "listTable2Accent5"
        case listTable2Accent5
        
        // Enum value "listTable3Accent5"
        case listTable3Accent5
        
        // Enum value "listTable4Accent5"
        case listTable4Accent5
        
        // Enum value "listTable5DarkAccent5"
        case listTable5DarkAccent5
        
        // Enum value "listTable6ColorfulAccent5"
        case listTable6ColorfulAccent5
        
        // Enum value "listTable7ColorfulAccent5"
        case listTable7ColorfulAccent5
        
        // Enum value "listTable1LightAccent6"
        case listTable1LightAccent6
        
        // Enum value "listTable2Accent6"
        case listTable2Accent6
        
        // Enum value "listTable3Accent6"
        case listTable3Accent6
        
        // Enum value "listTable4Accent6"
        case listTable4Accent6
        
        // Enum value "listTable5DarkAccent6"
        case listTable5DarkAccent6
        
        // Enum value "listTable6ColorfulAccent6"
        case listTable6ColorfulAccent6
        
        // Enum value "listTable7ColorfulAccent6"
        case listTable7ColorfulAccent6
        
        // Enum value "user"
        case user
        
        // Enum value "_nil"
        case _nil
        
    }

    // Gets or sets the font animation effect.
    public enum TextEffect
    { 
        // Enum value "_none"
        case _none
        
        // Enum value "lasVegasLights"
        case lasVegasLights
        
        // Enum value "blinkingBackground"
        case blinkingBackground
        
        // Enum value "sparkleText"
        case sparkleText
        
        // Enum value "marchingBlackAnts"
        case marchingBlackAnts
        
        // Enum value "marchingRedAnts"
        case marchingRedAnts
        
        // Enum value "shimmer"
        case shimmer
        
    }

    // Gets or sets the type of underline applied to the font.
    public enum Underline
    { 
        // Enum value "_none"
        case _none
        
        // Enum value "single"
        case single
        
        // Enum value "words"
        case words
        
        // Enum value "double"
        case double
        
        // Enum value "dotted"
        case dotted
        
        // Enum value "thick"
        case thick
        
        // Enum value "dash"
        case dash
        
        // Enum value "dotDash"
        case dotDash
        
        // Enum value "dotDotDash"
        case dotDotDash
        
        // Enum value "wavy"
        case wavy
        
        // Enum value "dottedHeavy"
        case dottedHeavy
        
        // Enum value "dashHeavy"
        case dashHeavy
        
        // Enum value "dotDashHeavy"
        case dotDashHeavy
        
        // Enum value "dotDotDashHeavy"
        case dotDotDashHeavy
        
        // Enum value "wavyHeavy"
        case wavyHeavy
        
        // Enum value "dashLong"
        case dashLong
        
        // Enum value "wavyDouble"
        case wavyDouble
        
        // Enum value "dashLongHeavy"
        case dashLongHeavy
        
    }

        
    // Gets or sets true if the font is formatted as all capital letters.             
    private let allCaps : Bool?;
    // Gets or sets specifies whether the contents of this run shall have right-to-left characteristics.             
    private let bidi : Bool?;
    // Gets or sets true if the font is formatted as bold.             
    private let bold : Bool?;
    // Gets or sets true if the right-to-left text is formatted as bold.             
    private let boldBi : Bool?;
    // Gets or sets border object that specifies border for the font.
    private let border : Border?;
    // Gets or sets the color of the font.             
    private let color : XmlColor?;
    // Gets or sets specifies whether the contents of this run shall be treated as complex script text regardless of their Unicode character values when determining the formatting for this run.             
    private let complexScript : Bool?;
    // Gets or sets true if the font is formatted as double strikethrough text.             
    private let doubleStrikeThrough : Bool?;
    // Gets or sets true if the font is formatted as embossed.             
    private let emboss : Bool?;
    // Gets or sets true if the font is formatted as engraved.             
    private let engrave : Bool?;
    // Gets or sets true if the font is formatted as hidden text.             
    private let hidden : Bool?;
    // Gets or sets the highlight (marker) color.             
    private let highlightColor : XmlColor?;
    // Gets or sets true if the font is formatted as italic.             
    private let italic : Bool?;
    // Gets or sets true if the right-to-left text is formatted as italic.             
    private let italicBi : Bool?;
    // Gets or sets the font size at which kerning starts.             
    private let kerning : Double?;
    // Gets or sets the locale identifier (language) of the formatted characters.             
    private let localeId : Int?;
    // Gets or sets the locale identifier (language) of the formatted right-to-left characters.             
    private let localeIdBi : Int?;
    // Gets or sets the locale identifier (language) of the formatted Asian characters.             
    private let localeIdFarEast : Int?;
    // Gets or sets the name of the font.             
    private let name : String?;
    // Gets or sets returns or sets the font used for Latin text (characters with character codes from 0 (zero) through 127).             
    private let nameAscii : String?;
    // Gets or sets returns or sets the name of the font in a right-to-left language document.             
    private let nameBi : String?;
    // Gets or sets returns or sets an East Asian font name.             
    private let nameFarEast : String?;
    // Gets or sets returns or sets the font used for characters with character codes from 128 through 255.             
    private let nameOther : String?;
    // Gets or sets true when the formatted characters are not to be spell checked.
    private let noProofing : Bool?;
    // Gets or sets true if the font is formatted as outline.             
    private let outline : Bool?;
    // Gets or sets the position of text (in points) relative to the base line. A positive number raises the text, and a negative number lowers it.             
    private let position : Double?;
    // Gets or sets character width scaling in percent.             
    private let scaling : Int?;
    // Gets or sets true if the font is formatted as shadowed.             
    private let shadow : Bool?;
    // Gets or sets the font size in points.             
    private let size : Double?;
    // Gets or sets the font size in points used in a right-to-left document.             
    private let sizeBi : Double?;
    // Gets or sets true if the font is formatted as small capital letters.             
    private let smallCaps : Bool?;
    // Gets or sets returns or sets the spacing (in points) between characters.             
    private let spacing : Double?;
    // Gets or sets true if the font is formatted as strikethrough text.             
    private let strikeThrough : Bool?;
    // Gets or sets the locale independent style identifier of the character style applied to this formatting.
    private let styleIdentifier : StyleIdentifier?;
    // Gets or sets the name of the character style applied to this formatting.             
    private let styleName : String?;
    // Gets or sets true if the font is formatted as subscript.             
    private let _subscript : Bool?;
    // Gets or sets true if the font is formatted as superscript.             
    private let superscript : Bool?;
    // Gets or sets the font animation effect.
    private let textEffect : TextEffect?;
    // Gets or sets the type of underline applied to the font.
    private let underline : Underline?;
    // Gets or sets the color of the underline applied to the font.
    private let underlineColor : XmlColor?;
        
    public init(allCaps : Bool? = nil, bidi : Bool? = nil, bold : Bool? = nil, boldBi : Bool? = nil, border : Border? = nil, color : XmlColor? = nil, complexScript : Bool? = nil, doubleStrikeThrough : Bool? = nil, emboss : Bool? = nil, engrave : Bool? = nil, hidden : Bool? = nil, highlightColor : XmlColor? = nil, italic : Bool? = nil, italicBi : Bool? = nil, kerning : Double? = nil, localeId : Int? = nil, localeIdBi : Int? = nil, localeIdFarEast : Int? = nil, name : String? = nil, nameAscii : String? = nil, nameBi : String? = nil, nameFarEast : String? = nil, nameOther : String? = nil, noProofing : Bool? = nil, outline : Bool? = nil, position : Double? = nil, scaling : Int? = nil, shadow : Bool? = nil, size : Double? = nil, sizeBi : Double? = nil, smallCaps : Bool? = nil, spacing : Double? = nil, strikeThrough : Bool? = nil, styleIdentifier : StyleIdentifier? = nil, styleName : String? = nil, _subscript : Bool? = nil, superscript : Bool? = nil, textEffect : TextEffect? = nil, underline : Underline? = nil, underlineColor : XmlColor? = nil) {
        self.allCaps = allCaps;
        self.bidi = bidi;
        self.bold = bold;
        self.boldBi = boldBi;
        self.border = border;
        self.color = color;
        self.complexScript = complexScript;
        self.doubleStrikeThrough = doubleStrikeThrough;
        self.emboss = emboss;
        self.engrave = engrave;
        self.hidden = hidden;
        self.highlightColor = highlightColor;
        self.italic = italic;
        self.italicBi = italicBi;
        self.kerning = kerning;
        self.localeId = localeId;
        self.localeIdBi = localeIdBi;
        self.localeIdFarEast = localeIdFarEast;
        self.name = name;
        self.nameAscii = nameAscii;
        self.nameBi = nameBi;
        self.nameFarEast = nameFarEast;
        self.nameOther = nameOther;
        self.noProofing = noProofing;
        self.outline = outline;
        self.position = position;
        self.scaling = scaling;
        self.shadow = shadow;
        self.size = size;
        self.sizeBi = sizeBi;
        self.smallCaps = smallCaps;
        self.spacing = spacing;
        self.strikeThrough = strikeThrough;
        self.styleIdentifier = styleIdentifier;
        self.styleName = styleName;
        self._subscript = _subscript;
        self.superscript = superscript;
        self.textEffect = textEffect;
        self.underline = underline;
        self.underlineColor = underlineColor;
    }
        
    public func getAllCaps() -> Bool? {
        return self.allCaps;
    }
    public func getBidi() -> Bool? {
        return self.bidi;
    }
    public func getBold() -> Bool? {
        return self.bold;
    }
    public func getBoldBi() -> Bool? {
        return self.boldBi;
    }
    public func getBorder() -> Border? {
        return self.border;
    }
    public func getColor() -> XmlColor? {
        return self.color;
    }
    public func getComplexScript() -> Bool? {
        return self.complexScript;
    }
    public func getDoubleStrikeThrough() -> Bool? {
        return self.doubleStrikeThrough;
    }
    public func getEmboss() -> Bool? {
        return self.emboss;
    }
    public func getEngrave() -> Bool? {
        return self.engrave;
    }
    public func getHidden() -> Bool? {
        return self.hidden;
    }
    public func getHighlightColor() -> XmlColor? {
        return self.highlightColor;
    }
    public func getItalic() -> Bool? {
        return self.italic;
    }
    public func getItalicBi() -> Bool? {
        return self.italicBi;
    }
    public func getKerning() -> Double? {
        return self.kerning;
    }
    public func getLocaleId() -> Int? {
        return self.localeId;
    }
    public func getLocaleIdBi() -> Int? {
        return self.localeIdBi;
    }
    public func getLocaleIdFarEast() -> Int? {
        return self.localeIdFarEast;
    }
    public func getName() -> String? {
        return self.name;
    }
    public func getNameAscii() -> String? {
        return self.nameAscii;
    }
    public func getNameBi() -> String? {
        return self.nameBi;
    }
    public func getNameFarEast() -> String? {
        return self.nameFarEast;
    }
    public func getNameOther() -> String? {
        return self.nameOther;
    }
    public func getNoProofing() -> Bool? {
        return self.noProofing;
    }
    public func getOutline() -> Bool? {
        return self.outline;
    }
    public func getPosition() -> Double? {
        return self.position;
    }
    public func getScaling() -> Int? {
        return self.scaling;
    }
    public func getShadow() -> Bool? {
        return self.shadow;
    }
    public func getSize() -> Double? {
        return self.size;
    }
    public func getSizeBi() -> Double? {
        return self.sizeBi;
    }
    public func getSmallCaps() -> Bool? {
        return self.smallCaps;
    }
    public func getSpacing() -> Double? {
        return self.spacing;
    }
    public func getStrikeThrough() -> Bool? {
        return self.strikeThrough;
    }
    public func getStyleIdentifier() -> StyleIdentifier? {
        return self.styleIdentifier;
    }
    public func getStyleName() -> String? {
        return self.styleName;
    }
    public func getSubscript() -> Bool? {
        return self._subscript;
    }
    public func getSuperscript() -> Bool? {
        return self.superscript;
    }
    public func getTextEffect() -> TextEffect? {
        return self.textEffect;
    }
    public func getUnderline() -> Underline? {
        return self.underline;
    }
    public func getUnderlineColor() -> XmlColor? {
        return self.underlineColor;
    }
}
