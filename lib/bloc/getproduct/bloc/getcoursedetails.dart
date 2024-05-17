import 'package:bloc_project/bloc/getproduct/bloc/getproduct_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CourseDetails extends StatefulWidget {
  String? id;
  CourseDetails({super.key, this.id});

  @override
  State<CourseDetails> createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails> {
  @override
  void initState() {
    context.read<GetproductBloc>().add(CourseDetailsdata(id: widget.id));

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
              itemCount: state.coursemodel.length,
              itemBuilder: (context, index) {
                var data = state.coursemodel[index];
                return ListTile(
                  title: Text(data.fAddress.toString()),
                );
              });
        // case Condation.loading:
        //   return Center(child: Text("knk;".toString()));

        case Condation.failuar:
          return Center(child: Text(state.error.toString()));
      }

      // debugger();
      // print(state.productsModel);

      // ignore: unrelated_type_equality_checks
    }));
  }
}
