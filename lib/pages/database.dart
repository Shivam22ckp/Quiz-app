import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods {
  Future addUserInfoToDB(
      String userId, Map<String, dynamic> userInfoMap) async {
    await FirebaseFirestore.instance.collection("level").add(userInfoMap);
  }
}
