//
//  EventContentView.swift
//  events-swiftui
//
//  Created by Jose Luna on 28/10/22.
//

import SwiftUI

struct EventContentView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var currentEvent: Event
    init(_ currentEvent: Event) {
        self.currentEvent = currentEvent
    }
    var body: some View {
        VStack {
            ZStack(alignment: .top) {
                Image(currentEvent.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: .infinity, height: 450, alignment: .center)
                .clipped()
                HStack(alignment: .bottom) {
                    Spacer()
                    Image(systemName: "arrow.backward.circle")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .onTapGesture {
                            self.presentationMode.wrappedValue.dismiss()
                        }
                    Spacer()
                    Text(currentEvent.title)
                        .font(.system(size: 23))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Spacer()
                    Image(systemName: "bookmark.square.fill")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                    Spacer()
                }.frame(maxWidth: EventContentView.screenWidth, maxHeight: 100)
                    .padding([.top], 10)
            }
            
            VStack(alignment: .leading) {
                Text("Description")
                    .font(.system(size: 25))
                    .foregroundColor(.black)
                    .fontWeight(.black)
                    .padding([.bottom], 10)
                Text(currentEvent.description)
                    .padding([.bottom], 20)
                HStack{
                    Image(systemName: "location.circle")
                        .font(.system(size: 30))
                        .foregroundColor(.red)
                    VStack(alignment: .leading){
                        Text(currentEvent.country)
                            .font(.system(size: 15))
                            .foregroundColor(Color(K.Colors.grayColor))
                            .padding([.bottom], 1)
                        Text(currentEvent.location)
                    }
                    .frame(maxWidth: EventContentView.screenWidth, alignment: .leading)
                }
                .padding([.bottom], 20)
                
                HStack{
                    Image(systemName: "calendar")
                        .font(.system(size: 30))
                        .foregroundColor(Color(K.Colors.primaryColor))
                    VStack(alignment: .leading){
                        Text(currentEvent.country)
                            .font(.system(size: 15))
                            .foregroundColor(Color(K.Colors.grayColor))
                            .padding([.bottom], 1)
                        Text(currentEvent.location)
                    }
                    .frame(maxWidth: EventContentView.screenWidth, alignment: .leading)
                }
                
            }.frame(maxWidth: EventContentView.screenWidth, alignment: .leading)
                .padding([.horizontal], 20)
            Spacer()
            ZStack{
                Color(K.Colors.primaryColor)
                HStack(spacing: 50) {
                    Image(systemName: "arrow.forward.circle.fill")
                        .font(.system(size: 25))
                        .foregroundColor(.white)

                    Text(String(format: "Buy ticket $%.2f", currentEvent.ticket))
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }
            }
            .frame(width: .infinity, height: 70)
        }.ignoresSafeArea(.all)
            .navigationBarHidden(true)
    }
}

extension EventContentView{
   static let screenWidth = UIScreen.main.bounds.size.width
}

struct EventContentView_Previews: PreviewProvider {
    static var previews: some View {
        EventContentView(K.events[0])
    }
}
