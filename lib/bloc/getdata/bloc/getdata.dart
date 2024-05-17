import 'dart:developer';

import 'package:bloc_project/bloc/getdata/bloc/getdata_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetDataSCreen extends StatefulWidget {
  const GetDataSCreen({super.key});

  @override
  State<GetDataSCreen> createState() => _GetDataSCreenState();
}

class _GetDataSCreenState extends State<GetDataSCreen> {
  @override
  void initState() {
    context.read<GetdataBloc>().add(Getdatadetails());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocBuilder<GetdataBloc, GetdataState>(builder: (context, state) {
      switch (state.condation) {
        case Condation.initial:
          return Center(child: CircularProgressIndicator());

        case Condation.loaded:
          return ListView.builder(
              itemCount: state.productsModel.length,
              itemBuilder: (context, index) {
                var data = state.productsModel[index];
                return ListTile(
                  title: Text(data.title.toString()),
                );
              });

        case Condation.loading:
          return Center(child: CircularProgressIndicator());
        case Condation.error:
          return Center(child: Text(state.error.toString()));

        // TODO: Handle this case.
      }

      // debugger();
      // print(state.productsModel);

      // ignore: unrelated_type_equality_checks
    }));
  }
}
