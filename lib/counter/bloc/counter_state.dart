part of 'counter_bloc.dart';

enum Postapistatus { initial, loading, error, success }

class CounterState extends Equatable {
  String selectedvalue;
  final int counter;
  final bool check;
  final String email;
  final String pasword;
  final String error;
  final Postapistatus postapistatus;

  CounterState({
    this.counter = 0,
    this.check = true,
    this.selectedvalue = "qww",
    this.email = "",
    this.pasword = "",
    this.error = "",
    this.postapistatus = Postapistatus.initial,
  });

  CounterState copyWith(
      {int? counter,
      bool? check,
      String? selectedvalue,
      String? email,
      String? pasword,
      String? error,
      Postapistatus? postapistatus}) {
    return CounterState(
        counter: counter ?? this.counter,
        check: check ?? this.check,
        selectedvalue: selectedvalue ?? this.selectedvalue,
        email: email ?? this.email,
        pasword: pasword ?? this.pasword,
        error: error ?? this.error,
        postapistatus: postapistatus ?? this.postapistatus);
  }

  @override
  List<Object> get props =>
      [counter, check, selectedvalue, email, pasword, error, postapistatus];
}
