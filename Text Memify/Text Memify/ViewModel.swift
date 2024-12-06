//
//  ViewModel.swift
//  Text Memify
//
//  Created by Harry Dinh on 2024-12-06.
//

import Foundation
import SwiftUI

@Observable
class TMViewModel {
    
    public static let instance = TMViewModel()
    
    public var originalText = ""
    public var selectedOption = 0
    public var resultText = ""
    
    public func memify() {
        switch selectedOption {
            case 0:
                widenText(capitalized: false)
                break
            case 1:
                widenText(capitalized: true)
                break
            case 2:
                resultText = String(originalText.reversed())
                break
            default:
                print("Something went wrong...")
                break
        }
    }
    
    private func widenText(capitalized: Bool) {
        var temp = originalText
        if (capitalized) {
            temp = temp.uppercased()
        }
        resultText = temp.map { String($0) }.joined(separator: " ")
    }
}
