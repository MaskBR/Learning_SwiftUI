//
//  DemoView.swift
//  Shared
//
//  Created by J on 2022/5/12.
//

import SwiftUI

struct DemoView:View{
    @State var isWatered = false
    var body: some View{
        VStack {
            ZStack{
                Image("扬州-18")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                Image(systemName: isWatered ? "crown.fill" : "eyes.inverse")
                    .font(.system(size: 150))
                    .foregroundColor(isWatered ? .yellow : .white)
            }
            .frame(minHeight:600)
            .shadow(radius:20)
            Divider()
            Toggle(isOn: $isWatered){
                Label("你喝水了么？", systemImage: "drop.fill")
            }.foregroundColor(.blue)
        }
        .padding()
    }}

struct ContentView_previews:PreviewProvider{
    static var previews: some View{
        DemoView()
    }
}

// complicated
