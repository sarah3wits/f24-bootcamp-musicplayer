//
//  ContentView.swift
//  ios_bootcamp_spotify
//
//  Created by Sarah Threewits on 9/24/24.
//

import SwiftUI

struct ContentView: View {
    @State private var songProgress: Double = 11 / 206
       var body: some View {
           
           VStack(alignment: .center, spacing:5) {
               HStack {
                   Image(systemName: "chevron.down")
                       .font(.system(size:20))
                       .foregroundColor(.white)
                       .fontWeight(.light)
                   
                   Spacer()
                   Text("Velocifero")
                       .font(.footnote)
                       .foregroundColor(.white)
                       .bold()
                   Spacer()
                   Image(systemName: "ellipsis")
                       .font(.system(size:20))
                       .foregroundColor(.white)
                       .fontWeight(.light)
               }
               Image("Ladytron")
                   .resizable()
                   .scaledToFit()
                   .shadow(radius:8)
                   .padding(.vertical, 60)
               
               HStack {
                   VStack(alignment: .leading, spacing: 2) {
                       HStack {
                           VStack {
                               Text("Ghosts")
                                   .font(.title2)
                                   .bold()
                                   .foregroundColor(.white)
                               Text("Ladytron")
                                   .font(.callout)
                                   .foregroundColor(.white)
                           }
                           Spacer()
                           Image(systemName: "heart")
                               .font(.system(size: 25))
                               .foregroundColor(.gray)
                       }
                       .padding(.bottom, 15)
                           VStack {
                               Slider(value: $songProgress, in: 0...1)
                                   .accentColor(.white)
                               HStack {
                                   Text("0:11")
                                       .font(.footnote)
                                       .foregroundColor(.white)
                                   Spacer()
                                   Text("-3:26")
                                       .font(.footnote)
                                       .foregroundColor(.white)
                               }
                           }
                       
                       HStack() {
                               Image(systemName: "shuffle")
                               .font(.system(size: 22))
                               .foregroundColor(.green)
                           Spacer()
                               Image(systemName: "backward.end.fill")
                               .font(.system(size: 30))
                               .foregroundColor(.white)
                           Spacer()
                               Image(systemName: "pause.circle.fill")
                               .font(.system(size: 65))
                               .foregroundColor(.white)
                           Spacer()
                               Image(systemName: "forward.end.fill")
                               .font(.system(size: 30))
                               .foregroundColor(.white)
                           Spacer()
                               Image(systemName: "repeat")
                               .font(.system(size: 22))
                               .foregroundColor(.green)
      
                       }
                       .padding(.bottom, 20)
                       HStack {
                           Image(systemName: "tv.and.hifispeaker.fill")
                               .foregroundColor(.white)
                           Spacer()
                               .foregroundColor(.white)
                           Image(systemName: "square.and.arrow.up")
                               .padding(.horizontal, 15)
                               .foregroundColor(.white)
                           Image(systemName: "text.line.first.and.arrowtriangle.forward")
                               .padding(.horizontal, 5)
                               .foregroundColor(.white)
                       }
                       
                   }
               }
               Spacer()
           }
           .padding(.horizontal, 25)
           .background(
               LinearGradient (colors: [Color(hue: 0.3, saturation: 0.28, brightness:0.5), Color(hue: 0.3, saturation: 0.3, brightness:0.2)], startPoint: .top, endPoint: .bottom)
               )
       }
   }

   #Preview {
       ContentView()
   }

