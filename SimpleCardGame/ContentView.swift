//
//  ContentView.swift
//  SimpleCardGame
//
//  Created by Filippo Sighinolfi on 14/05/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Image("wallpaper")
                    .resizable()
                    .ignoresSafeArea()
                VStack{
                    Text("Welcome to my iOS Card game!")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Spacer()
                    NavigationLink(
                        destination: GameUI(),
                        label: {
                            VStack{
                                Image(systemName: "play.circle")
                                    .resizable()
                                    .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .accentColor(.white)
                                Text("Play")
                                    .accentColor(.white)
                            }
                        })
                    Spacer()
                    NavigationLink(
                        destination: InfoPage(),
                        label: {
                            HStack{
                                Image(systemName:"info.circle")
                                    .accentColor(.white)
                                Text("Made by Sighi")
                                    .accentColor(.white)
                            }
                        })
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
