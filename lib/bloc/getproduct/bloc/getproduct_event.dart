part of 'getproduct_bloc.dart';

class GetproductEvent extends Equatable {
  const GetproductEvent();

  @override
  List<Object> get props => [];
}

class Getproductdata extends GetproductEvent {}

class CourseDetailsdata extends GetproductEvent {
  String? id;
  CourseDetailsdata({this.id});
}
