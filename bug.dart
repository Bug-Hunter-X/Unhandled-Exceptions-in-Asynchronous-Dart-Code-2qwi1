```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Correctly handle the response
      final jsonData = json.decode(response.body);
      // Process jsonData
    } else {
      // Handle error status codes
      throw Exception('Request failed with status: ${response.statusCode}.');
    }
  } catch (e) {
    // Handle exceptions during the request
    print('An error occurred: $e');
    // Rethrow the exception for higher-level handling if needed
    rethrow;
  }
}
```