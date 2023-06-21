import 'package:flutter/material.dart';

class ButtonSectionWidget extends StatelessWidget {
  const ButtonSectionWidget({
    Key? key,
    required this.n,
    required this.onTap,
  }) : super(key: key);

  final String n;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
            primary: Colors.black,
            side: BorderSide(width: 1),
            minimumSize: Size(MediaQuery.of(context).size.height * 0.2, 50)),
        onPressed: onTap,
        child: Text(n));
  }
}
