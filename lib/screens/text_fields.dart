import 'package:flutter/material.dart';

class TextFields extends StatefulWidget {
  const TextFields({super.key});

  @override
  State<TextFields> createState() => _TextFieldsState();
}

class _TextFieldsState extends State<TextFields> {
  var _prenom = "";
  var _email = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text("Prénom : $_prenom"),
            Text("Email : $_email"),
            // -------- TextField --------
            TextField(
              textCapitalization: TextCapitalization.characters,
              onSubmitted: (value) {
                setState(() {
                  _prenom = value;
                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.person),
                label: Row(
                  children: [Icon(Icons.person), Text("Prénom")],
                ),
                // hintText: "Prénom",
                helperText: "Entrez votre prénom",
              ),
            ),
            TextField(
              autocorrect: false,
              autofillHints: [AutofillHints.email],
              keyboardType: TextInputType.visiblePassword,
              onChanged: (value) {
                setState(() {
                  _email = value;
                });
              },
            ),
            TextField(
              keyboardType: TextInputType.number,
            ),
            TextField(
              keyboardType: TextInputType.phone,
              obscureText: true,
            ),

            // Utiliser onChanged
            // Utiliser onSubmitted

            // voir autocorrect
            // autocorrect: false,

            // voir autofillHints / keyboardType
            // autofillHints: [AutofillHints.givenName],
            // keyboardType: TextInputType.name,

            // voir textCapitalization
            // textCapitalization: TextCapitalization.none,

            // voir obscureText
            // obscureText: true,

            // voir decoration
            // decoration: InputDecoration(
            //   border: OutlineInputBorder(),
            //   suffixIcon: Icon(Icons.person),
            //   label: Text("Prénom"),
            //   hintText: "Prénom",
            //   helperText: "Entrez votre prénom",
            // ),
          ],
        ),
      ),
    );
  }
}
