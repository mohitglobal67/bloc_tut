part of 'counter_bloc.dart';

sealed class CounterEvent extends Equatable {
  const CounterEvent();

  @override
  List<Object> get props => [];
}

class Increment extends CounterEvent {}

class Decrement extends CounterEvent {}

class SwitchButton extends CounterEvent {}

class DropDownValue extends CounterEvent {
  final String selecteddata;
  const DropDownValue(this.selecteddata);
}

class SignInfiledCheck extends CounterEvent {
  final String? email;
  final String? password;
  const SignInfiledCheck(this.email, this.password);
}

class Login extends CounterEvent {}
