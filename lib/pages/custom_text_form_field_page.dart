import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomTextFormFieldPage extends StatefulWidget {
  const CustomTextFormFieldPage({Key? key}) : super(key: key);
  static const String id = "custom_text_form_field_page";

  @override
  State<CustomTextFormFieldPage> createState() =>
      _CustomTextFormFieldPageState();
}

class _CustomTextFormFieldPageState extends State<CustomTextFormFieldPage> {
  final _formKey = GlobalKey<FormState>();
  String _email = "", _password = "";
  static const lengthOfPassword = 6;

  void _doSignIn() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState?.save();
      if (kDebugMode) {
        print("Successfully");
      }
    } else {
      if (kDebugMode) {
        print("Feild");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "CustomTextFormField",
          style: TextStyle(color: Colors.amberAccent, fontSize: 25),
        ),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 4),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: "Emil",
                ),
                validator: (input) =>
                    !input!.contains("@") ? 'Please enter a valid email' : null,
                onSaved: (input) => _email = input!,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 4),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: "Password",
                ),
                validator: (input) => input!.length < lengthOfPassword
                    ? 'Must be at least $lengthOfPassword characters'
                    : null,
                onSaved: (input) => _password = input!,
              ),
            ),
            TextButton(
                onPressed: () {
                  _doSignIn();
                },
                style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16))),
                child: const Text(
                  "Sign in",
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
