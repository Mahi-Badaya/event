import 'package:flutter/material.dart';

class ExitDialog extends StatelessWidget {
  const ExitDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Exit App'),
      content: const Text('Do you want to exit the app?'),
      actions:[
        TextButton(
          onPressed: () => Navigator.of(context).pop(false),
          child:const Text('No'),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).pop(true),
          child:const Text('Yes'),
        ),

      ],
    );
  }
}
