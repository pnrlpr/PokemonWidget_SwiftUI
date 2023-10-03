//
//  ImageItself.swift
//  PokemonWidget_SwiftUI
//
//  Created by PINAR KALKAN on 3.10.2023.
//

import SwiftUI

struct ImageItself: View {
    
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.orange, lineWidth: 8))
            .shadow(radius: 10)
        
    }
}

struct ImageItself_Previews: PreviewProvider {
    static var previews: some View {
        ImageItself(image: Image("pikachu"))
    }
}
