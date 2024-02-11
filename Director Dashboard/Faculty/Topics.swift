//
//  Topics.swift
//  Director Dashboard
//
//  Created by ADJ on 14/01/2024.
//

import SwiftUI

struct Topics: View { // Design 100% Ok
    
    @State private var course = ""
    @State private var Topic = ""
    @State private var clos = ""
    @State private var searchTopic = ""
    @StateObject var userViewModel = UserViewModel()
    
    var body: some View { // Get All Data From Node MongoDB : Pending
        
        NavigationView{
            VStack{
                Text("Add Topics")
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                Spacer()
                Text("Course")
                    .padding(.horizontal)
                    .font(.headline)
                    .foregroundColor(Color.white)
                    .frame(maxWidth: .infinity , alignment: .leading)
                TextField("Name" , text: $course)
                    .padding()
                    .background(Color.gray.opacity(0.8))
                    .cornerRadius(8)
                    .padding(.horizontal)
                Text("Topic")
                    .padding(.horizontal)
                    .font(.headline)
                    .foregroundColor(Color.white)
                    .frame(maxWidth: .infinity , alignment: .leading)
                TextField("Username" , text: $Topic)
                    .padding()
                    .background(Color.gray.opacity(0.8))
                    .cornerRadius(8)
                    .padding(.horizontal)
                Spacer()
                VStack{
                    Text("CLOs")
                        .padding()
                        .padding(.horizontal)
                        .font(.headline)
                        .foregroundColor(Color.white)
                        .frame(maxWidth: .infinity , alignment: .leading)
                    HStack {
                        Text("CLO:1")
                        Image(systemName: "square")
                        Text("CLO:2")
                        Image(systemName: "checkmark.square")
                            .foregroundColor(.green)
                        
                        Spacer()
                        
                        Text("CLO:3")
                        Image(systemName: "square")
                        Text("CLO:4")
                        Image(systemName: "checkmark.square")
                            .foregroundColor(.green)
                    }
                    TextField("Search Teacher" , text: $searchTopic)
                        .padding()
                        .background(Color.gray.opacity(0.8))
                        .cornerRadius(8)
                        .frame(width: 300)
                }
                .padding()
                .font(.headline)
                .foregroundColor(Color.white)
                VStack {
                    HStack {
                        Text("Name")
                            .bold()
                            .font(.title2)
                            .padding(.horizontal)
                            .foregroundColor(Color.white)
                            .frame(maxWidth: .infinity , alignment: .leading)
                        
                        Text("SubTopic")
                            .bold()
                            .font(.title2)
                            .foregroundColor(Color.white)
                            .padding(.horizontal)
                            .frame(maxWidth: .infinity , alignment: .trailing)
                    }
                    .padding(1)
                    ScrollView{
                        ForEach(userViewModel.existing , id:\ .self) { cr in
                            HStack{
                                Text(cr.name)
                                    .font(.headline)
                                    .padding(.horizontal)
                                    .foregroundColor(Color.white)
                                    .frame(maxWidth: .infinity , alignment: .leading)
                                NavigationLink{
                                    EditSubTopics()
                                        .navigationBarBackButtonHidden(true)
                                }label: {
                                    Image(systemName: "rectangle.and.pencil.and.ellipsis")
                                        .font(.title2)
                                        .foregroundColor(Color.green)
                                        .frame(maxWidth: .infinity , alignment: .trailing)
                                }
                                
                                    Image(systemName: "delete.right.fill")
                                        .font(.title3)
                                        .padding(.horizontal)
                                        .foregroundColor(Color.red)
                                
                            }
                            .padding(1)
                        }
                    }
                }
                .frame(height:150)
                .onAppear {
                    userViewModel.fetchExistingUser()
                }
//                Spacer()
                Button("Create"){
                    saveTopic()
                }
                .bold()
                .padding()
                .frame(width: 150)
                .foregroundColor(.black)
                .background(Color.green)
                .cornerRadius(8)
                .padding(.all)
            }
            .background(Image("fa").resizable().ignoresSafeArea())
        }
    }
    func saveTopic() {
        
    }
}


struct EditSubTopics: View { // Design 100% Ok
    
    @State private var course = ""
    @State private var Topic = ""
    @State private var clos = ""
    @State private var searchTopic = ""
    @StateObject var userViewModel = UserViewModel()
    
    
    var body: some View { // Get All Data From Node MongoDB : Pending
       
        NavigationView{
            VStack{
//                Spacer()
                Text("Edit Sub Topic")
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                            Spacer()
                VStack{
//                    Spacer()
                    Text("Course")
                        .bold()
                        .padding(.horizontal)
                        .frame(maxWidth: .infinity , alignment: .leading)
                        .font(.title)
                        .foregroundColor(Color.white)
                    Text("Programming Fundamental")
                        .bold()
                        .padding()
                        .frame(maxWidth: .infinity , alignment: .center)
                        .font(.title3)
                        .foregroundColor(Color.white)
                    //                Spacer()
                    Text("Topic")
                        .bold()
                        .padding()
                        .font(.title)
                        .frame(maxWidth: .infinity , alignment: .leading)
                        .foregroundColor(Color.white)
                    Text("Basic Structure of Programming")
                        .bold()
                        .padding(.horizontal)
                        .frame(maxWidth: .infinity , alignment: .center)
                        .font(.title3)
                        .foregroundColor(Color.white)
//                    Spacer()
                    
                    Text("Sub Topic")
                        .bold()
                        .padding()
                        .font(.title)
                        .foregroundColor(Color.white)
                        .frame(maxWidth: .infinity , alignment: .leading)
                    TextField("Name" , text: $course)
                        .padding()
                        .background(Color.gray.opacity(0.8))
                        .cornerRadius(8)
                        .padding(.horizontal)
                }
                Spacer()
                Button("Update"){
                    updateTopic()
                }
                .bold()
                .padding()
                .frame(width: 150)
                .foregroundColor(.black)
                .background(Color.green)
                .cornerRadius(8)
                .padding(.all)
//                Spacer()
            }
            .background(Image("fa").resizable().ignoresSafeArea())
        }
    }
    func updateTopic() {
        
    }
}

struct Topics_Previews: PreviewProvider {
    static var previews: some View {
        Topics()
    }
}
