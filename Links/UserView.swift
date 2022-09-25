import SwiftUI

struct UserView: View {
	@ObservedObject var UserViewModel: UserViewModel
	var body: some View {
		List {
			ForEach(UserViewModel.users) { user in
				VStack {
					Text(user.nombre) //concatenar con...
					Text(user.apellidos)
					Text(user.ciudad)
					Text(user.peso)
					Text(user.tipodesangre)
					Text(user.edad)
					Text(user.sexo)
				}
			}
		}
		.task {
			UserViewModel.getAllUsers()
		}
	}
}

struct UserView_Preview: PreviewProvider {
	static var previews: some View {
		UserView(UserViewModel: UserViewModel())
	}
}