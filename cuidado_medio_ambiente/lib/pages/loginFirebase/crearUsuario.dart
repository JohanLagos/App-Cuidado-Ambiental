import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class CrearUsuarioPage extends StatefulWidget {
  const CrearUsuarioPage({super.key});

  @override
  State<CrearUsuarioPage> createState() => _CrearUsuarioState();
}

class _CrearUsuarioState extends State<CrearUsuarioPage> {
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
      appBar: AppBar(
        title: const Text("CUIDADO AMBIENTAL"),
      ),
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
                "CREAR USUARIO",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'TitanOne-Regular'),
                textAlign: TextAlign.center,
              ),
            ),
            Image(
              image: const AssetImage("assets/images/ecologia.png"),
              height: size.height * 0.20,
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
            botonCrearUsuario(),
          ],
        ),
      ),
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

  Widget botonCrearUsuario() {
    return FractionallySizedBox(
      widthFactor: 0.6,
      child: ElevatedButton(
          onPressed: () async {
            if (_formKey.currentState!.validate()) {
              _formKey.currentState!.save();
              UserCredential? credenciales = await crear(email, password);
              if (credenciales != null) {
                if (credenciales.user != null) {
                  await credenciales.user!.sendEmailVerification();
                  // ignore: use_build_context_synchronously
                  Navigator.of(context).pop();
                }
              }
            }
          },
          child: const Text("Registrarse")),
    );
  }

  Future<UserCredential?> crear(String email, String passwd) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        // correo en uso
        setState(() {
          error = "Usuario no encontrado";
        });
      }
      if (e.code == 'weak-password') {
        // contraseña muy debil
        setState(() {
          error = "Contraseña debil";
        });
      }
    }
  }
}
