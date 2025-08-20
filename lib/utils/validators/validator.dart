class TValidator {
  static String? validateName(String? value) {
    if (value == null || value.isEmpty){
      return 'Name is required.';
    }

    return null;
  }

  static String? validateUsername(String? value) {
    if (value == null || value.isEmpty) {
      return 'Username is required.';
    }
    if (value.length < 3) {
      return 'Username must be at least 3 characters long.';
    }
    if (!RegExp(r'^[a-zA-Z0-9_]+$').hasMatch(value)) {
      return 'Username can only contain letters, numbers, and underscores.';
    } 
    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty){
      return 'Email is required.';
    }

    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if(!emailRegExp.hasMatch(value)){
      return 'Invalid email address.';
    }

    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty){
      return 'Phone number is required.';
    }
    
    final phoneRegExp = RegExp(r'^\+?[1-9]\d{7,14}$');
    if (!phoneRegExp.hasMatch(value)) {
      return 'Invalid phone number format. Use international format (e.g., +628123456789).';
    }

    return null;
  }
  
  static String? validatePassword(String? value){
    if (value == null || value.isEmpty){
      return 'Password is required.';
    }

    if(value.length < 6) {
      return 'Password must be at least 6 characters long.';
    }

    if(!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain at least one uppercase letter.';
    }

    if(!value.contains(RegExp(r'[!#$%^&*(),.?":{}|<>]'))) {
      return 'Password must contain at least one special character.';
    }

    if(!value.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain at least one number.';
    }

    return null;
  }

  static String? validateConfirmPassword(String? value, String? password){
    if (value == null || value.isEmpty){
      return 'Confirm password is required.';
    }
    if (value != password){
      return 'Password do not match.';
    }
    return null;
  }
}