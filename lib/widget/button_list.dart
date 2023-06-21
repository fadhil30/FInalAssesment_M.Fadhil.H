import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tugas_akhir_mbkm/widget/button_section_widget.dart';

import '../bloc/count_bloc.dart';

class ButtonList extends StatelessWidget {
  const ButtonList({
    Key? key,
    required this.formKey,
    required this.state,
  }) : super(key: key);

  final GlobalKey<FormState> formKey;
  final CountStateInitial state;

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<CountBloc>();
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ButtonSectionWidget(
                n: '1',
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    bloc.add(CountEvent.onGetResultNum1(
                        int.parse(state.numController.text)));
                  }
                }),
            ButtonSectionWidget(
              n: '2',
              onTap: () {
                if (formKey.currentState!.validate()) {
                  bloc.add(CountEvent.onGetResultNum2(
                      int.parse(state.numController.text)));
                }
              },
            )
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ButtonSectionWidget(
                n: '3',
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    bloc.add(CountEvent.onGetResultNum3(
                        int.parse(state.numController.text)));
                  }
                }),
            ButtonSectionWidget(
              n: '4',
              onTap: () {
                if (formKey.currentState!.validate()) {
                  bloc.add(CountEvent.onGetResultNum4(
                      int.parse(state.numController.text)));
                }
              },
            )
          ],
        )
      ],
    );
  }
}
