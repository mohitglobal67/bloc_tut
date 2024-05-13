part of 'counter_bloc.dart';

class CounterState extends Equatable {
  String selectedvalue;
  final int counter;
  final bool check;
  final String email;
  final String pasword;
  final String error;

  CounterState(
      {this.counter = 0,
      this.check = true,
      this.selectedvalue = "qww",
      this.email = "",
      this.pasword = "",
      this.error = ""});

  CounterState copyWith(
      {int? counter,
      bool? check,
      String? selectedvalue,
      String? email,
      String? pasword,
      String? error}) {
    return CounterState(
        counter: counter ?? this.counter,
        check: check ?? this.check,
        selectedvalue: selectedvalue ?? this.selectedvalue,
        email: email ?? this.email,
        pasword: pasword ?? this.pasword,
        error: error ?? this.error);
  }

  @override
  List<Object> get props =>
      [counter, check, selectedvalue, email, pasword, error];
}
