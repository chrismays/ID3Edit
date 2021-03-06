//
//  TagParserTests.swift
//  ID3Edit
//
//    MIT License
//
//    Copyright (c) 2016 Philip Hardy
//
//    Permission is hereby granted, free of charge, to any person obtaining a copy
//    of this software and associated documentation files (the "Software"), to deal
//    in the Software without restriction, including without limitation the rights
//    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//    copies of the Software, and to permit persons to whom the Software is
//    furnished to do so, subject to the following conditions:
//
//    The above copyright notice and this permission notice shall be included in all
//    copies or substantial portions of the Software.
//
//    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//    SOFTWARE.
//

import XCTest;
@testable import ID3Edit;

class TagParserTests: XCTestCase
{
    
    let whatAYearParser = TagParser(data: NSData(contentsOfFile: "/Users/Phil/Desktop/What A Year.mp3"), tag: ID3Tag());
    let changesParser = TagParser(data: NSData(contentsOfFile: "/Users/Phil/Desktop/05 Changes.mp3")!, tag: ID3Tag());

    override func setUp()
    {
        super.setUp();
    }
    
    override func tearDown()
    {
        super.tearDown();
    }

    func test_getTagSize()
    {
        XCTAssertEqual(whatAYearParser.getTagSize(), 0x110CC);
        XCTAssertEqual(changesParser.getTagSize(), 0x1AFC8);
    }
    
    func test_isTagPresent()
    {
        XCTAssert(whatAYearParser.isTagPresent());
        XCTAssert(changesParser.isTagPresent());
    }
}
