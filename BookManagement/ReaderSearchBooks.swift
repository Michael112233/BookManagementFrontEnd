//
//  ReaderSearchBooks.swift
//  BookManagement
//
//  Created by Michael233 on 2023/12/8.
//

import SwiftUI

struct ReaderSearchBooks: View {
    @State private var readySearch: Bool = false
    @State private var searchMode: String = "Name"
    @State private var searchISBN: String = ""
    @State private var searchBookName: String = ""
    @State private var searchBookAuthor: String = ""
    @State private var searchBookKeyword: String = ""
    
    var body: some View {
        VStack(alignment: .center) {
            Text("Search Menu")
                .fontWeight(.black)
                .font(.system(size: 36))
                .frame(width: 350, alignment: .leading)
        
            HStack(alignment: .center) {
                Picker("Role", selection: $searchMode) {
                    ForEach(SearchMode, id: \.self) { mode in
                        Text(mode)
                    }
                }.frame(height: 52)
                
                if searchMode == "Name" {
                    TextField("", text: $searchBookName)
                        .textFieldStyle(LineTextView())
                        .frame(height: 30)
                }
                if searchMode == "Author" {
                    TextField("", text: $searchBookAuthor)
                        .textFieldStyle(LineTextView())
                        .frame(height: 30)
                }
                if searchMode == "ISBN" {
                    TextField("", text: $searchISBN)
                        .textFieldStyle(LineTextView())
                        .frame(height: 30)
                }
                if searchMode == "Keyword" {
                    TextField("", text: $searchBookKeyword)
                        .textFieldStyle(LineTextView())
                        .frame(height: 30)
                }
            }
            
            Button {
                readySearch.toggle()
            } label: {
                BlackButton(requiredWidth: 171, requiredHeight: 45, content: "Search")
            }
        
            List(bookList, id: \.self) { book in
                Text(book)
            }
            
        }.frame(width: 350, height: 700, alignment: .center)
    }
}

#Preview {
    ReaderSearchBooks()
}
