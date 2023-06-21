import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'count_event.dart';
part 'count_state.dart';
part 'count_bloc.freezed.dart';

class CountBloc extends Bloc<CountEvent, CountState> {
  CountBloc()
      : super(CountState.initial(
            result: [],
            conditions: Conditions.idle,
            numController: TextEditingController())) {
    on<CountEventGetResultNum1>(_onGetResultNum1);
    on<CountEventGetResultNum2>(_onGetResultNum2);
    on<CountEventGetResultNum3>(_onGetResultNum3);
    on<CountEventGetResultNum4>(_onGetResultNum4);
  }

  Future<void> _onGetResultNum1(
      CountEventGetResultNum1 event, Emitter<CountState> emit) async {
    final List<String> result = [];
    emit(state.copyWith(conditions: Conditions.loading));
    for (var i = 1; i <= int.parse(event.num.toString()); i++) {
      result.add(i.toString());
    }
    emit(state.copyWith(result: result, conditions: Conditions.succes));
  }

  Future<void> _onGetResultNum2(
      CountEventGetResultNum2 event, Emitter<CountState> emit) async {
    final List<String> result = [];

    emit(state.copyWith(
      conditions: Conditions.loading,
    ));

    for (var i = 1; i <= int.parse(event.num.toString()); i++) {
      result.add(i.toString());

      if (i == int.parse(event.num.toString())) {
        for (var j = int.parse(event.num.toString()) - 1; j > 0; j--) {
          result.add(j.toString());
        }
      }
    }
    emit(state.copyWith(result: result, conditions: Conditions.succes));
  }

  Future<void> _onGetResultNum3(
      CountEventGetResultNum3 event, Emitter<CountState> emit) async {
    emit(state.copyWith(conditions: Conditions.loading));
    final List<String> result = [];
    int firstIndex = 10;

    for (var i = 0; i < int.parse(event.num.toString()); i++) {
      result.add((firstIndex + i * 11).toString());
    }
    emit(state.copyWith(result: result, conditions: Conditions.succes));
  }

  Future<void> _onGetResultNum4(
      CountEventGetResultNum4 event, Emitter<CountState> emit) async {
    emit(state.copyWith(conditions: Conditions.loading));
    final List<String> result = [];

    for (var i = 1; i < int.parse(event.num.toString()) + 1; i++) {
      if (i % 5 == 0) {
        result.add('Lima');
      } else if (i % 7 == 0) {
        result.add('Tujuh');
      } else {
        result.add(i.toString());
      }
    }
    emit(state.copyWith(result: result, conditions: Conditions.succes));
  }
}
