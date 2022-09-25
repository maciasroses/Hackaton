//
//  Beneficios.swift
//  iDonate1
//
//  Created by Sergio Chavez on 25/09/22.
//

import SwiftUI

struct Beneficios: View {
    var body: some View {
        VStack{
            Text("Mis beneficios")
            HStack{
                Image("health")
                Text("10% de descuento en tu próxima cita")
            }
            .padding(18)
            .frame(width: 340)
            //            .background(Color("bluePrimary"))
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color("bluePrimary"))
            )
            Text("Canjea tus puntos")
            HStack{
                Image("cart")
                Text("10% de descuento en tu próxima cita")
            }
            .padding(18)
            .frame(width: 340)
            //            .background(Color("bluePrimary"))
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color("bluePrimary"))
            )
        }
    }
}

struct Beneficios_Previews: PreviewProvider {
    static var previews: some View {
        Beneficios()
    }
}
