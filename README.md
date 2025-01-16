# Unhandled Exceptions in Asynchronous Dart Code

This repository showcases a common error in asynchronous Dart code and its solution. The `bug.dart` file contains code that fetches data from an API but doesn't handle exceptions effectively.  The `bugSolution.dart` file demonstrates improved error handling.

The key issue is that while the `try-catch` block catches exceptions, it only prints the error and then uses `rethrow;`. Depending on how `fetchData()` is called, the rethrown error might be unhandled and lead to unexpected behavior. This example highlights the importance of complete and context-aware exception handling in asynchronous programming.