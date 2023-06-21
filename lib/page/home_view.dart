// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:tugas_akhir_mbkm/bloc/count_bloc.dart';
import 'package:tugas_akhir_mbkm/widget/button_list.dart';

import '../widget/input_form_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildResultFormWigdet(
        Conditions conditions, CountStateInitial state) {
      Widget resultFormWidget = const SizedBox();
      switch (conditions) {
        case Conditions.idle:
          resultFormWidget = const Text('Please input number');
          break;
        case Conditions.loading:
          resultFormWidget = const Center(
            child: CircularProgressIndicator(),
          );
          break;
        case Conditions.succes:
          resultFormWidget = Wrap(
            children: state.result
                .map((e) => Container(
                      margin: const EdgeInsets.only(left: 15),
                      child: Text(e.toString()),
                    ))
                .toList(),
          );
          break;
      }
      return SizedBox(
        width: double.infinity,
        child: resultFormWidget,
      );
    }

    final formKey = GlobalKey<FormState>();
    return Scaffold(
      body: BlocBuilder<CountBloc, CountState>(
        builder: (context, state) {
          if (state is CountStateInitial) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: ListView(children: [
                Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InputFormWidget(state: state),
                        const SizedBox(
                          height: 15,
                        ),
                        ButtonList(formKey: formKey, state: state),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          'Result : ',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.normal),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        buildResultFormWigdet(state.conditions, state)
                      ],
                    )),
              ]),
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
