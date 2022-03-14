/// Exceptions caused when calling the API
class RestApiException implements Exception {
  /// Constructor
  const RestApiException({this.errorCode, this.errorMessage});

  /// Error Status Code
  final int? errorCode;

  /// Error message
  final String? errorMessage;
}
