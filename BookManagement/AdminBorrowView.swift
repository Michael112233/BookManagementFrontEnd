//
//  AdminBorrowView.swift
//  BookManagement
//
//  Created by Michael233 on 2023/12/8.
//

import SwiftUI

struct AdminBorrowView: View {
    var username: String = "";
    @State private var studentName: String = "";
    @State private var searchClick: Bool = false;
    
    var body: some View {
        VStack(alignment: .center) {
            Text("Borrow View")
                .fontWeight(.black)
                .font(.system(size: 36))
                .frame(width: 350, alignment: .leading)
            HStack() {
                Text("Student Name:")
                TextField("", text: $studentName)
                    .textFieldStyle(LineTextView())
                Button() {
                    
                } label: {
                    BlackButton(requiredHeight: 50, content: "Search")
                }
            }
        }.frame(width: 350, height: 700, alignment: .center)
    }
}

#Preview {
    AdminBorrowView()
}
