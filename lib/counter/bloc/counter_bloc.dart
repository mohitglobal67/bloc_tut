import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:bloc_project/repo/project_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart' as http;
part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState()) {
    on<Increment>(_incrementcounter);
    on<Decrement>(_decrementtcounter);
    on<SwitchButton>(_switchButton);
    on<DropDownValue>(_dropDownValue);
    on<SignInfiledCheck>(_signInfiledCheck);

    on<Login>(_login);
  }

  void _incrementcounter(Increment event, Emitter<CounterState> emit) {
    emit(state.copyWith(counter: state.counter + 1));
  }

  void _decrementtcounter(Decrement event, Emitter<CounterState> emit) {
    emit(state.copyWith(counter: state.counter - 1));
  }

  void _switchButton(SwitchButton event, Emitter<CounterState> emit) {
    emit(state.copyWith(check: !state.check));
  }

  void _dropDownValue(DropDownValue event, Emitter<CounterState> emit) {
    emit(state.copyWith(selectedvalue: event.selecteddata));
  }

  void _signInfiledCheck(SignInfiledCheck event, Emitter<CounterState> emit) {
    if (event.email == "" && event.email!.length > 8) {
      emit(state.copyWith(error: "Please Enter Email"));
    } else if (event.password == "") {
      emit(state.copyWith(error: "Please Enter Password"));
    } else {
      emit(state.copyWith(email: event.email, pasword: event.password));
    }
  }

  void _login(Login event, Emitter<CounterState> emit) async {
    emit(
      state.copyWith(postapistatus: Postapistatus.loading),
    );
    Map data = {'email': state.email, 'password': state.pasword};

    try {
      final response =
          await http.post(Uri.parse('https://reqres.in/api/login'), body: data);
      var data1 = jsonDecode(response.body);
      if (response.statusCode == 200) {
        emit(
          state.copyWith(
            postapistatus: Postapistatus.success,
            error: 'Login successful',
          ),
        );
      } else {
        emit(
          state.copyWith(
            postapistatus: Postapistatus.error,
            error: data1['error'],
          ),
        );
      }
    } catch (e) {
      emit(
        state.copyWith(
          postapistatus: Postapistatus.error,
          error: e.toString(),
        ),
      );
    }
  }
}
