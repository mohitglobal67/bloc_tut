part of 'getproduct_bloc.dart';

enum Condation { loading, sucess, failuar }

class GetproductState extends Equatable {
  String error;

  List<DashboardCourseDetail>? dashboard;

  List<CourseDetailsModel> coursemodel;

  Condation condation;

  GetproductState(
      {this.error = "",
      this.dashboard = const <DashboardCourseDetail>[],
      this.condation = Condation.loading,
      this.coursemodel = const <CourseDetailsModel>[]});

  GetproductState copyWith({
    String? error,
    List<DashboardCourseDetail>? dashboard,
    Condation? condation,
    List<CourseDetailsModel>? coursemodel,
  }) {
    return GetproductState(
        error: error ?? this.error,
        dashboard: dashboard ?? this.dashboard,
        condation: condation ?? this.condation,
        coursemodel: coursemodel ?? this.coursemodel);
  }

  @override
  List<dynamic> get props => [error, condation, dashboard, coursemodel];
}
