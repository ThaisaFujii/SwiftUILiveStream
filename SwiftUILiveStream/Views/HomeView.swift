//
//  HomeView.swift
//  SwiftUILiveStream
//
//  Created by Thaisa Fujii on 5/6/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 16){
                        ForEach(items) { item in
                            NavigationLink(destination: DetailView()) {
                                // Components with dynamic data inside the loop
                                CardView(item:item)
                            }
                        }
                    }
                    .padding() // 16 by deafult
                }
                .navigationTitle("Learn SwiftUI")
                
                Text("Recent course")
                    .font(.subheadline).bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                // have multilple columns that will be
                LazyVGrid(columns:
                            [GridItem(.adaptive(minimum: 160), spacing: 16)]) {
                    ForEach(items) { item in
                        NavigationLink(destination: DetailView()) {
                        SmallCardView(item:item)
                        }
                    }
                }
                .padding()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewInterfaceOrientation(.portrait)
    }
}
