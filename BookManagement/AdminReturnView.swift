//
//  AdminReturnview.swift
//  BookManagement
//
//  Created by Michael233 on 2023/12/8.
//

import SwiftUI

struct AdminReturnview: View {
    var username: String = "";
    @State private var studentName: String = "";
    @State private var basicID: Int = -1;
    @State private var catalogID: Int = -1;
    @State private var confirmClick: Bool = false;
    // borrowRecord
    @State private var bookClick = Array(repeating: false, count: bookList.count)
    
    var body: some View {
        VStack(alignment: .center, spacing: 50) {
            Text("Return View")
                .fontWeight(.black)
                .font(.system(size: 36))
                .frame(width: 350, alignment: .leading)
            VStack(spacing: 10) {
                VStack {
                    Text("读者借阅情况确认:")
                        .font(.system(size: 18))
                        .frame(width: 350, alignment: .leading)
                    HStack() {
                        TextField("输入读者编号", text: $studentName)
                            .textFieldStyle(LineTextView())
                        Button() {
                            confirmClick.toggle()
                        } label: {
                            BlackButton(requiredWidth: 120, requiredHeight: 50, content: "Confirm")
                        }
                    }.frame(width: 350, alignment: .center)
                }
                
                // borrowRecord
                List(bookList.indices, id: \.self) { bookid in
                    Button {
                        bookClick[bookid].toggle()
                    } label: {
                        ZStack(alignment: .center) {
                            Text(bookList[bookid])
                                .foregroundStyle(.black)
                                .frame(width: 250, alignment: .leading)
                            if(bookClick[bookid]) {
                                Text("✓")
                                    .foregroundStyle(.black)
                                    .frame(width: 250, alignment: .trailing)
                            }
                        }
                    }
                }
                
                BlackButton(requiredWidth: 171, requiredHeight: 50, content: "Return")
            }
        }.frame(width: 350, height: 700, alignment: .center)
    }
}

#Preview {
    AdminReturnview(username: "admin")
}
