void main() {
  Login login = Login();

  try {
    login.logar();
  } on PasswordLengthError catch (e) {
    print('Falhou ao logar');
  } catch (e) {
    print('Outro error');
  } finally {
    print("fechar o banco de dados");
  }
}

class Login {
  void logar() {
    String user = 'admin';
    String pass = '123';
    // if (pass.length <= 6) throw PasswordLengthError();
    if (pass.length <= 6) throw Exception();
  }
}

class PasswordLengthError implements Exception {
  PasswordLengthError();
}
