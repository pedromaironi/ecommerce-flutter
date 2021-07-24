import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';

// final FirebaseAuth _auth = FirebaseAuth.instance;

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;


  signInWithEmails(String email, String password) {
    return this
        ._auth
        .signInWithEmailAndPassword(email: email, password: password);
  }

  createUserWithEmails(String email, String password, String name){
    return _auth.createUserWithEmailAndPassword(
                                email: email, password: password).then((value) => print(value))
                                .catchError((onError)=> {print(onError)});
  }
// Returns true if email address is in use.
  Future<bool> checkIfEmailInUse(String emailAddress) async {
    try {
      // Fetch sign-in methods for the email address
      final list =
          await FirebaseAuth.instance.fetchSignInMethodsForEmail(emailAddress);

      // In case list is not empty
      if (list.isNotEmpty) {
        // Return true because there is an existing
        // user using the email address
        return true;
      } else {
        // Return false because email adress is not in use
        return false;
      }
    } catch (error) {
      // Handle error
      // ...
      return true;
    }
  }


}

