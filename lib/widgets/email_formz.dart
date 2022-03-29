import 'package:flutter/material.dart';
import 'package:flutter_formz_demo/models/email.dart';

class EmailFormz extends StatefulWidget {
  const EmailFormz({Key? key}) : super(key: key);

  @override
  State<EmailFormz> createState() => _EmailFormzState();
}

class _EmailFormzState extends State<EmailFormz> {
  Email email = const Email.pure();
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      children: [
        SizedBox(
          width: 250,
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Email (Using Formz)',
              helperText:
                  email.error == EmailInputError.empty ? '請輸入 Email' : null,
              errorText:
                  email.error == EmailInputError.invalid ? 'Email格式有誤' : null,
            ),
            onChanged: (inputText) {
              setState(() => email = Email.dirty(value: inputText));
            },
          ),
        ),
        ElevatedButton(
          child: const Text('Done'),
          onPressed:
              email.valid ? () => print('Your email: ${email.value}') : null,
        ),
      ],
    );
  }
}
