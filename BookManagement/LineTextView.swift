//
//  LineTextView.swift
//  BookManagement
//
//  Created by Michael233 on 2023/12/8.
//

import SwiftUI

struct LineTextView: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.black, lineWidth: 1)
            )
    }
}
