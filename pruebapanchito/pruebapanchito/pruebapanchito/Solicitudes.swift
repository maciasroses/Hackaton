//
//  Solicitudes.swift
//  pruebapanchito
//
//  Created by Victoria Lucero on 25/09/22.
//

import SwiftUI

struct Solicitudes: View {
    var body: some View {
        VStack{
            HStack{
                Text("Tus solicitudes")
                    .padding(.leading, 50)
                    .padding(.top, 20)
                    .font(.title2)
                Spacer()
            }
            
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color("blueRect"))
                    .frame(width: 300, height: 175)
                VStack{
                    HStack {
                        Image("luisaPerf")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .padding(.leading, 57)
                        Text("Luisa Castillo")
                        Spacer()
                        Image("yellowClock")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .padding(.trailing, 55)
                    } .padding(.bottom, 20)
                    
                    HStack {
                        Image("droplet")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .padding(.leading, 57)
                        Text("Hospital Zambrano")
                        Spacer()
                        Image("droplet")
                            .resizable()
                            .frame(width: 30, height: 30)
                        Text("Sangre")
                            .padding(.trailing, 65)
                    }
                }
            }.padding(.bottom, 20)
            
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color("blueRect"))
                    .frame(width: 300, height: 175)
                VStack{
                    HStack {
                        Image("otroPerfil")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .padding(.leading, 57)
                        Text("Juan Barrera")
                        Spacer()
                        Image("yellowClock")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .padding(.trailing, 55)
                    } .padding(.bottom, 20)
                    
                    HStack {
                        Image("droplet")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .padding(.leading, 57)
                        Text("Hospital Ángeles")
                        Spacer()
                        Image("droplet")
                            .resizable()
                            .frame(width: 30, height: 30)
                        Text("Sangre")
                            .padding(.trailing, 65)
                    }
                }
            }.padding(.bottom, 20)
            
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color("blueRect"))
                    .frame(width: 300, height: 75)
                HStack{
                    Image("plus")
                        .padding(.leading, 57)
                    Spacer()
                    Text("Nueva solicitud")
                        .padding(.trailing, 120)
                }
            }
            
            Spacer()
        }
    }
}

struct Solicitudes_Previews: PreviewProvider {
    static var previews: some View {
        Solicitudes()
    }
}
