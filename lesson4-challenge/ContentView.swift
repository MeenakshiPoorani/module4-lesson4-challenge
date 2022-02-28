//
//  ContentView.swift
//  lesson4-challenge
//
//  Created by Meenakshi Poorani Seenivelan on 01/03/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0.0)
        {
            GeometryReader{ geo in
                Rectangle().foregroundColor(.green)
                Rectangle().foregroundColor(.red).frame(width: 2/3*geo.size.width, height: geo.size.height/4).position(x: geo.frame(in: .local).midX, y: geo.frame(in: .local).midY)
            }
            GeometryReader{ geo in
                /*
                HStack(spacing: 0.0) {
                    Rectangle().foregroundColor(.purple).frame(width: geo.size.width/2, height: geo.size.height)
                    Rectangle().foregroundColor(.orange).frame(width: geo.size.width/2, height: geo.size.height)
                }*/
                
                Rectangle().foregroundColor(.purple).frame(width: geo.size.width/2, height: geo.size.height)
                Rectangle().foregroundColor(.orange).frame(width: geo.size.width/2, height: geo.size.height).position(x: geo.frame(in: .local).maxX*3/4, y: geo.frame(in: .local).midY)
               
            }
        }.ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11")
    }
}
