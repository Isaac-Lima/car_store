class LoginController {
  bool checkInputFields(String usuario, String senha) {
    if (usuario.isEmpty || usuario == "" && senha.isEmpty || senha == "") {
      return true;
    } else {
      return false;
    }
  }
}
