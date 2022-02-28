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
            
            //using just 1 geometry reader
            //NOTE : Use geo.size inside .frame modifier to set size & use geo.frame(in : .local).minX etc. inside .position modifier
            
            GeometryReader{ geo in
                Rectangle().foregroundColor(.green).frame(width: geo.size.width, height: geo.size.height/2)
                Rectangle().foregroundColor(.red).frame(width: 2/3*geo.size.width, height: geo.size.height/8).position(x: geo.frame(in: .local).maxX/2, y: geo.frame(in: .local).maxY/4)
            
                Rectangle().foregroundColor(.purple).frame(width: geo.size.width/2, height: geo.size.height/2).position(x: geo.frame(in: .local).maxX/4, y: geo.frame(in: .local).maxY*3/4)
                Rectangle().foregroundColor(.orange).frame(width: geo.size.width/2, height: geo.size.height/2).position(x: geo.frame(in: .local).maxX*3/4, y: geo.frame(in: .local).maxY*3/4)
               
            
        }.ignoresSafeArea()
    }
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13")
    }
}
