import 'package:bloc_project/bloc/products_bloc.dart';
import 'package:bloc_project/counter/bloc/counter_bloc.dart';
import 'package:bloc_project/counter/counter.dart';
import 'package:bloc_project/repo/project_repo.dart';
import 'package:bloc_project/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(RepositoryProvider(
    create: (context) => ProductRepo(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ProductsBloc(ProductRepo()),
        ),
        BlocProvider(
          create: (context) => CounterBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: CounterApp(),
      ),
    );
  }
}
