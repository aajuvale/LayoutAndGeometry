//
//  ContentView.swift
//  LayoutAndGeometry
//
//  Created by Ahmed Juvale on 8/19/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        GeometryReader { proxy in
//            Image(.example)
//                .resizable()
//                .scaledToFit()
//                .frame(width: proxy.size.width * 0.8, height: 300)
//        }

        HStack {
            Text("IMPORTANT")
                .frame(width: 200)
                .background(.blue)

//            Image(.example)
//                .resizable()
//                .scaledToFit()
//                .containerRelativeFrame(.horizontal) { size, axis in
//                    size * 0.8
//                }
            GeometryReader { proxy in
                Image(.example)
                    .resizable()
                    .scaledToFit()
                    .frame(width: proxy.size.width * 0.8)
                    .frame(width: proxy.size.width, height: proxy.size.height)
            }
        }
    }
}

#Preview {
    ContentView()
}
