import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> addUserInfo(Map<String, dynamic> userInfoMap) async {
    await _firestore
        .collection("users")
        .doc(userInfoMap["Id"])
        .set(userInfoMap);
  }

  Future<void> addUserExpense(
    Map<String, dynamic> userExpense,
    String Id,
  ) async {
    await _firestore
        .collection("users")
        .doc(userExpense["Id"])
        .collection("expenses")
        .add(userExpense);
  }
}
