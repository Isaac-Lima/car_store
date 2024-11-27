class CadastroController {
  bool checkInputFields(
      String nomeCompleto, String email, String telefone, String senha) {
    return nomeCompleto.isEmpty ||
        email.isEmpty ||
        telefone.isEmpty ||
        senha.isEmpty;
  }

  bool checkEmail(String email) {
    RegExp emailFormat = RegExp(r"^[\w\.-]+@([\w-]+\.)+[\w-]{2,}$");
    return emailFormat.hasMatch(email);
  }
}
