//
//  ContentView.swift
//  PokemonWidget_SwiftUI
//
//  Created by PINAR KALKAN on 3.10.2023.
//

import SwiftUI
import WidgetKit

struct ContentView: View {
    
//Hangi pokemona tıklandıysa onu kaydetmek ve kullanıcı lokalinde tutmak için AppStorage kullanıyoruz. Aslında ile bu veriyi user defaults ile lokale kaydediyor. Ama AppStorage buna kolaylıkla erişebilmemize olanak tanıyor. UserDefaultsa veri kaydetmeyi ve çekmeyi çok kolay hale getiriyor.
//Bu kaydettiğimiz veriyi widgetlarda kullanacağız.
    
    @AppStorage("pokemon", store: UserDefaults(suiteName: "group.com.pinarkalkan.PokemonWidget-SwiftUI"))
    var pokemonData: Data = Data()
 
    var body: some View {
        VStack {
            ForEach(pokemonArray) { pokemon in
                PokemonView(pokemon: pokemon).onTapGesture(perform: {
                    saveUserDefaults(pokemon: pokemon)
                })
            }
             
        }
        .padding()
    }
    
    func saveUserDefaults(pokemon: Pokemon) {
        
        if let pokemonData = try? JSONEncoder().encode(pokemon) {
            self.pokemonData = pokemonData
            print(pokemon.name)
            
            //Seçtiğimiz pokemonu widgeta bildirmek için
            WidgetCenter.shared.reloadTimelines(ofKind: "WidgetPokemon")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
