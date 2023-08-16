//
//  PopularEvents.swift
//  events-swiftui
//
//  Created by Jose Luna on 28/10/22.
//

import SwiftUI

struct PopularEvents: View {
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false) {
            LazyHStack {
                 ForEach(K.events, id: \.self.title){
                     event in
                     NavigationLink(destination: EventContentView(event)) {
                         Image(event.image)
                             .resizable()
                             .scaledToFill()
                             .frame(width: 130, height: 190, alignment: .center)
                             .clipped()
                             .clipShape(RoundedRectangle(cornerRadius: 20))
                     }
                     .navigationBarTitle("")
                     .navigationBarHidden(true)
                     
                 }
             }
        }.frame(height: 200)
    }
}

struct PopularEvents_Previews: PreviewProvider {
    static var previews: some View {
        PopularEvents()
            .previewLayout(.sizeThatFits)
    }
}
