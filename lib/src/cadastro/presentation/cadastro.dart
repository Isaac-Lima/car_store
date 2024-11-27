import 'package:car_store/src/cadastro/controller/cadastro_controller.dart';
import 'package:car_store/src/login/presentation/login_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  CadastroController cadastroController = CadastroController();

  bool _obscureText = true;

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _telephoneController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9FAFB),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    "assets/images/letter_logo.png",
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: [
                      const Text(
                        "Cadastrar",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            fontFamily: "Poppins"),
                      ),
                      const Text(
                        "Encontre o seu veículo dos sonhos !",
                        style: TextStyle(fontSize: 14, fontFamily: "Poppins"),
                      ),
                      SizedBox(height: 30),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3))
                            ]),
                        child: TextField(
                          controller: _nameController,
                          decoration: InputDecoration(
                              icon: Icon(
                                Icons.person,
                                size: 40,
                              ),
                              labelText: "Usuário",
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              labelStyle: TextStyle(color: Colors.grey),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 12)),
                          cursorColor: Colors.black,
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3))
                            ]),
                        child: TextField(
                          controller: _emailController,
                          decoration: InputDecoration(
                              icon: Icon(
                                Icons.email,
                                size: 40,
                              ),
                              labelText: "Email",
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              labelStyle: TextStyle(color: Colors.grey),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 12)),
                          cursorColor: Colors.black,
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3))
                            ]),
                        child: TextField(
                          controller: _telephoneController,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                              icon: Icon(
                                Icons.phone,
                                size: 40,
                              ),
                              labelText: "Número de telefone",
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              labelStyle: TextStyle(color: Colors.grey),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 12)),
                          cursorColor: Colors.black,
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3))
                            ]),
                        child: TextField(
                          controller: _passwordController,
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                              icon: Icon(
                                Icons.lock,
                                size: 40,
                              ),
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _obscureText = !_obscureText;
                                    });
                                  },
                                  icon: Icon(_obscureText
                                      ? Icons.visibility
                                      : Icons.visibility_off)),
                              labelText: "Senha",
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              labelStyle: TextStyle(color: Colors.grey),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 12)),
                          cursorColor: Colors.black,
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFFF5C00),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {
                          final isEmpty = cadastroController.checkInputFields(
                              _nameController.text,
                              _emailController.text,
                              _telephoneController.text,
                              _passwordController.text);

                          final isValidEmail = cadastroController
                              .checkEmail(_emailController.text);

                          if (isEmpty) {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content:
                                  Text("Por favor, preencha todos os campos"),
                              backgroundColor: Colors.red,
                            ));
                          } else if (!isValidEmail) {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content:
                                  Text("Por favor, digite um email válido"),
                              backgroundColor: Colors.red,
                            ));
                          }
                        },
                        child: SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: Center(
                              child: Text(
                                "Cadastrar",
                                style: TextStyle(
                                    fontFamily: "Poppins", fontSize: 20),
                              ),
                            )),
                      ),
                      SizedBox(height: 20),
                      Text.rich(TextSpan(children: [
                        TextSpan(
                            text: "Já tem uma conta ?",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                                fontWeight: FontWeight.w600)),
                        TextSpan(
                            text: " Entrar",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFFFF5C00),
                                fontWeight: FontWeight.w600),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()));
                              }),
                      ]))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
