//
//  HomeView.swift
//  iDonate1
//
//  Created by Sergio Chavez on 25/09/22.
//

import SwiftUI

struct HomeView: View {
    @State private var showH = false
    var body: some View {
        HStack{
            Text("Bienvenido, Francisco")
            Spacer()
            Image("imageProfile")
                .resizable()
                .scaledToFit()
                .frame(width:70)
        }
        .frame(width: 340)
        
        VStack{
            Text("Citas")
            VStack{
                HStack{
                    Image("cita")
                        .resizable()
                        .scaledToFit()
                        .frame(width:70)
                    Text("Paulina Juarez")
                }
                HStack{
                    HStack{
                        Image("blood")
                        Text("Plaquetas")
                    }
                    Spacer()
                    HStack{
                        Image("clock")
                        Text("19:00")
                    }
                }
                HStack{
                    HStack {
                        Image("hospital")
                            .resizable()
                            .scaledToFit()
                            .frame(width:60)
                        Text("Hosp. Zambrano")
                    }
                    Spacer()
                    HStack{
                        Image("calendar")
                        Text("03.11.22")
                    }
                }
            }
            .padding(18)
            .frame(width: 340)
            //            .background(Color("bluePrimary"))
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color("bluePrimary"))
            )
            
            
            
        }
        
        VStack{
            Text("Solicitudes")
            VStack{
                HStack{
                    Image("juan")
                        .resizable()
                        .scaledToFit()
                        .frame(width:70)
                    Text("Juan Barrera")
                    Spacer()
                    HStack{
                        Button{
                            
                        } label: {
                            Text("Donar")
                                .padding()
                                .background(
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(Color.white)
                                        .shadow(color: .gray, radius: 2, x: 0, y: 2)
                                )
                                .buttonStyle(PlainButtonStyle())
                        }
                        
                    }
                }
                
                HStack{
                    HStack {
                        Image("hospital")
                            .resizable()
                            .scaledToFit()
                            .frame(width:60)
                        Text("Hosp. Zambrano")
                    }
                    Spacer()
                    HStack{
                        Image("calendar")
                        Text("03.11.22")
                    }
                }
            }
            .padding(18)
            .frame(width: 340)
            //            .background(Color("bluePrimary"))
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color("bluePrimary"))
            )
            VStack{
                Text("Lugares")
                VStack{
                    HStack{
                        Image("hosp")
                            .resizable()
                            .scaledToFit()
                            .frame(width:120)
                        Spacer()
                        Image("hospital")
                            .resizable()
                            .scaledToFit()
                            .frame(width:60)
                        Text("Hosp. Zambrano")
                        
                    }
                    HStack{
                        Button{
                        } label: {
                            Text("Donar")
                                .padding()
                                .background(
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(Color.white)
                                        .shadow(color: .gray, radius: 2, x: 0, y: 2)
                                )
                                .buttonStyle(PlainButtonStyle())
                        }
                        
                        Spacer()
                        HStack{
                            Image("blood")
                            Text("Plasma")
                        }
                    }
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
        HStack{
            Spacer()
            Button{
                showH.toggle()
            }label: {
                Image("home")
                    .resizable()
                    .scaledToFit()
                    .frame(width:40)
            }
            
            Spacer()
            Image("donor")
                .resizable()
                .scaledToFit()
                .frame(width:40)
            Spacer()
            Image("beneficios")
                .resizable()
                .scaledToFit()
                .frame(width:40)
            Spacer()
            Image("i")
                .resizable()
                .scaledToFit()
                .frame(width:40)
            Spacer()
        }
        .padding(18)
        .frame(width: 340)
        //            .background(Color("bluePrimary"))
        .background(
            RoundedRectangle(cornerRadius: 15)
                .fill(Color("gris"))
        )
        if showH {
            Beneficios()
        }else{
            HomeView()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
