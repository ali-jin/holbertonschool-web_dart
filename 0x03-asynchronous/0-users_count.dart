import '0-util.dart';

Future<void> usersCount() async {
  final users = await fetchUsersCount();
  print(users);
}
