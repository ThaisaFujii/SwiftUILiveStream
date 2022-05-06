//
//  ListView.swift
//  SwiftUILiveStream
//
//  Created by Thaisa Fujii on 5/6/22.
//

import SwiftUI

struct ListView: View {
    // by default dont wanna show my model
    @State var isShow = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(0 ..< 5) { item in
                   ListItem()
                    // If I show my model
                        .sheet(isPresented: $isShow, content: {
                            DetailView()
                        })
                    // when a tap happens the event will show - DetailView
                        .onTapGesture {
                            // toggle is like a button true/false
                            isShow.toggle()
                        }
                }
            }
            .navigationTitle("Courses")
        }
    }
}
struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
