import 'dart:developer';

import 'package:bloc_project/bloc/getproduct/bloc/getcoursedetails.dart';
import 'package:bloc_project/bloc/getproduct/bloc/getproduct_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetProduct extends StatefulWidget {
  const GetProduct({super.key});

  @override
  State<GetProduct> createState() => _GetProductState();
}

class _GetProductState extends State<GetProduct> {
  @override
  void initState() {
    context.read<GetproductBloc>().add(Getproductdata());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
        BlocBuilder<GetproductBloc, GetproductState>(builder: (context, state) {
      switch (state.condation) {
        case Condation.loading:
          return Center(child: CircularProgressIndicator());

        case Condation.sucess:
          return ListView.builder(
              itemCount: state.dashboard!.length,
              itemBuilder: (context, index) {
                var data = state.dashboard![index];
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CourseDetails(
                              id: data.courseId,
                            )));
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    height: 50,
                    color: Colors.amber,
                    child: ListTile(
                      title: Text(data.course.toString()),
                    ),
                  ),
                );
              });
        // case Condation.loading:
        //   return Center(child: Text("knk;".toString()));

        case Condation.failuar:
          return Center(child: Text(state.error.toString()));

        // TODO: Handle this case.
      }

      // debugger();
      // print(state.productsModel);

      // ignore: unrelated_type_equality_checks
    }));
  }
}
