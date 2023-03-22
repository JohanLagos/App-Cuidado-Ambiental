import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../paginaInicio/paginaInicio.dart';
import 'crearUsuario.dart';

class PaginaLogin extends StatefulWidget {
  const PaginaLogin({super.key});

  @override
  State<PaginaLogin> createState() => _PaginaLoginState();
}

class _PaginaLoginState extends State<PaginaLogin> {
  late String email, password;
  final _formKey = GlobalKey<FormState>();
  String error = "";
  bool _hidePassword = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/fondo3.jpg"), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "BIENVENIDO A CUIDADO AMBIENTAL",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'TitanOne-Regular'),
                textAlign: TextAlign.center,
              ),
            ),
            Image(
              image: const AssetImage("assets/images/ecologia.png"),
              height: size.height * 0.15,
            ),
            Offstage(
              offstage: error == '',
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  error,
                  style: const TextStyle(color: Colors.red, fontSize: 16),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: formulario(),
            ),
            botonLogin(),
            nuevoAqui(),
            buildOrline(),
            botonGoogleFacebook()
          ],
        ),
      ),
    );
  }

  Widget botonGoogleFacebook() {
    return Column(
      children: [
        SignInButton(Buttons.Google, onPressed: () async {
          await entrarconGoogle();
          if (FirebaseAuth.instance.currentUser != null) {
            // ignore: use_build_context_synchronously
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const PaginaInicial()),
                (Route<dynamic> route) => false);
          }
        }),
        SignInButton(Buttons.Facebook, onPressed: () {})
      ],
    );
  }

  Widget buildOrline() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: const [
        Expanded(child: Divider()),
        Text("Otras Opciones"),
        Expanded(child: Divider())
      ],
    );
  }

  Widget nuevoAqui() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Nuevo Aquí?"),
        TextButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CrearUsuarioPage()));
          },
          child: const Text("Registrarse",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        )
      ],
    );
  }

  Widget formulario() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmail(),
          const Padding(
            padding: EdgeInsets.only(top: 12),
          ),
          buildPassword(),
        ],
      ),
    );
  }

  Widget buildEmail() {
    return TextFormField(
      decoration: InputDecoration(
        icon: const Icon(Icons.person),
        labelText: "Correo Electronico",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.black),
        ),
      ),
      keyboardType: TextInputType.emailAddress,
      onSaved: (String? value) {
        email = value!;
      },
      validator: (value) {
        if (value!.isEmpty) {
          return "Este campo es obligatorio";
        }
        return null;
      },
    );
  }

  Widget buildPassword() {
    return TextFormField(
      decoration: InputDecoration(
        icon: const Icon(Icons.lock),
        suffixIcon: InkWell(
          onTap: () {
            setState(() {
              _hidePassword = !_hidePassword;
            });
          },
          child: const Icon(Icons.visibility),
        ),
        labelText: "Contraseña",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.black),
        ),
      ),
      obscureText: _hidePassword,
      validator: (value) {
        if (value!.isEmpty) {
          return "Este campo es obligatorio";
        }
        return null;
      },
      onSaved: (String? value) {
        password = value!;
      },
    );
  }

  Widget botonLogin() {
    return FractionallySizedBox(
      widthFactor: 0.6,
      child: ElevatedButton(
          onPressed: () async {
            if (_formKey.currentState!.validate()) {
              _formKey.currentState!.save();
              UserCredential? credenciales = await login(email, password);
              if (credenciales != null) {
                if (credenciales.user != null) {
                  if (credenciales.user!.emailVerified) {
                    // ignore: use_build_context_synchronously
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PaginaInicial()),
                        (Route<dynamic> route) => false);
                  } else {
                    // mostramos al ususario que debe verificar su email
                    setState(() {
                      error = "Debes verificar tu correo antes de acceder";
                    });
                  }
                }
              }
            }
          },
          child: const Text("Iniciar Sesión")),
    );
  }

  Future<UserCredential?> login(String email, String passwd) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        // usuario no encontrado
        setState(() {
          error = "Usuario no encontrado";
        });
      }
      if (e.code == 'wrong-password') {
        // contraseña incorrecta
        setState(() {
          error = "Contraseña incorrecta";
        });
      }
    }
  }

  Future<UserCredential> entrarconGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? autenticacion =
        await googleUser?.authentication;
    final credentials = GoogleAuthProvider.credential(
        accessToken: autenticacion?.accessToken,
        idToken: autenticacion?.idToken);

    return await FirebaseAuth.instance.signInWithCredential(credentials);
  }
}
