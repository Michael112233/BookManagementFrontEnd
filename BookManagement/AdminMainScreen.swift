//
//  AdminMainScreen.swift
//  BookManagement
//
//  Created by Michael233 on 2023/12/8.
//

import SwiftUI

struct AdminMainScreen: View {
    var username: String = ""
    var identity: String = ""
    @State private var borrowClick: Bool = false
    @State private var returnClick: Bool = false
    @State private var addInfoClick: Bool = false
    @State private var fineClick: Bool = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 200) {
            VStack(spacing: 20) {
                ZStack(alignment: .center) {
                    Text("Welcome " + username + "!")
                        .font(.system(size: 28))
                        .fontWeight(.black)
                        .frame(width: 350, alignment: .leading)
                }
                
                Text("Admin Main Screen")
                    .font(.system(size: 28))
                    .fontWeight(.black)
                    .frame(width: 350, alignment: .leading)
            }
            
            VStack(spacing: 50) {
                VStack(alignment: .leading) {
                    Button() {
                        borrowClick.toggle()
                    } label: {
                        BlackButton(requiredWidth: 171, requiredHeight: 50, content: "Borrow Books")
                    }.fullScreenCover(isPresented: $borrowClick, content: {
                        AdminBorrowView(username: username)
                    })
                }
                
                HStack(alignment: .center) {
                    Button() {
                        returnClick.toggle()
                    } label: {
                        BlackButton(requiredWidth: 171, requiredHeight: 50, content: "Return Books")
                    }.fullScreenCover(isPresented: $returnClick, content: {
                        AdminReturnview(username: username)
                    })
                }.frame(width: 350, alignment: .center)
                
                HStack(alignment: .center) {
                    Button() {
                        addInfoClick.toggle()
                    } label: {
                        BlackButton(requiredWidth: 171, requiredHeight: 50, content: "Add Infomation")
                    }.fullScreenCover(isPresented: $addInfoClick, content: {
                        AdminAddMainScreen()
                    })
                }.frame(width: 350, alignment: .center)
                
                HStack(alignment: .center) {
                    Button() {
                        fineClick.toggle()
                    } label: {
                        BlackButton(requiredWidth: 171, requiredHeight: 50, content: "Handling Fine")
                    }.fullScreenCover(isPresented: $fineClick, content: {
                        AdminFineView()
                    })
                }.frame(width: 350, alignment: .center)
            }
        }.frame(width: 350, height: 700, alignment: .center)
    }
}

#Preview {
    AdminMainScreen(username: "admin")
}
