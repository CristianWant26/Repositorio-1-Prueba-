//
//  InviteCard.swift
//  POO
//
//  Created by Cristian Gómez  on 09/10/24.
//

import SwiftUI

struct InviteCard : View {
    
    @State var titulo : String = ""
    @State var descripcion : String = ""
    @State var forma : String = ""
    
    var body: some View {
        
        HStack {
            VStack {
                HStack(spacing: -10){
                    
                    if forma == "Circle" {
                        ForEach(0..<3){ item in
                            AsyncImage(url: URL(string:"https://picsum.photos/40")
                            )
                            .cornerRadius(20)
                            .overlay(
                                Circle().stroke(.white).frame(width: 40)
                            )
                        }
                    }
                    else if forma == "Rectangle"{
                        HStack (spacing: -20){
                            ForEach(0..<2){ item in
                                Image("card")
                                    .resizable()
                                    .frame(width: 80, height: 55)
                                .cornerRadius(5)
                                .shadow(radius: 3, x: 3, y:3)
                            }
                        }
                    }
                    
                    Button{
                        
                    }label: {
                        Image(systemName: "plus")
                            .frame(width: 20, height: 20)
                            .background(.purple)
                            .foregroundStyle(.white)
                            .cornerRadius(20)
                    }
                }
                Text(titulo)
                    .font(.title2)
                    .bold()
                
                Text(descripcion)
                    .font(.caption)
                    .foregroundStyle(.gray)
                    .multilineTextAlignment(.center)
                
            }
            .padding(.vertical)
            .frame(width: 200, height: 150)
            .background(.gray.opacity(0.3))
            .cornerRadius(20)
            
        }
    }
}

#Preview {
    InviteCard()
        
}
