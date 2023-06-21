import 'package:flutter/material.dart';

import '../bloc/count_bloc.dart';

class InputFormWidget extends StatelessWidget {
  const InputFormWidget({
    super.key,
    required this.state,
  });

  final CountStateInitial state;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (number) {
        if (number == null || number.isEmpty) {
          return 'Please input number';
        }
        return null;
      },
      controller: state.numController,
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
          border:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
          hintText: 'Input Number',
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.black))),
    );
  }
}
