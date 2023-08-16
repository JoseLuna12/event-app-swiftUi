//
//  HomeView.swift
//  events-swiftui
//
//  Created by Jose Luna on 28/10/22.
//

import SwiftUI

struct HomeView: View {
    var activeCategory = "Music"
    var body: some View {
        VStack {
            VStack {
                NavBar()
                VStack(alignment: .leading, spacing: 0) {
                    Text("Hello \(K.user.name)")
                        .font(.system(size: 25))
                        .foregroundColor(.black)
                        .fontWeight(.black)
                        
                    Text("Discover cool events")
                        .padding([.top], 10)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                SectionTitle(title: "Popular events")
                PopularEvents()
                SectionTitle(title: "Category events")
                ScrollView (.horizontal, showsIndicators: false)  {
                    HStack {
                        ForEach(K.categories, id: \.self) { category in
                            Text(category).padding([.horizontal], 20).padding([.vertical], 7)
                                .fontWeight(activeCategory == category ? .bold : .regular)
                                .background {
                                Rectangle()
                                    .fill(Color(K.Colors.bgGray))
                                    .clipShape(RoundedRectangle(cornerRadius: 20))
                            }
                        }
                    }
                }
                PopularEvents()
            }
            .padding([.horizontal], 20)
            Spacer()
            ZStack{
                Color(K.Colors.primaryColor)
                HStack(spacing: 50) {
                    Image(systemName: "house")
                        .font(.system(size: 25))
                        .foregroundColor(.white)

                    Image(systemName: "ticket")
                        .font(.system(size: 25))
                        .foregroundColor(.white)

                    Image(systemName: "location.circle")
                        .font(.system(size: 25))
                        .foregroundColor(.white)

                    Image(systemName: "gear")
                        .font(.system(size: 25))
                        .foregroundColor(.white)
                }
            }
        }
        .ignoresSafeArea(.all, edges: .bottom)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
