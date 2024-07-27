//
//  InterfaceView.swift
//  SUIApiTest
//
//  Created by Роман Глухарев on 27.07.24.
//

import SwiftUI

struct InterfaceView: View {
    
    @State private var textInput = ""
    @State private var comicsModel = ""
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    TextField("Enter character name", text: $textInput)
                        .textFieldStyle(.roundedBorder)
                        .padding()
                        .onSubmit {
                            print(textInput)
                        }
                    Button("Search") {
                        
                    }
                    .padding(.trailing)
                    .foregroundColor(.blue)
                }
                .background(.gray)
                
                ScrollView {
                    LazyVGrid(columns: [
                                  .init(.fixed(50)),
                                  .init(.adaptive(
                                            minimum: 60
                                        )),
                                  /*
                                  .init(.flexible(minimum: 30))
                                  */
                              ]) {
    //                   View here
                    }
                    .padding(8)
                }
                .background(.gray)
                .foregroundColor(.black)
            }
            .foregroundColor(.clear)
        }
        .background(.gray)
    }
}

#Preview {
    InterfaceView()
}
