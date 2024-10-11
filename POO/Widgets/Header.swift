//
//  Header.swift
//  POO
//
//  Created by Cristian Gómez  on 09/10/24.
//

import SwiftUI

struct Header : View{
    
    var body: some View{
        
        HStack{
            AsyncImage(url: URL(string: "https://picsum.photos/75"))
                .cornerRadius(38)
            
            VStack(alignment: .leading){
                Text("Good Morning")
                    .foregroundStyle(.gray)
                    .font(.caption)
                Text("Cristian Gómez")
                    .font(.title2)
                    .bold()
            }
            
            Spacer()
            
            ZStack{
                Circle()
                    .frame(width: 40)
                    .foregroundStyle(.white)
                Image(systemName: "bell")
                    .font(.title2)
                    .overlay(
                        Circle()
                            .frame(width: 5)
                            .foregroundStyle(.purple)
                            .position(x: 20, y: 8)
                    )
            }
            .padding()
            .cornerRadius(20)
            .shadow(radius: 5, x: 3, y: 3)
        }.padding()
    }
}

#Preview{
    Header()
}
