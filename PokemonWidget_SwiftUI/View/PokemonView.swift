//
//  PokemonView.swift
//  PokemonWidget_SwiftUI
//
//  Created by PINAR KALKAN on 3.10.2023.
//

import SwiftUI

struct PokemonView: View {
    
    let pokemon: Pokemon
    
    var body: some View {
        HStack {
            
            ImageItself(image: Image(pokemon.imageName))
                .frame(width: 100, height: 100, alignment: .center)
                .padding()
            Spacer()
            VStack {
                Text(pokemon.name)
                    .font(.title)
                    .bold()
                    .foregroundColor(.pink)
                Text(pokemon.species)
                    .bold()
                    .foregroundColor(.gray)
            }
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width, height: 150)
    }
}

struct PokemonView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonView(pokemon: pikachu)
    }
}
