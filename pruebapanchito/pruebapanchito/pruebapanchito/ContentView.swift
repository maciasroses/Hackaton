//
//  ContentView.swift
//  iDonate1
//
//  Created by Sergio Chavez on 25/09/22.
//

import SwiftUI

struct ContentView: View {
    @State var user = ""
    @State var password = ""
    
    var body: some View {
        VStack{
            Spacer()
            Text("iDonate")
                .padding(.bottom, 30)
            
            Text("Inicio de sesión")
            TextField(" ", text: $user)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            SecureField(" ", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Text("¿Aún no tienes cuenta?")
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
