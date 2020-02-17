//
//  ContentView.swift
//  ListSample
//
//  Created by MakeItSimple on 2020/02/18.
//  Copyright © 2020 Ju Young Jung. All rights reserved.
//

import SwiftUI

struct Weather: Identifiable {
    var id = UUID()
    var image: String
    var temp: Int
    var city: String
}

struct ContentView: View {
    
    let weathers: [Weather] = [
        Weather(image: "cloud.rain", temp: 10, city: "Seoul")
        , Weather(image: "cloud.sun.rain", temp: 30, city: "BangKuk")
        , Weather(image: "sun.max", temp: 13, city: "Japen")
        , Weather(image: "cloud.sun", temp: 12, city: "China")
    ]
    
    var body: some View {
        NavigationView() {
            List(weathers) { model in
                NavigationLink(destination: Text(model.city).font(.largeTitle)) {
                    HStack {
                        Image(systemName: model.image)
                        .frame(width: 50, height: 10, alignment: .leading)
                        
                        Text("\(model.temp)")
                            .frame(width: 50, height: 10, alignment: .leading)
                        
                        VStack {
                            Text(model.city)
                        }
                        
                    }.font(.title)
                }
            }.navigationBarTitle(Text("World Weather")) // List 에 붙혀야 함 유의
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
