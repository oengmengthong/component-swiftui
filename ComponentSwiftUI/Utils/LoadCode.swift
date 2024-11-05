//
//  LoadCode.swift
//  ComponentSwiftUI
//
//  Created by Mengthong JakSmok on 5/11/24.
//

import SwiftUI

func loadCode(from fileName: String) -> String {
    guard let filePath = Bundle.main.path(forResource: fileName, ofType: "swift"),
          let content = try? String(contentsOfFile: filePath) else {
        return "Code not available"
    }
    return content
}
