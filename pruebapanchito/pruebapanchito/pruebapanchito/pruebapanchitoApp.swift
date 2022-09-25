
//
//  pruebapanchitoApp.swift
//  pruebapanchito
//
//  Created by Victoria Lucero on 25/09/22.
//

import SwiftUI

@main
struct pruebapanchitoApp: App {
    @StateObject var userViewModel: UserViewModel = UserViewModel()
    var body: some Scene {
        WindowGroup {
            Perfil(userViewModel: userViewModel)
        }
    }
}
