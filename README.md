# Unhandled Exceptions in Asynchronous Dart Code

This repository demonstrates a common issue in Dart:  unhandled exceptions in asynchronous operations. The `bug.dart` file contains code that fetches data from an API.  It includes a `try-catch` block but doesn't handle all potential exceptions and may not provide user-friendly error messages.

The `bugSolution.dart` file provides a more robust solution that handles more exceptions and provides better error handling and reporting.

## How to Run

1. Clone this repository.
2. Ensure you have Dart installed.
3. Run `bug.dart` and observe the output.  Note the lack of specific error information if the API call or JSON decoding fails.
4. Run `bugSolution.dart` and compare the output.  Notice how specific error messages are now handled and logged.
