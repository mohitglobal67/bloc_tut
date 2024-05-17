import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:bloc_project/models/coursedetails.dart';
import 'package:bloc_project/models/coursemodel.dart';
import 'package:bloc_project/models/productmodel.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart' as http;

part 'getproduct_event.dart';
part 'getproduct_state.dart';

class GetproductBloc extends Bloc<GetproductEvent, GetproductState> {
  GetproductBloc() : super(GetproductState()) {
    on<Getproductdata>(_getProducts);
    on<CourseDetailsdata>(_coursedetails);
  }

  void _getProducts(Getproductdata event, Emitter<GetproductState> emit) async {
    try {
      emit(state.copyWith(
        error: "Sucess",
        condation: Condation.loading,
      ));
      var res = await http.get(Uri.parse(
          "http://crmapi.global-opportunities.co.in/Api/gopandroid/CourseRelatedDetails"));

      if (res.statusCode == 200) {
        var data = courseModelFromJson(res.body.toString());

        emit(state.copyWith(
            error: "Sucess",
            condation: Condation.sucess,
            dashboard: data.dashboardCourseDetail));
      } else {
        throw Exception("Faild to load Products");
      }
    } catch (e) {
      emit(state.copyWith(
        error: e.toString(),
        condation: Condation.failuar,
      ));
    }
  }

  void _coursedetails(
      CourseDetailsdata event, Emitter<GetproductState> emit) async {
    try {
      emit(state.copyWith(
        error: "Sucess",
        condation: Condation.loading,
      ));
      var res = await http.get(Uri.parse(
          "http://crmapi.global-opportunities.co.in/Api/SearchCourseMaster/GetSearchCourseDetails?CourseId=${event.id}"));

      if (res.statusCode == 200) {
        var data = courseDetailsModelFromJson(res.body);

        emit(state.copyWith(
            error: "Sucess", condation: Condation.sucess, coursemodel: data));
      } else {
        throw Exception("Faild to load Products");
      }
    } catch (e) {
      emit(state.copyWith(
        error: e.toString(),
        condation: Condation.failuar,
      ));
    }
  }
}
