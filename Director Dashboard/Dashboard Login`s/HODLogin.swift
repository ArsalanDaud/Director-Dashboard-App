//
//  HODLogin.swift
//  Director Dashboard
//
//  Created by ADJ on 11/01/2024.
//

import SwiftUI

struct HODLogin: View {
    
    @State private var username = ""
    @State private var password = ""
    @State private var isLoggedIn = false
    
    var body: some View {
        VStack{
            Text("HOD")
                .font(.largeTitle)
                .bold()
                .foregroundColor(Color.white)
            Spacer()
            Text("Welcome")
                .font(.title2)
                .bold()
                .foregroundColor(Color.white)
                .padding(.leading,-170)
            Spacer()
            VStack(alignment: .leading){
                Text("Username")
                    .bold()
                    .font(.title3)
                    .padding(.leading)
                    .foregroundColor(Color.white)
                TextField("Username", text: $username)
                    .padding()
                    .background(Color.gray.opacity(0.8))
                    .cornerRadius(8)
                    .padding(.horizontal)
                
                Text("Password")
                    .bold()
                    .font(.title3)
                    .padding(.leading)
                    .foregroundColor(Color.white)
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color.gray.opacity(0.8))
                    .cornerRadius(8)
                    .padding(.horizontal)
                    .padding(.bottom,220)
            }
            
            Button("Login"){
                login()
            }
            .foregroundColor(Color.black)
            .padding()
            .frame(width: 150, height: 60)
            .background(Color.teal)
            .cornerRadius(8)
        }
        .fullScreenCover(isPresented: $isLoggedIn){
            HODWelcome()
        }
        .background(Image("h").resizable().ignoresSafeArea())
    }
    
    func login() {
        if username == "" &&  password == "" {
            isLoggedIn = true
            print("Login Successfull")
        }
        else {
            print("Invalid Credentials")
        }
    }
}

struct HODLogin_Previews: PreviewProvider {
    static var previews: some View {
        HODLogin()
    }
}
