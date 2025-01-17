import 'package:car_store/src/cadastro/presentation/cadastro.dart';
import 'package:car_store/src/login/controller/login_controller.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginController loginController = LoginController();
  final _formKey = GlobalKey<FormState>();

  bool _obscureText = true;

  final _userNameController = TextEditingController();
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
                Image.asset(
                  "assets/images/letter_logo.png",
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        const Text(
                          "Entrar",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              fontFamily: "Poppins"),
                        ),
                        const Text(
                          "Bem-Vindo a CarStore",
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
                          child: TextFormField(
                            controller: _userNameController,
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
                            validator: (value) =>
                                (value == null || value.isEmpty)
                                    ? 'Campo obrigatório !'
                                    : null,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
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
                          child: TextFormField(
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
                            validator: (value) =>
                                (value == null || value.isEmpty)
                                    ? 'Campo obrigatório !'
                                    : null,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Esqueceu a senha ?",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontFamily: "Poppins"),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFFF5C00),
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Processing Data')),
                              );
                            }
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
                        SizedBox(height: 20),
                        Text.rich(TextSpan(children: [
                          TextSpan(
                              text: "Não tem uma conta ?",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600)),
                          TextSpan(
                              text: " Cadastre-se",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xFFFF5C00),
                                  fontWeight: FontWeight.w600),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Cadastro()));
                                }),
                        ]))
                      ],
                    ),
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
