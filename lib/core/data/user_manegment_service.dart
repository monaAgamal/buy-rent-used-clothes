import 'package:buy_rent_used_clothes/core/data/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
@injectable
class UserManegmentService {
  // final FirebaseAuth instance = FirebaseAuth.instance;

  Stream<User?> checkAuthStateChanges() {
    return FirebaseAuth.instance.authStateChanges();
  }

  Future<UserModel?> signUp({
    required String email,
    required String password,
    required String name,
  }) async {
    final UserCredential userCredential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) async => await updateUserName(name: name));
    return FirebaseAuth.instance.currentUser != null
        ? UserModel(
            id: FirebaseAuth.instance.currentUser!.uid,
            name: FirebaseAuth.instance.currentUser!.displayName ?? name,
            email: FirebaseAuth.instance.currentUser!.email ?? email,
          )
        : null;
  }

  Future updateUserName({required String name}) async {
    await FirebaseAuth.instance.currentUser?.updateDisplayName(name);
  }
}
