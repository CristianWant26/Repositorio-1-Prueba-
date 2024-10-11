//
//  Operations.swift
//  AppBonita
//
//  Created by Cristian Gómez  on 08/10/24.
//

import SwiftUI

struct Operations : View{
    
    @State var ingreso: Bool = false
    @State var cantidad : Int = 3000
    
    var body: some View{
        HStack{
            AsyncImage(url: URL(string: "https://picsum.photos/50")
            ).cornerRadius(25)
            
            VStack (alignment: .leading) {
                Text("Cristian Gómez").font(.title2).bold()
                Text("08 de Oct de 2024").foregroundStyle(.gray)
            }
            Spacer()
            
            VStack (alignment: .trailing) {
                Text("$\(cantidad)")
                    .font(.title3)
                    .foregroundStyle((ingreso) ? .green : .red)
                    .bold()
                Text((ingreso) ? "Recived" : "Outgoing")
                    .font(.caption)
            }
            
        }
    }
}

#Preview {
    Operations()
}
