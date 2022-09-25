import FirebaseFirestore
import FirebaseFirestoreSwift

struct UserModel: Decodable, Identifiable {
	@DocumentID var id: String?
	let apellidos: String
	let ciudad: String
	let contrasenia: String
	let correo: String
	let edad: Int
	let nombres: String
	let peso: Int
	let sexo: String
	let tipodesangre: String
	let username: String
}

final class UserDataSource {
	private let database = Firestore.firestore()
	private let collection = "usuario"

	func getAllUsers(completionBlock: @escaping (Result<[UserModel], Error>) -> Void){
		database.collection(collection)
			.addSnapshotListener { query, error in
				if let error = error {
					print("Error al obtener los usuarios \(error.localizedDescription)")
					completionBlock(.failure(error))
					return
				}
				guard let documents = query?.documents.compactMap({$0}) else {
					completionBlock(.success([]))
					return
				}
				let users = documents.map { try? $0.data(as: UserModel.self)}
					.compactMap { $0 }
				completionBlock(.success(users))
			}
	}
}