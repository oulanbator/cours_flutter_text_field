import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _prenomController = TextEditingController();
  var _emailController = TextEditingController();
  // var _formKey = GlobalKey<FormState>();
  // String _selectedOption = "";
  // String _radioOption = "";
  var _prenom = "";
  var _email = "";

  // @override
  // void initState() {
  //   super.initState();
  //   _prenomController.text = "Victor";
  // }

  // @override
  // void dispose() {
  //   super.dispose();
  //   _prenomController.dispose();
  //   _emailController.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // voir gestion du clavier virtuel
      // resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Text("Prénom : $_prenom"),
          Text("Email : $_email"),
          // -------- TextField --------
          // _prenomTextField(),
          // _emailTextField(),

          // -------- Form / TextFormField --------
          _form(),
        ],
      ),
    );
  }

  Widget _prenomTextField() {
    // Comportement : essayer de mettre le TextField dans une Row
    return TextField(
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
        );
  }

  Widget _emailTextField() {
    return TextField(
      onSubmitted: (value) {},
      decoration: const InputDecoration(
        label: Text("Email"),
        helperText: "Saisissez votre email",
        suffixIcon: Icon(Icons.mail),
      ),
    );
  }

  Widget _form() {
    return Form(
      // ----- voir key
      // key: _formKey,
      child: Column(
        // onSubmitted ne fonctionne plus dans un TextFormField car on va
        // soummettre la validation du formulaire et non du TextField
        children: [
          TextFormField(
              // ----- voir valeur initiale
              // initialValue: "John",
              // controller: _prenomController,
              // decoration: const InputDecoration(helperText: "Prénom"),
              // validator: (String? value) {
              //   if (value == null || value.isEmpty) {
              //     return 'Ce champs doit être renseigné';
              //   }
              //   if (value.length < 2) {
              //     return "Prénom trop court";
              //   }
              //   return null;
              // },
              // onSaved: (value) => setState(() {
              //   _prenom = value!;
              // }),
              ),
          TextFormField(
              // decoration: const InputDecoration(helperText: "Email"),
              // validator: (value) {
              //   if (value == null || value.isEmpty) {
              //     return 'Ce champ doit être renseigné';
              //   }
              //   // Avec package email_validator
              //   if (!EmailValidator.validate(value)) {
              //     return 'Saisir un email valide';
              //   }
              //   // Avec une Regex
              //   // final RegExp regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
              //   // if (!regex.hasMatch(value)) {
              //   //   return 'Saisir un email valide';
              //   // }
              //   return null;
              // },
              // onSaved: (value) => setState(() {
              //   _email = value!;
              // }),
              ),

          // ----- TEXT AREA ------
          // TextFormField(
          //   maxLines: 5,
          //   decoration: InputDecoration(
          //     helperText: 'Votre message',
          //   ),
          // ),

          // ----- DROPDOWN (Select) -----
          // DropdownButtonFormField(
          //   value: _selectedOption,
          //   items: [
          //     DropdownMenuItem(
          //       value: "",
          //       child: Text(""),
          //     ),
          //     DropdownMenuItem(
          //       value: "option1",
          //       child: Text("Option1"),
          //     ),
          //     DropdownMenuItem(
          //       value: "option2",
          //       child: Text("Option2"),
          //     ),
          //     DropdownMenuItem(
          //       value: "option3",
          //       child: Text("Option3"),
          //     ),
          //   ],
          //   onChanged: (value) => setState(() {
          //     if (value != null) {
          //       _selectedOption = value;
          //     } else {
          //       _selectedOption = "";
          //     }
          //   }),
          //   validator: (value) {
          //     if (value == null || value.isEmpty) {
          //       return 'Ce champs doit être renseigné';
          //     }
          //     return null;
          //   },
          // ),

          // ----- BOUTONS RADIO -----
          // RadioListTile(
          //   title: const Text("Option 1"),
          //   value: "option1",
          //   groupValue: _radioOption,
          //   onChanged: (value) => setState(() {
          //     _radioOption = value!;
          //   }),
          // ),
          // RadioListTile(
          //   title: const Text("Option 2"),
          //   value: "option2",
          //   groupValue: _radioOption,
          //   onChanged: (value) => setState(() {
          //     _radioOption = value!;
          //   }),
          // ),

          // ----- BOUTONS RADIO AVEC VALIDATION (FORM FIELD WRAPPER) -----
          // FormField(
          //   validator: (value) {
          //     if (value == null) {
          //       return 'Choisissez une option';
          //     }
          //     return null;
          //   },
          //   builder: (state) {
          //     return Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         Row(
          //           children: [
          //             Expanded(
          //               child: RadioListTile(
          //                 title: const Text("Option 1"),
          //                 value: "option1",
          //                 groupValue: _radioOption,
          //                 onChanged: (value) {
          //                   setState(() {
          //                     _radioOption = value!;
          //                   });
          //                   state.didChange(value);
          //                 },
          //               ),
          //             ),
          //             Expanded(
          //               child: RadioListTile(
          //                 title: const Text("Option 2"),
          //                 value: "option2",
          //                 groupValue: _radioOption,
          //                 onChanged: (value) {
          //                   setState(() {
          //                     _radioOption = value!;
          //                   });
          //                   state.didChange(value);
          //                 },
          //               ),
          //             ),
          //           ],
          //         ),
          //         state.hasError
          //             ? Text(
          //                 state.errorText!,
          //                 // --- Style provenant du thème
          //                 // style:
          //                 //     Theme.of(context).inputDecorationTheme.errorStyle,

          //                 // --- Style copié de InputDecorator (localisé)
          //                 // style:
          //                 //     Theme.of(context).textTheme.bodySmall!.copyWith(
          //                 //           color: Theme.of(context).colorScheme.error,
          //                 //         ),
          //               )
          //             : Container(),

          //         // TextFormField(
          //         //   enabled: false,
          //         //   decoration: InputDecoration(
          //         //     // hintText: state.errorText ?? '',
          //         //     errorText: state.errorText,
          //         //   ),
          //         // ),
          //       ],
          //     );
          //   },
          // ),

          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => _submitForm(),
            child: const Text("Valider"),
          )
        ],
      ),
    );
  }

  _submitForm() {
    // Validation
    // if (_formKey.currentState != null) {
    //   if (_formKey.currentState!.validate()) {
    //     // _formKey.currentState!.save();
    //     // print("Validate");
    //     // print(_prenomController.text);
    //     // print(_emailController.text);
    //   }
    // }
  }
}
