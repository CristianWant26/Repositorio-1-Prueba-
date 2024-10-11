//
//  HomeTab.swift
//  POO
//
//  Created by Cristian Gómez  on 09/10/24.
//

import SwiftUI

struct HomeTab : View {
    
    let titulos = ["Invite Friends", "Add Card"]
    let descripciones = ["Invite your friends using our application", "Add your card make transactions easier"]
    let formas = ["Circle", "Rectangle"]
    
    
    var body: some View {
        
        VStack{
            
            Header()
            
            Card()
            
            Transactions()
                .padding()
            
            HStack{
                    ForEach (0..<2) { item in
                        InviteCard(titulo: titulos[item],
                                   descripcion: descripciones[item],
                                   forma: formas[item]
                        )
                    }
            }
            .padding()
            Spacer()
        }
        .padding()
    }
    
}
#Preview{
    HomeTab()
    
}
