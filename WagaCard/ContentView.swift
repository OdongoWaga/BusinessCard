//
//  ContentView.swift
//  WagaCard
//
//  Created by JFJ on 19/10/2019.
//  Copyright © 2019 JFJ. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green:0.63, blue: 0.52)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("Mariga")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                
                
                Text("McDonald Mariga")
                .font(Font.custom("Pacifico-Regular", size: 40))
                .bold()
                .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                
                Divider()
                
                InfoView(text: "+254 723 564 768", imageName: "phone.fill")
                
                InfoView(text: "mariga@sugoi.com", imageName: "envelope.fill")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(HStack {
                Image(systemName: imageName).foregroundColor(.green)
                
                Text(text).foregroundColor(.black)
            }).padding(.all)
    }
}
