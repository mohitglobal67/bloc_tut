import 'package:bloc_project/counter/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  bool check = true;

  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  List<String> drop = ["qww", "delkml", "cednklmnl", "ednj", "ednkn"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Counter"),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<CounterBloc, CounterState>(
                builder: (context, state) {
                  return Text(state.error);
                },
              ),
              BlocBuilder<CounterBloc, CounterState>(
                builder: (context, state) {
                  return Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextField(
                      onChanged: (value) {
                        context
                            .read<CounterBloc>()
                            .add(SignInfiledCheck(_email.text, _password.text));
                      },
                      controller: _email,
                      decoration: InputDecoration(hintText: "Enter Email"),
                    ),
                  );
                },
              ),
              BlocBuilder<CounterBloc, CounterState>(
                builder: (context, state) {
                  return Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextField(
                      onChanged: (value) {
                        context
                            .read<CounterBloc>()
                            .add(SignInfiledCheck(_email.text, _password.text));
                      },
                      controller: _password,
                      decoration: InputDecoration(hintText: "Enter Passwprd"),
                    ),
                  );
                },
              ),
              BlocBuilder<CounterBloc, CounterState>(
                builder: (context, state) {
                  return ElevatedButton(
                      onPressed: () {
                        context
                            .read<CounterBloc>()
                            .add(SignInfiledCheck(_email.text, _password.text));
                      },
                      child: Text("Login"));
                },
              ),
              Center(
                child: BlocBuilder<CounterBloc, CounterState>(
                  builder: (context, state) {
                    return DropdownButton<String>(
                      value: state.selectedvalue,
                      onChanged: (newValue) {
                        context
                            .read<CounterBloc>()
                            .add(DropDownValue(newValue!));

                        print(newValue);
                      },
                      items: drop.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value.toString()),
                        );
                      }).toList(),
                    );
                  },
                ),
              ),
              BlocBuilder<CounterBloc, CounterState>(
                buildWhen: (previous, current) =>
                    previous.check != current.check,
                builder: (context, state) {
                  return Switch(
                      value: state.check,
                      onChanged: (value) {
                        context.read<CounterBloc>().add(SwitchButton());
                      });
                },
              ),
              BlocBuilder<CounterBloc, CounterState>(
                buildWhen: (previous, current) =>
                    previous.counter != current.counter,
                builder: (context, state) {
                  return Center(
                    child: Text(
                      state.counter.toString(),
                      style: const TextStyle(fontSize: 30),
                    ),
                  );
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BlocBuilder<CounterBloc, CounterState>(
                    builder: (context, state) {
                      return ElevatedButton(
                          onPressed: () {
                            context.read<CounterBloc>().add(Increment());
                          },
                          child: const Text("+"));
                    },
                  ),
                  BlocBuilder<CounterBloc, CounterState>(
                    builder: (context, state) {
                      return ElevatedButton(
                          onPressed: () {
                            context.read<CounterBloc>().add(Decrement());
                          },
                          child: const Text("-"));
                    },
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
