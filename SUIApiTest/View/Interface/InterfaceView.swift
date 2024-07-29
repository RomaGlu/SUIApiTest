//
//  InterfaceView.swift
//  SUIApiTest
//
//  Created by Роман Глухарев on 27.07.24.
//

import SwiftUI

struct InterfaceView: View {
    
    @State private var textInput = ""
    @StateObject var viewModel = ViewModel()
    let columns = Array(repeating: GridItem(.flexible(minimum: 100)), count: 3)
    
    var body: some View {
        ZStack {
            Image("wallpaper")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .blur(radius: 10)
            VStack {
                HStack {
                    Spacer()
                    TextField("",
                              text: $textInput,
                              prompt: Text("Enter character name")
                        .foregroundStyle(.black.opacity(0.7)))
                    .padding(.horizontal, 10)
                    
                    .frame(height: 34)
                    .frame(maxWidth: .infinity)
                    .background(LinearGradient(colors: [.mint, .white], startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(5)
                    .accentColor(.black)
                    Spacer()
                    Button("Search") {
                        viewModel.getData(textInput)
                    }
                    .padding()
                    .foregroundColor(.yellow)
                    .font(.system(size: 20, weight: .bold))
                }
                .padding(.leading)
                .padding(.trailing)
                
                ScrollView {
                    LazyVGrid(columns: columns) {
                        ForEach(viewModel.dataSource) { character in
                            CellView(characterModel: character)
                                .frame(width: 100, height: 120)
                                .padding(.top)
                                .padding(.bottom)
                        }
                    }
                }
                .cornerRadius(10)
                .padding()
            }
            .padding(.leading, 40)
            .padding(.trailing, 40)
        }
        .onAppear {
            viewModel.getData(nil)
        }
    }
}

#Preview {
    InterfaceView()
}
