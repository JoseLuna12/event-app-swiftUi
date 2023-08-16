//
//  SectionTitle.swift
//  events-swiftui
//
//  Created by Jose Luna on 28/10/22.
//

import SwiftUI

struct SectionTitle: View {
    var title: String
    init(title: String) {
        self.title = title
    }
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .font(.system(size: 17))
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                Spacer()
                Text("View all")
                    .font(.system(size: 15))
                    .foregroundColor(Color(K.Colors.primaryColor))
            }
        }
        .padding([.bottom], 13)
        .padding([.top], 15)
    }
}

struct SectionTitle_Previews: PreviewProvider {
    static var previews: some View {
        SectionTitle(title: "Test")
            .previewLayout(.sizeThatFits)
    }
}
