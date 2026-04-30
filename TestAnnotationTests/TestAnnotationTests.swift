//
//  TestAnnotationTests.swift
//  TestAnnotationTests
//
//  Created by Krisztián Gödrei on 2026. 04. 30..
//

import Testing
@testable import TestAnnotation
import Foundation

struct TestAnnotationTests {

    @Test("ExampleFunc") func example() async throws {
        let markerURL = URL(fileURLWithPath: NSTemporaryDirectory())
            .appendingPathComponent("TestAnnotationTests_example_marker")
        let fileManager = FileManager.default

        if fileManager.fileExists(atPath: markerURL.path) {
            try fileManager.removeItem(at: markerURL)
        } else {
            fileManager.createFile(atPath: markerURL.path, contents: nil)
            #expect(Bool(false), "First run — expected failure")
        }
    }

}
