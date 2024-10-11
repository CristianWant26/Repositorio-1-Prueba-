//
//  Boton.swift
//  POO
//
//  Created by Cristian Gómez  on 09/10/24.
//

import SwiftUI

struct Boton: View{
    @State var nombre : String
    @State var imagen : String
    @State var color : Color = .white
    @State var ImagenColor : Color = .black
    
    var body: some View {
        VStack{
            Image(systemName: imagen)
                .font(.title2)
                .bold()
                .frame(width: 65, height: 65)
                .background(color)
                .backgroundStyle(ImagenColor)
                .cornerRadius(40)
            
            Text(nombre).foregroundStyle(.white)
        }
    }
}


#Preview{
    Boton(nombre: "Hola", imagen: "dollar.circle")
}
