import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState()) {
    on<Increment>(_incrementcounter);
    on<Decrement>(_decrementtcounter);
    on<SwitchButton>(_switchButton);
    on<DropDownValue>(_dropDownValue);
    on<SignInfiledCheck>(_signInfiledCheck);
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
    if (event.email == "") {
      emit(state.copyWith(error: "dnkjnkk;"));
    } else {
      emit(state.copyWith(email: event.email));
    }
  }
}
