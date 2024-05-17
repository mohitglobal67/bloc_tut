// To parse this JSON data, do
//
//     final courseModel = courseModelFromJson(jsonString);

import 'dart:convert';

CourseModel courseModelFromJson(String str) =>
    CourseModel.fromJson(json.decode(str));

String courseModelToJson(CourseModel data) => json.encode(data.toJson());

class CourseModel {
  final List<DashboardCourseDetail>? dashboardCourseDetail;
  final List<DashboardUniversityDetail>? dashboardUniversityDetail;
  final List<DashboardCountryDetail>? dashboardCountryDetail;

  CourseModel({
    this.dashboardCourseDetail,
    this.dashboardUniversityDetail,
    this.dashboardCountryDetail,
  });

  CourseModel copyWith({
    List<DashboardCourseDetail>? dashboardCourseDetail,
    List<DashboardUniversityDetail>? dashboardUniversityDetail,
    List<DashboardCountryDetail>? dashboardCountryDetail,
  }) =>
      CourseModel(
        dashboardCourseDetail:
            dashboardCourseDetail ?? this.dashboardCourseDetail,
        dashboardUniversityDetail:
            dashboardUniversityDetail ?? this.dashboardUniversityDetail,
        dashboardCountryDetail:
            dashboardCountryDetail ?? this.dashboardCountryDetail,
      );

  factory CourseModel.fromJson(Map<String, dynamic> json) => CourseModel(
        dashboardCourseDetail: json["DashboardCourseDetail"] == null
            ? []
            : List<DashboardCourseDetail>.from(json["DashboardCourseDetail"]!
                .map((x) => DashboardCourseDetail.fromJson(x))),
        dashboardUniversityDetail: json["DashboardUniversityDetail"] == null
            ? []
            : List<DashboardUniversityDetail>.from(
                json["DashboardUniversityDetail"]!
                    .map((x) => DashboardUniversityDetail.fromJson(x))),
        dashboardCountryDetail: json["DashboardCountryDetail"] == null
            ? []
            : List<DashboardCountryDetail>.from(json["DashboardCountryDetail"]!
                .map((x) => DashboardCountryDetail.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "DashboardCourseDetail": dashboardCourseDetail == null
            ? []
            : List<dynamic>.from(dashboardCourseDetail!.map((x) => x.toJson())),
        "DashboardUniversityDetail": dashboardUniversityDetail == null
            ? []
            : List<dynamic>.from(
                dashboardUniversityDetail!.map((x) => x.toJson())),
        "DashboardCountryDetail": dashboardCountryDetail == null
            ? []
            : List<dynamic>.from(
                dashboardCountryDetail!.map((x) => x.toJson())),
      };
}

class DashboardCountryDetail {
  final String? country;
  final String? universityCount;
  final String? countryId;
  final String? countryImg;

  DashboardCountryDetail({
    this.country,
    this.universityCount,
    this.countryId,
    this.countryImg,
  });

  DashboardCountryDetail copyWith({
    String? country,
    String? universityCount,
    String? countryId,
    String? countryImg,
  }) =>
      DashboardCountryDetail(
        country: country ?? this.country,
        universityCount: universityCount ?? this.universityCount,
        countryId: countryId ?? this.countryId,
        countryImg: countryImg ?? this.countryImg,
      );

  factory DashboardCountryDetail.fromJson(Map<String, dynamic> json) =>
      DashboardCountryDetail(
        country: json["Country"],
        universityCount: json["UniversityCount"],
        countryId: json["CountryId"],
        countryImg: json["CountryImg"],
      );

  Map<String, dynamic> toJson() => {
        "Country": country,
        "UniversityCount": universityCount,
        "CountryId": countryId,
        "CountryImg": countryImg,
      };
}

class DashboardCourseDetail {
  final String? universityImage;
  final String? course;
  final String? university;
  final String? fees;
  final String? courseId;

  DashboardCourseDetail({
    this.universityImage,
    this.course,
    this.university,
    this.fees,
    this.courseId,
  });

  DashboardCourseDetail copyWith({
    String? universityImage,
    String? course,
    String? university,
    String? fees,
    String? courseId,
  }) =>
      DashboardCourseDetail(
        universityImage: universityImage ?? this.universityImage,
        course: course ?? this.course,
        university: university ?? this.university,
        fees: fees ?? this.fees,
        courseId: courseId ?? this.courseId,
      );

  factory DashboardCourseDetail.fromJson(Map<String, dynamic> json) =>
      DashboardCourseDetail(
        universityImage: json["UniversityImage"],
        course: json["Course"],
        university: json["University"],
        fees: json["Fees"],
        courseId: json["CourseId"],
      );

  Map<String, dynamic> toJson() => {
        "UniversityImage": universityImage,
        "Course": course,
        "University": university,
        "Fees": fees,
        "CourseId": courseId,
      };
}

class DashboardUniversityDetail {
  final String? universityImage;
  final String? country;
  final String? university;
  final String? universityId;
  final String? countryId;

  DashboardUniversityDetail({
    this.universityImage,
    this.country,
    this.university,
    this.universityId,
    this.countryId,
  });

  DashboardUniversityDetail copyWith({
    String? universityImage,
    String? country,
    String? university,
    String? universityId,
    String? countryId,
  }) =>
      DashboardUniversityDetail(
        universityImage: universityImage ?? this.universityImage,
        country: country ?? this.country,
        university: university ?? this.university,
        universityId: universityId ?? this.universityId,
        countryId: countryId ?? this.countryId,
      );

  factory DashboardUniversityDetail.fromJson(Map<String, dynamic> json) =>
      DashboardUniversityDetail(
        universityImage: json["UniversityImage"],
        country: json["Country"],
        university: json["University"],
        universityId: json["UniversityId"],
        countryId: json["CountryId"],
      );

  Map<String, dynamic> toJson() => {
        "UniversityImage": universityImage,
        "Country": country,
        "University": university,
        "UniversityId": universityId,
        "CountryId": countryId,
      };
}
