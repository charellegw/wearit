/// Custom exception class to handle various format-related errors.
class TFormatException implements Exception {
  /// The associated error message.
  final String message;

  /// Default constructor with a generic error message.
  const TFormatException([
    this.message =
        'An unexpected format error occurred. Please check your input.',
  ]);

  /// Create a format exception from a specific error message.
  factory TFormatException.fromMessage(String message) {
    return TFormatException(message);
  }

  /// Get the corresponding error message.
  String get formattedMessage => message;

  /// Centralized mapping of format error codes to messages.
  static const Map<String, String> _messages = {
    'invalid-email-format':
        'The email address format is invalid. Please enter a valid email.',
    'invalid-phone-number-format':
        'The provided phone number format is invalid. Please enter a valid number.',
    'invalid-date-format':
        'The date format is invalid. Please enter a valid date.',
    'invalid-url-format':
        'The URL format is invalid. Please enter a valid URL.',
    'invalid-credit-card-format':
        'The credit card format is invalid. Please enter a valid credit card number.',
    'invalid-numeric-format':
        'The input should be a valid numeric format.',
  };

  /// Create a format exception from a specific error code.
  factory TFormatException.fromCode(String code) {
    return TFormatException(
      _messages[code] ??
          'An unexpected format error occurred. Please check your input.',
    );
  }
}