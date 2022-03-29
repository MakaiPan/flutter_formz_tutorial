import 'package:flutter/material.dart';
import 'package:flutter_formz_demo/utils.dart';

class EmailTextField extends StatefulWidget {
  const EmailTextField({Key? key}) : super(key: key);

  @override
  State<EmailTextField> createState() => _EmailTextFieldState();
}

class _EmailTextFieldState extends State<EmailTextField> {
  late final TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController()..addListener(() => setState(() {}));
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      children: [
        SizedBox(
          width: 250,
          child: TextField(
            controller: _controller,
            decoration: const InputDecoration(
              labelText: 'Email (Using TextField)',
            ),
            onChanged: (inputText) {},
          ),
        ),
        ElevatedButton(
          child: const Text('Done'),
          onPressed: Utils.emailRegExp.hasMatch(_controller.text)
              ? () => print('Your email: ${_controller.text}')
              : null,
        ),
      ],
    );
  }
}
