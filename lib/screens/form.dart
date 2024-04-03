import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  var _formKey = GlobalKey<FormState>();

  var _emailController = TextEditingController(text: "victor@qdqzd.fr");

  var _prenom = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // voir gestion du clavier virtuel
      // resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Text("Prénom : $_prenom"),

            // -------- Form / TextFormField --------
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.person),
                      helperText: "Entrez votre prénom",
                    ),
                    validator: (value) {
                      if (value == "" || value == null) {
                        return "Champ obligatoire";
                      }
                      if (value.length < 5) {
                        return "Votre nom doit faire plus de 5 caractères";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.mail),
                      helperText: "Entrez votre email",
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Ce champ doit être renseigné';
                      }
                      final RegExp regex =
                          RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
                      if (!regex.hasMatch(value)) {
                        return 'Saisir un email valide';
                      }
                      return null;
                    },
                  ),
                  ElevatedButton(
                      onPressed: () => _submitForm(), child: Text("Submit")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _submitForm() {
    if (_formKey.currentState != null) {
      if (_formKey.currentState!.validate()) {
        print(_emailController.text);
        // _formKey.currentState!.save();
        // print("Validate");
        // print(_prenomController.text);
        // print(_emailController.text);
      }
    }
  }
}
