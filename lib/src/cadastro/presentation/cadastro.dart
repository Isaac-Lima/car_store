import 'package:car_store/src/login/controller/login_controller.dart';
import 'package:car_store/src/login/presentation/login_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _LoginPageState();
}

class _LoginPageState extends State<Cadastro> {
  LoginController loginController = LoginController();

  final _nameComplete = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9FAFB),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 85),
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  "assets/images/letter_logo.png",
                ),
              ),
              SizedBox(height: 90),
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
                        controller: _nameComplete,
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.person,
                              size: 40,
                            ),
                            labelText: "Nome Completo",
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            labelStyle: TextStyle(color: Colors.grey),
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 12)),
                        cursorColor: Colors.black,
                      ),
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
                        controller: _nameComplete,
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.email,
                              size: 40,
                            ),
                            labelText: "Email",
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            labelStyle: TextStyle(color: Colors.grey),
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 12)),
                        cursorColor: Colors.black,
                      ),
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
                        controller: _nameComplete,
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.phone,
                              size: 40,
                            ),
                            labelText: "Telefone",
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            labelStyle: TextStyle(color: Colors.grey),
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 12)),
                        cursorColor: Colors.black,
                      ),
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
                        controller: _passwordController,
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.lock,
                              size: 40,
                            ),
                            labelText: "Senha",
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            labelStyle: TextStyle(color: Colors.grey),
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
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
                        // final isEmpty = loginController.checkInputFields(
                        //     _userNameController.text, _passwordController.text);

                        // if (isEmpty) {
                        //   ScaffoldMessenger.of(context)
                        //       .showSnackBar(const SnackBar(
                        //     content:
                        //         Text("Por favor, preencha todos os campos"),
                        //     backgroundColor: Colors.red,
                        //   ));
                        // }
                      },
                      child: SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: Center(
                            child: Text(
                              "Entrar",
                              style: TextStyle(
                                  fontFamily: "Poppins", fontSize: 20),
                            ),
                          )),
                    ),
                    SizedBox(height: 30),
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
    );
  }
}
