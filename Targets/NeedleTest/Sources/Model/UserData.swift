import Foundation

protocol UserData {
  var data: String? { get }
}

final class UserDataImpl: UserData {
  var data: String? = "MINAN"
}
