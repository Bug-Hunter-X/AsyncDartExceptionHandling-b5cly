```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>?> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        return jsonData;
      } catch (e) {
        print('Error decoding JSON: $e');
        //Consider custom exception for better error reporting
        return null; // Or throw a more specific exception
      }
    } else {
      print('API request failed with status: ${response.statusCode}');
      return null; // Or throw a custom exception
    }
  } catch (e) {
    print('Network error: $e');
    return null; // Or throw a custom exception
  }
}
```