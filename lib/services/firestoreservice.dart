import 'package:cloud_firestore/cloud_firestore.dart';



class FirebaseFirestoreService {

  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance; 
CollectionReference userCollection =
    FirebaseFirestore.instance.collection("user");

  Future<void> getDataOfUser(email) {
  return FirebaseFirestore.instance
      .collection("user")
      .where('email', isEqualTo: email)
      .get()
      .then((value) => print(value))
      .catchError((onError) => {print("Error get data of user: $onError")});
}

Future<void> createUserWithEmail(name, email, password, context) async {
  return userCollection
      .add({"name": name, "email": email, "password": password})
      .then((user) => print(user))
      .catchError((onError) => print("Error: $onError"));
}
}