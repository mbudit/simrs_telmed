class TValidator {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email wajib diisi';
    }

    // Regular expression for email validation
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'Alamat email invalid!';
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password wajib diisi';
    }

    // Check for minimum password length
    if (value.length < 6) {
      return 'Password minimal 6 karakter.';
    }

    // Check for uppercase letters
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password harus ada minimal satu huruf kapital.';
    }

    // Check for numbers
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password harus ada minimal satu angka.';
    }

    // Check for special characters
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return 'Password harus ada karakter spesial.';
    }

    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Nomor HP wajib diisi.';
    }

    // Untuk validasi nomor hp, asumsi jumlah digit nomor HP di Indonesia adalah 13 digit
    final phoneRegExp = RegExp(r'^\d{13}$');

    if (!phoneRegExp.hasMatch(value)) {
      return 'Nomor HP Invalid! (Minimal 13 Digit)';
    }

    return null;
  }

// Add more custom validators as needed for your specific requirements.
}