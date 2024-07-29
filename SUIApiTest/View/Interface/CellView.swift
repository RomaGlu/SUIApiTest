//
//  ListCellView.swift
//  SUIApiTest
//
//  Created by Роман Глухарев on 27.07.24.
//

import SwiftUI

struct CellView: View {
    let characterModel: Characters?
    
    var body: some View {
        VStack {
            AsyncImage(url: characterModel?.image) { image in
                image
                    .resizable()
                    .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                    .frame(width: 100, height: 100)
            } placeholder: {
                ProgressView()
            }
            .padding(.top, 4)
            Text(characterModel?.name ?? "Sun")
                .lineLimit(nil)
                .fixedSize(horizontal: false, vertical: true)
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
                .frame(maxHeight: 50)
        }
    }
}
