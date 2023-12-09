//
//  BlackButton.swift
//  BookManagement
//
//  Created by Michael233 on 2023/12/8.
//

import SwiftUI

struct BlackButton: View {
    var requiredWidth: CGFloat = 96
    var requiredHeight: CGFloat = 36
    var content: String = ""
    var body: some View {
        Text(content)
            .padding()
            .frame(width: requiredWidth, height: requiredHeight, alignment: .center)
            .font(.system(size: 18))
            .fontWeight(.medium)
            .foregroundColor(.white)
            .background(Color.black)
            .cornerRadius(9999)
    }
}

#Preview {
    BlackButton(requiredWidth: 180, requiredHeight: 50, content: "Hello")
}
