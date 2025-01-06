```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>?> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data;
    } else {
      // Handle specific HTTP error codes
      print('HTTP Error: ${response.statusCode} - ${response.reasonPhrase}');
      return null; // Or throw a custom exception for specific HTTP errors
    }
  } on SocketException catch (e) {
    // Handle socket exceptions (network issues)
    print('Network Error: $e');
    return null; // Or throw a custom exception
  } on FormatException catch (e) {
    // Handle JSON decoding errors
    print('JSON Error: $e');
    return null; // Or throw a custom exception
  } catch (e) {
    // Handle other unexpected exceptions
    print('Unexpected Error: $e');
    return null; // Or rethrow, depending on your app's logic
  }
}

void main() async {
  final data = await fetchData();
  if (data != null) {
    print('Data fetched successfully: $data');
  } else {
    print('Failed to fetch data.');
  }
}
```