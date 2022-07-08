//
//  CardView.swift
//  SwiftUILiveStream
//
//  Created by Thaisa Fujii on 5/6/22.
//

import SwiftUI

// Struct for the layout
struct CardView: View {
    var item: Item
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8){
            Image(item.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 128)
                .frame(maxWidth: .infinity)
            Text(item.title)
                .font(.title)
                .fontWeight(.bold)
            Text("20 sections - 3 hours")
                .opacity(0.7)
        }// modifiers
        .foregroundColor(.white)
        .padding(16)
        .frame(width: 252, height: 329)
        .background(LinearGradient(
            gradient: Gradient(stops: [
                .init(color: Color(.blue), location: 0),
                .init(color: Color(.purple), location: 1)]),
            startPoint: UnitPoint(x: 0.5002249700310126, y: 3.0834283490377423e-7),
            endPoint: UnitPoint(x: -0.0016390833199537713, y: 0.977085239704672)))
        .cornerRadius(30)
    }
  }

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(item: Item(title: "SwiftUI for iOS 14", text: "A complete guide to designing for iOS 14 with videos, examples and design files", image: "Blob 1",details: "fffff", gradient: LinearGradient(
            gradient: Gradient(stops: [
                .init(color: Color(.blue), location: 0),
                .init(color: Color(.purple), location: 1)]),
            startPoint: UnitPoint(x: 0.5002249700310126, y: 3.0834283490377423e-7),
            endPoint: UnitPoint(x: -0.0016390833199537713, y: 0.977085239704672))))
    }
}
