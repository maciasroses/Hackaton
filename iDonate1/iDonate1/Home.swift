//
//  ContentView.swift
//  iDonate1
//
//  Created by Sergio Chavez on 25/09/22.
//

import SwiftUI

struct Home: View {
    @State var user = ""
    @State var password = ""
    @State var showView: Bool = false
    
    var body: some View {
        VStack{
        Spacer()
            .frame(height: 50)
        VStack(spacing: 20){
            
            Text("iDonate")
                .padding(.bottom, 30)
            
            Text("Inicio de sesión")
            
            
        }
        
        Spacer()
            .frame(height:30)
        VStack(spacing: 10){
            TextField("Usuario", text: $user)
                .background(Color("bluePrimary"))
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .cornerRadius(20)
                .frame(width: 330)
            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 330)
                .cornerRadius(20)
        }
        Spacer()
            .frame(height:30)
        VStack{
            
            Button{
                showView.toggle()
            } label: {
                Text("Iniciar sesión")
                    .padding()
                    .background(
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.white)
                                    .shadow(color: .gray, radius: 2, x: 0, y: 2)
                            )
                    .buttonStyle(PlainButtonStyle())
            }

            Spacer()
                .frame(height:30)
            Text("¿Aún no tienes cuenta?")
            Button{
                Registr()
            } label: {
                Text("Regístrate aquí")
                    .padding()
                    .buttonStyle(PlainButtonStyle())
            }
        }
        }
        .fullScreenCover(isPresented: $showView){
            HomeView()
        }
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
