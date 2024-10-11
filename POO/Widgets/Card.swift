//
//  Card.swift
//  POO
//
//  Created by Cristian Gómez  on 09/10/24.
//

import SwiftUI

struct Card : View{
    
    let nombres = ["Top Up", "Swap", "Transfer", "Request"]
    
    let imagenes = ["plus", "arrow.left.arrow.right", "dollarsign", "dollarsign.circle"]
    
    var body: some View {
        
        VStack(alignment: .leading){
            
            Text("Your Balance")
                .foregroundStyle(.white)
            Text("$27,918.00")
                .font(.title2)
                .foregroundStyle(.white)
                .bold()
            Text("Credit limit: $1,000,000.00")
                .foregroundStyle(.gray.opacity(0.8))
            
            HStack{
                ForEach (0..<4){ i in Boton(
                    nombre: nombres[i],
                    imagen: imagenes[i],
                    color: (i == 0) ? .purple.opacity(0.5) : .white,
                    ImagenColor: (i == 0) ? .white: .black
                )
                }
            }
            
        }
        .frame(width: 350, height: 250)
        .background(
            LinearGradient(
                colors: [.black, .black.opacity(0.4)],
                startPoint: .leading, endPoint: .trailing
            )
        )
        .cornerRadius(20)
        .shadow(radius: 8, x: 5, y:5)
    }
}

#Preview {
        Card()
    }
