final class UserViewModel: ObservableObject {
	@Published var links: [UserModel] = []
	@Published var messageError: String?
	private let UserRepository: UserRepository

	init(UserRepository: UserRepository = UserRepository()) {
		self.UserRespository = UserRepository
	}

	func getAllUsers(){
		UserRepository.getAllUsers {[weak self] result in
			switch result {
				case .success(let UserModels)_
					self?.users = UserModels
				case .failure(let error):
					self?.messageError = error.localizedDescription
			}
		}
	}
}