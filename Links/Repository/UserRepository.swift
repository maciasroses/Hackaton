final class UserRepository {
	private let userDataSource: UserDataResource

	init(UserDataSource: UserDataSource = UserDataSource()){
		self.UserDataSource = UserDataSource
	}

	func getAllUsers(completionBlock: @escaping (Result<[UserModel], Error) -> Void){
		UserDataSource.getAllUsers(completionBlock: completionBlock)
	}
}