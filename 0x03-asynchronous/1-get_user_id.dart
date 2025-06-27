import '1-util.dart';
import 'dart:convert';

Future<String> getUserId() async {
  final user = await fetchUserData();
  final userID = jsonDecode(user)['id'];
  return userID;
}
