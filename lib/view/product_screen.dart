import 'package:bloc_project/bloc/products_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  @override
  void initState() {
    context.read<ProductsBloc>().add(ProductsLoadedEvent());
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocBuilder<ProductsBloc, ProductsState>(
      builder: (context, state) {
        if (state is ProductsLoadingState) {
          return Center(child: CircularProgressIndicator.adaptive());
        } else if (state is ProductsLoadedState) {
          return ListView.builder(
              itemCount: state.productsModel.length,
              itemBuilder: (context, index) {
                var data = state.productsModel[index];
                return ListTile(
                  title: Text(data.title.toString()),
                );
              });
        } else if (state is ProductsErrorState) {
          return Center(child: Text(state.errormessage));
        }

        return SizedBox();
      },
    ));
  }
}
