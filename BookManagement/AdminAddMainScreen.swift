//
//  AdminAddView.swift
//  BookManagement
//
//  Created by Michael233 on 2023/12/8.
//

import SwiftUI

struct AdminAddMainScreen: View {
    var username: String = ""
    var identity: String = ""
    @State private var bookBasicClick: Bool = false
    @State private var publisherInfoClick: Bool = false
    @State private var bookCatalogClick: Bool = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 200) {
            VStack(spacing: 20) {
                ZStack(alignment: .center) {
                    Text("Welcome " + username + "!")
                        .font(.system(size: 28))
                        .fontWeight(.black)
                        .frame(width: 350, alignment: .leading)
                }
                
                Text("Add Main Screen")
                    .font(.system(size: 28))
                    .fontWeight(.black)
                    .frame(width: 350, alignment: .leading)
            }
            
            VStack(spacing: 50) {
                VStack(alignment: .leading) {
                    Button() {
                        bookBasicClick.toggle()
                    } label: {
                        BlackButton(requiredWidth: 250, requiredHeight: 50, content: "Add Book Basic Info")
                    }.fullScreenCover(isPresented: $bookBasicClick, content: {
                        AdminBookBasicView()
                    })
                }
                
                HStack(alignment: .center) {
                    Button() {
                        publisherInfoClick.toggle()
                    } label: {
                        BlackButton(requiredWidth: 250, requiredHeight: 50, content: "Add Publisher Info")
                    }.fullScreenCover(isPresented: $publisherInfoClick, content: {
                        AdminPublisherView()
                    })
                }.frame(width: 350, alignment: .center)
                
                HStack(alignment: .center) {
                    Button() {
                        bookCatalogClick.toggle()
                    } label: {
                        BlackButton(requiredWidth: 250, requiredHeight: 50, content: "Add Book Catalog Info")
                    }.fullScreenCover(isPresented: $bookCatalogClick, content: {
                        AdminBookCatalogView()
                    })
                }.frame(width: 350, alignment: .center)
            }
        }.frame(width: 350, height: 700, alignment: .center)
    }
}

#Preview {
    AdminAddMainScreen(username: "admin")
}
