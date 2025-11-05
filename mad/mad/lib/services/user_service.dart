import '../models/user_model.dart';

class UserService {
  static UserModel? currentUser;

  static void registerUser(UserModel user) {
    currentUser = user;
  }

  static bool loginUser(String email, String password) {
    if (currentUser == null) return false;
    return currentUser!.email == email && currentUser!.password == password;
  }

  static void updateUser(String name, String email, String password) {
    if (currentUser != null) {
      currentUser!.name = name;
      currentUser!.email = email;
      currentUser!.password = password;
    }
  }
}
