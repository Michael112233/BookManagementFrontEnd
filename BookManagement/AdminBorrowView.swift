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
    @State private var basicID: Int = -1;
    @State private var catalogID: Int = -1;
    @State private var confirmClick: Bool = false;
    
    var body: some View {
        VStack(alignment: .center, spacing: 50) {
            Text("Borrow View")
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
                
                VStack {
                    Text("书本基本信息：")
                        .font(.system(size: 18))
                        .frame(width: 350, alignment: .leading)
                    TextField("输入书本基本信息编号", text: $studentName)
                        .textFieldStyle(LineTextView())
                }
                
                VStack {
                    Text("书本馆藏信息：")
                        .font(.system(size: 18))
                        .frame(width: 350, alignment: .leading)
                    TextField("输入书本馆藏信息编号", text: $studentName)
                        .textFieldStyle(LineTextView())
                }
            }
            
            Spacer()
            
            BlackButton(requiredWidth: 171, requiredHeight: 50, content: "Borrow")
        }.frame(width: 350, height: 700, alignment: .center)
    }
}

#Preview {
    AdminBorrowView(username: "Admin")
}
