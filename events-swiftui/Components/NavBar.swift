//
//  NavBar.swift
//  events-swiftui
//
//  Created by Jose Luna on 28/10/22.
//

import SwiftUI

struct NavBar: View {
    @State var search: String = ""
    var body: some View {
        HStack {
            Image(systemName: "terminal")
            Spacer()
            HStack {
                Spacer()
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.black)
                        .padding([.all], 12)
                    ZStack(alignment: .leading) {
                        if search == "" {
                            Text("Search")
                                .foregroundColor(Color(K.Colors.blackColor))
                        }
                        TextField("", text: $search)
                    }
                }
                .frame(width: 130)
                .background {
                    Rectangle()
                        .fill(Color(K.Colors.bgGray))
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                }
                    
                Image(K.user.photo)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40, alignment: .center)
                    .clipped()
                .clipShape(Circle())
            }
        }
        .padding([.top], 20)
    }
}

struct NavBar_Previews: PreviewProvider {
    static var previews: some View {
        NavBar().previewLayout(.sizeThatFits)
    }
}
