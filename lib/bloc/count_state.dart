part of 'count_bloc.dart';

enum Conditions { idle, loading, succes }

@freezed
class CountState with _$CountState {
  const factory CountState.initial(
      {required List<String> result,
      required Conditions conditions,
      required TextEditingController numController}) = CountStateInitial;
}
