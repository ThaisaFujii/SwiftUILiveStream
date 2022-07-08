//
//  DetailView.swift
//  SwiftUILiveStream
//
//  Created by Thaisa Fujii on 5/6/22.
//

import SwiftUI

struct DetailView: View {
    var item: Item
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 8){
                Image(item.image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 128)
                    .frame(maxWidth: .infinity)
                Text(item.title)
                    .font(.title)
                    .fontWeight(.bold)
                Text(item.text)
                    .lineLimit(2)
                    .opacity(0.7)
                Text("20 sections - 3 hours")
                    .opacity(0.7)
            }
            .foregroundColor(.white)
            .padding(16)
            .background(item.gradient)
            
            VStack(alignment: .leading, spacing: 16) {
                Text(item.text)
                    .font(.headline)
                Text("This course")
                    .font(.title).bold()
                Text(item.details)
            }
            .padding()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(item: Item(title: "SwiftUI for iOS 14", text: "A complete guide to designing for iOS 14 with videos, examples and design files", image: "Blob 1", details: "aaaaaaa", gradient: LinearGradient(
            gradient: Gradient(stops: [
                .init(color: Color(.blue), location: 0),
                .init(color: Color(.purple), location: 1)]),
            startPoint: UnitPoint(x: 0.5002249700310126, y: 3.0834283490377423e-7),
            endPoint: UnitPoint(x: -0.0016390833199537713, y: 0.977085239704672))))
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}
