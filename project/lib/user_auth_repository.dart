import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class UserAuthRepository {
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ["email"]);
  final FirebaseAuth _auth = FirebaseAuth.instance;
  // true -> go home page
  // false -> go login page
  bool isAlreadyAuthenticated() {
    //check if the user is authenticated
    return _auth.currentUser != null;
  }

  Future<void> signOutGoogleUser() async {
    //Google user signout
    await _googleSignIn.signOut();
  }

  Future<void> signOutFirebaseUser() async {
    //Firebase user signout
    await _auth.signOut();
  }

  Future<void> signInWithGoogle() async {
    //set up Google sign in
    final googleUser = await _googleSignIn.signIn();
    final googleAuth = await googleUser!.authentication;
    print("Email: ${googleUser.email}");

    //get credenciales de usuario autenticado con Google
    final AuthCredential credential = GoogleAuthProvider.credential(
      idToken: googleAuth.idToken,
      accessToken: googleAuth.accessToken
    );

    //firebase sign in con credenciales de Google
    await _auth.signInWithCredential(credential);
  }
}
