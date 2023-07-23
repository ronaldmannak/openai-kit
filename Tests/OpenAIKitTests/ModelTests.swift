//
//  ModelTests.swift
//  
//
//  Created by Ronald Mannak on 7/23/23.
//

import XCTest
@testable import OpenAIKit

final class ModelTests: XCTestCase {

    func testGPT3() {
        
        let gpt3 = Model.GPT3.gpt3_5Turbo
        XCTAssertEqual(gpt3.maxTokens, 4_096)

        let gpt3_16k = Model.GPT3.gpt3_5Turbo16K
        XCTAssertEqual(gpt3_16k.maxTokens, 16_384)
    }
    
    func testGPT4() {
        
        let gpt4 = Model.GPT4.gpt4
        XCTAssertEqual(gpt4.maxTokens, 8_192)
        
        let gpt4_32k = Model.GPT4.gpt4_32k
        XCTAssertEqual(gpt4_32k.maxTokens, 32_768)
    }
}
