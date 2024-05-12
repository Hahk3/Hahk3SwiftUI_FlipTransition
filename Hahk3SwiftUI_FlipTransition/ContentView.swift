//
//  ContentView.swift
//  Hahk3SwiftUI_FlipTransition
//
//  Created by Hakjin Kim on 5/12/24.
//

import SwiftUI

struct ContentView: View {
    @State var flip : Bool = false
    
    var body: some View {
        NavigationStack{
            Button {
                withAnimation(.bouncy) {
                    flip.toggle()
                }
            } label: {
                ZStack {
                    if flip {
                        VStack(alignment:.leading, spacing:16){
                            Text("Earth").font(.title).bold()
                            Text("Earth is the third planet from the Sun and the only astronomical object known to harbor life. This is enabled by Earth being a water world, the only one in the Solar System sustaining liquid surface water. Almost all of Earth's water is contained in its global ocean, covering 70.8% of Earth's crust. The remaining 29.2% of Earth's crust is land, most of which is located in the form of continental landmasses within Earth's land hemisphere. Most of Earth's land is somewhat humid and covered by vegetation, while large sheets of ice at Earth's polar deserts retain more water than Earth's groundwater, lakes, rivers and atmospheric water combined. Earth's crust consists of slowly moving tectonic plates, which interact to produce mountain ranges, volcanoes, and earthquakes. Earth has a liquid outer core that generates a magnetosphere capable of deflecting most of the destructive solar winds and cosmic radiation.")
                                
                        }
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 300, height: 400)
                        .background(RoundedRectangle(cornerRadius: 25).fill(.blue.gradient))
                        .transition(.reverseFlip)
                    } else {
                        Image(.earth)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 200, height: 400)
                            .mask {
                                RoundedRectangle(cornerRadius: 25)
                                    .frame(width: 300, height: 400)
                            }
                            .transition(.flip)
                    }
                }
            }.buttonStyle(ButtonStyle_scale())
            .navigationTitle("Flip Trasition")
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    Text("@Hahk3").bold()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
