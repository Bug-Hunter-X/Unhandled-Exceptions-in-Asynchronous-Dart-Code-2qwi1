```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      // Process jsonData
      return;
    } else {
      //Instead of throw Exception, throw a custom exception
      throw ApiException('Request failed with status: ${response.statusCode}.', response.statusCode); 
    }
  } on SocketException catch (e) {
    // Handle socket exceptions separately
    print('Socket exception: $e');
  } on FormatException catch (e) {
    // Handle JSON decoding errors
    print('JSON decoding error: $e');
  } on ApiException catch (e) {
      //Handle Custom API Exception
      print('API Exception: ${e.message} with status code: ${e.statusCode}');
  } catch (e) {
    // Handle other exceptions
    print('An unexpected error occurred: $e');
  }
}

// Custom Exception class for better error handling
class ApiException implements Exception {
  final String message;
  final int statusCode;

  ApiException(this.message, this.statusCode);
}
```