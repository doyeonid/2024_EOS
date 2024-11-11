import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  final VoidCallback onPressed;

  const AddButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Icon(
        Icons.add,
        size: 30,
        color: Colors.white,
      ),
      style: ElevatedButton.styleFrom(
        elevation: 10.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),),
      child: const Text('ElevatedButton'),
    ),
  }
}