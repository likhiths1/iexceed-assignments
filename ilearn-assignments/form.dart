import 'package:flutter/material.dart';

void main() => runApp(FormValidationApp());

class FormValidationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: FormPage());
  }
}

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Submitted: ${_emailController.text}")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Validated Form")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _emailController,
                validator: (value) =>
                    value != null && value.contains('@') ? null : "Enter a valid email",
                decoration: InputDecoration(labelText: "Email"),
              ),
              SizedBox(height: 20),
              ElevatedButton(onPressed: _submit, child: Text("Submit")),
            ],
          ),
        ),
      ),
    );
  }
}