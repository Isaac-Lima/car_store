class CadastroController {
  bool checkInputFields(
      String nomeCompleto, String email, String telefone, String senha) {
    return nomeCompleto.isEmpty ||
        email.isEmpty ||
        telefone.isEmpty ||
        senha.isEmpty;
  }
}
