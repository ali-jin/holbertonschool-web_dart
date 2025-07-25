import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    final response =
        await http.get(Uri.parse('https://rickandmortyapi.com/api/character'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final characters = data['results'] as List;

      for (var character in characters) {
        print(character['name']);
      }
    } else {
      print('error caught: HTTP ${response.statusCode}');
    }
  } catch (e) {
    print('error caught: $e');
  }
}
