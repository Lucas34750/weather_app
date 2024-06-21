import 'package:flutter/material.dart';

class CoordsError extends StatelessWidget {
  final String texterror;
  const CoordsError({super.key,required this.texterror});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(texterror),
      actions: [
        TextButton(
          child: 
          const Text(
            'OK',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),
          ),
          onPressed:()=> Navigator.pop(context),
        )
      ],
    );
  }
}