//
//  ListCellView.swift
//  SUIApiTest
//
//  Created by Роман Глухарев on 27.07.24.
//

import SwiftUI

struct ListCellView: View {
    var body: some View {
        HStack {
            Image(systemName: "moon")
                .resizable()
                .frame(width: 50, height: 50)
            Text("comics")
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ListCellView()
}
