//
//  Pokemon.swift
//  PokemonWidget_SwiftUI
//
//  Created by PINAR KALKAN on 3.10.2023.
//

import Foundation


struct Pokemon: Identifiable, Codable {
    let imageName: String
    let name: String
    let species: String
    
    var id: String {
        imageName
    }
}


let pikachu = Pokemon(imageName: "pikachu", name: "Pikachu", species: "Mouse Pokemon")
let caterpie = Pokemon(imageName: "caterpie", name: "Caterpie", species: "Worm Pokemon")
let jigglypuff = Pokemon(imageName: "jigglypuff", name: "Jigglypuff", species: "Balloon Pokemon")


let pokemonArray = [pikachu, caterpie, jigglypuff]
