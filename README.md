# Unhandled Exceptions and Improved Error Handling in Dart's async/await

This repository demonstrates a potential issue in Dart's asynchronous error handling using `async`/`await` and showcases how to improve it.

The original code uses a `try-catch` block but relies on `rethrow` to handle errors at higher levels.  While functional, this method lacks granularity and might not capture all exception types efficiently. This improved solution includes more specific error handling for better diagnostics and more controlled behavior.

## How to run:
1. Clone this repository.
2. Run `dart bug.dart` to see the original code's behavior (and potential incomplete error handling).
3. Run `dart bugSolution.dart` to see the improved error handling approach. 

