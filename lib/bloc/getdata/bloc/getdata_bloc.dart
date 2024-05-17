import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:bloc_project/models/productmodel.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart' as http;

part 'getdata_event.dart';
part 'getdata_state.dart';

class GetdataBloc extends Bloc<GetdataEvent, GetdataState> {
  GetdataBloc() : super(GetdataState()) {
    on<Getdatadetails>(_getdata);
  }

  _getdata(Getdatadetails event, Emitter<GetdataState> emit) async {
    var res = await http.get(Uri.parse("https://fakestoreapi.com/products"));

    emit(state.copyWith(error: "Loading", condation: Condation.loading));

    try {
      if (res.statusCode == 200) {
        var data = productsModelFromJson(res.body.toString());

        emit(state.copyWith(
            error: "Sucess", condation: Condation.loaded, productsModel: data));
      } else {
        throw Exception("Faield To Load products");
      }
    } catch (e) {
      emit(state.copyWith(error: e.toString(), condation: Condation.error));
    }
  }
}
