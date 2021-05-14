//
//  InfoPage.swift
//  SimpleCardGame
//
//  Created by Filippo Sighinolfi on 14/05/21.
//

import SwiftUI

struct InfoPage: View {
    var body: some View {
        ZStack{
            Image("wallpaper")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Text("About this app")
                    .font(.largeTitle)
                Spacer()
                Text("Hi there!")
                Text("This is just a small app I made following the CodeWithChris tutorial over on YouTube")
                Spacer()
            }
        }
    }
}

struct InfoPage_Previews: PreviewProvider {
    static var previews: some View {
        InfoPage()
    }
}
