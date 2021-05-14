//
//  GameUI.swift
//  SimpleCardGame
//
//  Created by Filippo Sighinolfi on 14/05/21.
//

import SwiftUI

struct GameUI: View {
    @State var cpucard = "back"
    @State var playercard = "back"
    @State var  cpuscore:Int=0
    @State var playerscore:Int=0
    @State var eseguito:Bool=false;
    //Function to get a random int between 1 and 14
    func genera1_14() -> Int {
        let random = Int.random(in: 2..<15)
        return random
    }
    //Function to find the winner of the match
    func vincitore(numeroCPU:Int, numeroPlayer:Int) -> String {
        if numeroCPU>numeroPlayer {
            return "CPU"
        }
        else {
            if (numeroPlayer>numeroCPU) {
                return "player"
            }
            else {
                return "same"
            }
        }
    }
    //Function to change the cards and assing scores, using the previous functions
    func giocata() -> Void {
        let numerogiocatore=genera1_14()
        let numerocpu=genera1_14()
        let result=vincitore(numeroCPU:numerocpu, numeroPlayer:numerogiocatore)
        cpucard="card"+String(numerocpu)
        playercard="card"+String(numerogiocatore)
        if result=="CPU" {
            cpuscore+=1
        }
        if result=="player" {
            playerscore+=1
        }
        if result=="same" {
            cpuscore+=1
            playerscore+=1
        }
    }
    var body: some View {
        ZStack{
            Image("wallpaper")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Group{
                    Spacer()
                    Image("logo")
                    Spacer()
                    Spacer()
                    HStack{
                        Spacer()
                        Image(cpucard)
                        Spacer()
                        Image(playercard)
                        Spacer()
                    }
                    Spacer()
                }
                Button(action: {
                    giocata()
                }, label: {
                    Image("dealbutton")
                })
                Spacer()
                Button(action: {
                    playercard = "back"
                    cpucard="back"
                    cpuscore=0
                    playerscore=0
                }, label: {
                    Text("Reset")
                })
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        Text(String(cpuscore))
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    }
                    Spacer()
                    VStack{
                        Text("PLAYER")
                            .font(.title)
                        Text(String(playerscore))
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct GameUI_Previews: PreviewProvider {
    static var previews: some View {
        GameUI()
    }
}
