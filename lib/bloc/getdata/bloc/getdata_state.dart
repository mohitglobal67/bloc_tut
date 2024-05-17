part of 'getdata_bloc.dart';

enum Condation {
  initial,
  loading,
  loaded,
  error,
}

class GetdataState extends Equatable {
  String error;
  Condation condation;
  final List<ProductsModel> productsModel;
  GetdataState(
      {this.condation = Condation.initial,
      this.error = "",
      this.productsModel = const <ProductsModel>[]});

  GetdataState copyWith({
    String? error,
    Condation? condation,
    final List<ProductsModel>? productsModel,
  }) {
    return GetdataState(
        error: error ?? this.error,
        condation: condation ?? this.condation,
        productsModel: productsModel ?? this.productsModel);
  }

  @override
  List<Object> get props => [error, condation, productsModel];
}
