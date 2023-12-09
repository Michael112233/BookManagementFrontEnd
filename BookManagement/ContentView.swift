//
//  MainScreenView.swift
//  BrokerFi
//
//  Created by Michael233 on 2023/10/13.
//

import SwiftUI

struct ContentView: View {
    @State private var loginClick = false;
    @State private var RegisterClick = false;
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 25) {
                VStack(spacing: 16) {
                    Text("Welcome to")
                        .fontWeight(.black)
                        .font(.system(size: 30))
                        .frame(width: 350 ,alignment: .leading)
                    Text("Book Management App")
                        .fontWeight(.black)
                        .font(.system(size: 30))
                }
                
                Button {
                    loginClick.toggle()
                } label: {
                    BlackButton(requiredWidth: 180, requiredHeight: 50, content: "Get Started")
                }.fullScreenCover(isPresented: $loginClick, content: {
                    LoginView()
                })
            }
            .padding()
        }
    }
    
}

#Preview {
    ContentView()
}
