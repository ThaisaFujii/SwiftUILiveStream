//
//  Data.swift
//  SwiftUILiveStream
//
//  Created by Thaisa Fujii on 5/6/22.
//

import SwiftUI

struct Item: Identifiable{
    var id = UUID()
    var title: String
    var text: String
    var image: String
    var gradient: LinearGradient
}
//sample data
var items = [
    
    Item(title: "SwiftUI for iOS 14", text: "A complete guide to designing for iOS 14 with videos, examples and design files", image: "Blob 1", gradient: LinearGradient(
        gradient: Gradient(stops: [
            .init(color: Color(.blue), location: 0),
            .init(color: Color(.purple), location: 1)]),
        startPoint: UnitPoint(x: 0.5002249700310126, y: 3.0834283490377423e-7),
        endPoint: UnitPoint(x: -0.0016390833199537713, y: 0.977085239704672))),
    Item(title: "UI Design for Developers", text: "A complete guide to designing for iOS 14 with videos, examples and design files", image: "Blob 2", gradient: LinearGradient(
        gradient: Gradient(stops: [
            .init(color: Color(.blue), location: 0),
            .init(color: Color(.cyan), location: 1)]),
        startPoint: UnitPoint(x: 0.5002249700310126, y: 3.0834283490377423e-7),
        endPoint: UnitPoint(x: -0.0016390833199537713, y: 0.977085239704672))),
    Item(title: "UI Design Handbook", text: "A complete guide to designing for iOS 14 with videos, examples and design files", image: "Blob 3", gradient: LinearGradient(
        gradient: Gradient(stops: [
            .init(color: Color(.red), location: 0),
            .init(color: Color(.blue), location: 1)]),
        startPoint: UnitPoint(x: 0.5002249700310126, y: 3.0834283490377423e-7),
        endPoint: UnitPoint(x: -0.0016390833199537713, y: 0.977085239704672))),
    Item(title:"LiveStream", text: "A complete guide to designing for iOS 14 with videos, examples and design files", image: "Blob 4", gradient: LinearGradient(
        gradient: Gradient(stops: [
            .init(color: Color(.red), location: 0),
            .init(color: Color(.blue), location: 1)]),
        startPoint: UnitPoint(x: 0.5002249700310126, y: 3.0834283490377423e-7),
        endPoint: UnitPoint(x: -0.0016390833199537713, y: 0.977085239704672)))
]
