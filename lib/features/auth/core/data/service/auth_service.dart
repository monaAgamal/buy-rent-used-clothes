import 'package:buy_rent_used_clothes/core/data/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthService {
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
        .createUserWithEmailAndPassword(email: email, password: password);

    // .then((value) async => await updateUserName(name: name));
    await updateUserName(name: name);
    await sendVerificationEmail();
    return FirebaseAuth.instance.currentUser != null
        ? UserModel(
            id: FirebaseAuth.instance.currentUser!.uid,
            name: FirebaseAuth.instance.currentUser!.displayName!,
            email: FirebaseAuth.instance.currentUser!.email!,
            isVerified: FirebaseAuth.instance.currentUser!.emailVerified,
          )
        : null;
  }

  Future updateUserName({required String name}) async {
    await FirebaseAuth.instance.currentUser?.updateDisplayName(name);
  }

  Future<UserModel?> login({
    required String email,
    required String password,
  }) async {
    final UserCredential userCredential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
    return FirebaseAuth.instance.currentUser != null
        ? UserModel(
            id: FirebaseAuth.instance.currentUser!.uid,
            name: FirebaseAuth.instance.currentUser!.displayName!,
            email: FirebaseAuth.instance.currentUser!.email!,
            isVerified: FirebaseAuth.instance.currentUser!.emailVerified,
          )
        : null;
  }

  Future<void> sendVerificationEmail() async {
    await FirebaseAuth.instance.currentUser!.sendEmailVerification();
  }

}
