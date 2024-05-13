import 'package:bloc/bloc.dart';
import 'package:bloc_project/models/productmodel.dart';
import 'package:bloc_project/repo/project_repo.dart';
import 'package:equatable/equatable.dart';
part 'products_event.dart';
part 'products_state.dart';

class ProductsBloc extends Bloc<ProductsLoadedEvent, ProductsState> {
  final ProductRepo productRepo;
  ProductsBloc(this.productRepo) : super(ProductsLoadingState()) {
    on<ProductsLoadedEvent>(getProdeucts);
  
  }

  void getProdeucts(
      ProductsLoadedEvent event, Emitter<ProductsState> emit) async {
    try {
      emit(ProductsLoadingState());
      var data = await productRepo.getProducts();

      emit(ProductsLoadedState(data));
    } catch (e) {
      emit(ProductsErrorState(e.toString()));
    }
  }
}
