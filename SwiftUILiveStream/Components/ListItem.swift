//
//  ListItem.swift
//  SwiftUILiveStream
//
//  Created by Thaisa Fujii on 5/6/22.
//

import SwiftUI

struct ListItem: View {
    var item: Item
    
    var body: some View {
        HStack(alignment: .top){
            Image(systemName: "sun.haze.fill")
                .renderingMode(.original)
                .font(.title)
                .frame(width: 36, height: 36)
                .foregroundColor(.white)
                .background(.black)
                .mask(Circle())
            VStack(alignment: .leading, spacing: 4){
                Text(item.title)
                Text(item.text)
            }
        }
        .padding(.vertical)
    }
}

struct ListItem_Previews: PreviewProvider {
    static var previews: some View {
        ListItem(item: Item(title: "SwiftUI for iOS 14", text: "A complete guide to designing for iOS 14 with videos, examples and design files", image: "Blob 1", details: "ggggg", gradient: LinearGradient(
            gradient: Gradient(stops: [
                .init(color: Color(.blue), location: 0),
                .init(color: Color(.purple), location: 1)]),
            startPoint: UnitPoint(x: 0.5002249700310126, y: 3.0834283490377423e-7),
            endPoint: UnitPoint(x: -0.0016390833199537713, y: 0.977085239704672))))
    }
}
