class LoginController {
  bool checkInputFields(String usuario, String senha) {
    return usuario.isEmpty || senha.isEmpty;
  }
}
