/// A custom exception class to handle various Firebase authentication-related errors.
class TFirebaseAuthException implements Exception {
  final String code;

  TFirebaseAuthException(this.code);

  /// Centralized mapping of Firebase error codes to messages.
  static const Map<String, String> _messages = {
    // ---------------- USER RELATED ----------------
    'user-disabled':
        'This user account has been disabled. Please contact support for assistance.',
    'user-not-found':
        'Invalid login details. User not found.',
    'user-mismatch':
        'The supplied credentials do not correspond to the previously signed in user.',
    'user-token-mismatch':
        'The provided user\'s token has a mismatch with the authenticated user\'s user ID.',

    // ---------------- CREDENTIAL / PASSWORD / EMAIL ----------------
    'invalid-email':
        'The email address provided is invalid. Please enter a valid email.',
    'email-already-in-use':
        'The email address is already registered. Please use a different email.',
    'email-already-exists':
        'The email address already exists. Please use a different email.',
    'weak-password':
        'The password is too weak. Please choose a stronger password.',
    'wrong-password':
        'Incorrect password. Please check your password and try again.',
    'invalid-credential':
        'The supplied credential is malformed or has expired.',
    'INVALID_LOGIN_CREDENTIALS':
        'Invalid login credentials.',

    // ---------------- ACTION CODE (RESET / VERIFY EMAIL) ----------------
    'expired-action-code':
        'The action code has expired. Please request a new one.',
    'invalid-action-code':
        'The action code is invalid. Please check the code and try again.',
    'missing-action-code':
        'The action code is missing. Please provide a valid action code.',
    'invalid-verification-code':
        'Invalid verification code. Please enter a valid code.',
    'invalid-verification-id':
        'Invalid verification ID. Please request a new verification code.',

    // ---------------- TOKEN / SESSION ----------------
    'user-token-expired':
        'The user\'s token has expired. Please sign in again.',
    'user-token-revoked':
        'The user\'s token has been revoked. Please sign in again.',
    'session-cookie-expired':
        'The Firebase session cookie has expired. Please sign in again.',

    // ---------------- PROVIDER / ACCOUNT LINKING ----------------
    'credential-already-in-use':
        'This credential is already associated with a different user account.',
    'account-exists-with-different-credential':
        'An account already exists with the same email but different sign-in credentials.',
    'provider-already-linked':
        'The account is already linked with another provider.',
    'requires-recent-login':
        'This operation is sensitive and requires recent authentication. Please log in again.',

    // ---------------- EMAIL TEMPLATE / CONFIG ----------------
    'invalid-message-payload':
        'The email template verification message payload is invalid.',
    'invalid-sender':
        'The email template sender is invalid. Please verify the sender\'s email.',
    'invalid-recipient-email':
        'The recipient email address is invalid. Please provide a valid recipient email.',
    'missing-iframe-start':
        'The email template is missing the iframe start tag.',
    'missing-iframe-end':
        'The email template is missing the iframe end tag.',
    'missing-iframe-src':
        'The email template is missing the iframe src attribute.',
    'auth-domain-config-required':
        'The authDomain configuration is required for the action code verification link.',

    // ---------------- APP / SYSTEM / INTERNAL ----------------
    'missing-app-credential':
        'The app credential is missing. Please provide valid app credentials.',
    'invalid-app-credential':
        'The app credential is invalid. Please provide a valid app credential.',
    'uid-already-exists':
        'The provided user ID is already in use by another user.',
    'invalid-cordova-configuration':
        'The provided Cordova configuration is invalid.',
    'quota-exceeded':
        'Quota exceeded. Please try again later.',
    'keychain-error':
        'A keychain error occurred. Please check the keychain and try again.',
    'web-storage-unsupported':
        'Web storage is not supported or is disabled.',
    'app-deleted':
        'This instance of FirebaseApp has been deleted.',
    'app-not-authorized':
        'The app is not authorized to use Firebase Authentication with the provided API key.',
    'operation-not-allowed':
        'This operation is not allowed. Contact support for assistance.',
    'internal-error':
        'An internal authentication error occurred. Please try again later.',
  };

  /// Returns a user-friendly message.
  String get message =>
      _messages[code] ??
      'An unexpected authentication error occurred. Please try again.';
}