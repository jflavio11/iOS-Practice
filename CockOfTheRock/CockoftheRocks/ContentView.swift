//
//  ContentView.swift
//  Landmarks
//
//  Created by Jose Flavio Quispe on 20/03/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -160)
                .padding(.bottom, -200)
            
            VStack(alignment: .leading) {
                
                Text("Gallito de las rocas")
                    .font(.title)
                
                HStack {
                    Text("Parque nacional Manu")
                    Spacer()
                    Text("Madre de Dios")
                }.font(.subheadline)
                .foregroundColor(.gray)
                
                Divider()
                
                Text("Acerca del Gallito de las Rocas")
                    .font(.title3)
                
                Text(gallitoDesc)
                    .font(.body)
                
            }.padding()
            
            Spacer()
        }
        
    }
    
    let gallitoDesc = "El gallito de las rocas peruano, (en quechua: tunki) o simplemente gallito de las rocas (Rupicola peruvianus), es una especie de ave paseriforme de la familia Cotingidae, una de las dos perteneciente al género Rupicola. Es nativo de la región andino - amazónica del noroeste y oeste de América del Sur. No se conocen subespecies. Su pariente más cercano es el gallito de las rocas guayanés (R. rupicola) y es notable por la increíble belleza de su plumaje. En Ecuador se lo puede encontrar en las estribaciones occidentales de los Andes."
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
