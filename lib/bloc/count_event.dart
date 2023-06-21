part of 'count_bloc.dart';

@freezed
class CountEvent with _$CountEvent {
  const factory CountEvent.onGetResultNum1(int num) = CountEventGetResultNum1;
  const factory CountEvent.onGetResultNum2(int num) = CountEventGetResultNum2;
  const factory CountEvent.onGetResultNum3(int num) = CountEventGetResultNum3;
  const factory CountEvent.onGetResultNum4(int num) = CountEventGetResultNum4;
}
