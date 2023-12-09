//
//  ReaderDetailView.swift
//  BookManagement
//
//  Created by Michael233 on 2023/12/8.
//

import SwiftUI

struct ReaderDetailView: View {
    var username: String = ""
    @State private var enterInfo: [String] = ["", "", "", "", "", "", "", "", "", "", "", ""]
    @State private var saveClick: Bool = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("My Details")
                    .fontWeight(.black)
                    .font(.system(size: 36))
                    .frame(width: 350, alignment: .leading)
                
                VStack(alignment: .leading, spacing: 5) {
                    ForEach(0..<infoTitle.count, id: \.self) { row in
                        HStack(spacing: 5) {
                            Text(infoTitle[row])
                                .frame(width: 90, height: 25)
                                .padding()
                                .background(Color(red: 245/255, green: 246/255, blue: 247/255))
                                .cornerRadius(2)
                            TextField(infoList[row], text: $enterInfo[row])
                                .frame(width: 210, height: 25)
                                .padding()
                                .background(Color(red: 245/255, green: 246/255, blue: 247/255))
                                .cornerRadius(2)
                        }
                    }
                }
                
                Button {
                    saveClick.toggle()
                } label: {
                    BlackButton(requiredWidth: 171, requiredHeight: 40, content: "Save")
                }
            }
        }
    }
}

#Preview {
    ReaderDetailView(username: "app")
}
