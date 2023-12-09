//
//  ReaderMainScreen.swift
//  BookManagement
//
//  Created by Michael233 on 2023/12/8.
//

import SwiftUI

struct ReaderMainScreen: View {
    var username: String = ""
    var identity: String = ""
    @State private var searchClick: Bool = false
    @State private var detailClick: Bool = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 200) {
            VStack(spacing: 20) {
                ZStack(alignment: .center) {
                    Text("Welcome " + username + "!")
                        .font(.system(size: 28))
                        .fontWeight(.black)
                        .frame(width: 350, alignment: .leading)
                }
                
                Text("Reader Main Screen")
                    .font(.system(size: 28))
                    .fontWeight(.black)
                    .frame(width: 350, alignment: .leading)
            }
            
            VStack(spacing: 50) {
                VStack(alignment: .leading) {
                    Button() {
                        searchClick.toggle()
                    } label: {
                        BlackButton(requiredWidth: 171, requiredHeight: 50, content: "Search Books")
                    }.fullScreenCover(isPresented: $searchClick, content: {
                        ReaderSearchBooks()
                    })
                }
                
                HStack(alignment: .center) {
                    Button() {
                        detailClick.toggle()
                    } label: {
                        BlackButton(requiredWidth: 171, requiredHeight: 50, content: "Your Details")
                    }.fullScreenCover(isPresented: $detailClick, content: {
                        ReaderDetailView(username: username)
                    })
                }.frame(width: 350, alignment: .center)
            }
        }.frame(width: 350, height: 700, alignment: .center)
    }
}

#Preview {
    ReaderMainScreen(username: "Mike")
}
