//
//  WidgetPokemonBundle.swift
//  WidgetPokemon
//
//  Created by PINAR KALKAN on 3.10.2023.
//

import WidgetKit
import SwiftUI

@main
struct WidgetPokemonBundle: WidgetBundle {
    var body: some Widget {
        WidgetPokemon()
        WidgetPokemonLiveActivity()
    }
}
