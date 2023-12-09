//
//  LoginView.swift
//  BookManagement
//
//  Created by Michael233 on 2023/12/8.
//

import SwiftUI

struct LoginView: View {
    @State private var username :String = ""
    @State private var password :String = ""
    @State private var selectedRole :String = ""
    @State private var showError :Bool = true
    @State private var ReaderClick = false;
    @State private var TeacherClick = false;
    @State private var AdminClick = false;
    
    var isReader: Binding<Bool> {
        return Binding<Bool>(
            get: {
                return ReaderClick || TeacherClick
            },
            set: { newValue in
                // Handle setting the combined state if needed
            }
        )
    }
    
    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            VStack(spacing: 10) {
                Text("Login")
                    .font(.system(size: 30))
                    .fontWeight(.black)
                    .frame(width: 350, alignment: .leading)
            }
            
            VStack(spacing: 10) {
                Text("Username")
                    .font(.system(size: 18))
                    .frame(width: 350, alignment: .leading)
                TextField("", text: $username)
                    .textFieldStyle(PasswordTextFieldStyle())
                
                Text("Password")
                    .font(.system(size: 18))
                    .frame(width: 350, alignment: .leading)
                TextField("", text: $password)
                    .textFieldStyle(PasswordTextFieldStyle())
                
                HStack {
                    Text("Select your role:")
                        .font(.system(size: 18))
                        .frame(alignment: .leading)

                    Picker("Role", selection: $selectedRole) {
                        ForEach(roles, id: \.self) { role in
                            Text(role)
                        }
                    }
                }.frame(width: 350, alignment: .leading)
            }
            
            Button {
                if selectedRole == "Reader" {
                    ReaderClick.toggle()
                } else {
                    if selectedRole == "Admin" {
                        AdminClick.toggle()
                    } else {
                        if selectedRole == "Teacher" {
                            TeacherClick.toggle()
                        }
                    }
                }
            } label: {
                BlackButton(requiredWidth: 171, requiredHeight: 44, content: "login")
            }.fullScreenCover(isPresented: isReader, content: {
                ReaderMainScreen(username: username)
            }).fullScreenCover(isPresented: $AdminClick, content: {
                AdminMainScreen(username: username)
            })
            
        }.frame(width: 350, height: 756, alignment: .center)
    }
}

#Preview {
    LoginView()
}
