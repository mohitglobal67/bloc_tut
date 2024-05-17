// To parse this JSON data, do
//
//     final courseDetailsModel = courseDetailsModelFromJson(jsonString);

import 'dart:convert';

List<CourseDetailsModel> courseDetailsModelFromJson(String str) =>
    List<CourseDetailsModel>.from(
        json.decode(str).map((x) => CourseDetailsModel.fromJson(x)));

String courseDetailsModelToJson(List<CourseDetailsModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CourseDetailsModel {
  int? fCourseDetailId;
  dynamic fAccess;
  int? fCountryId;
  String? fCountryName;
  dynamic fUniversityId;
  String? fUniversity;
  String? fProgram;
  dynamic? fDuration;
  String? fDurationName;
  String? fStartYear;
  String? fEndYear;
  String? fIntake;
  String? fProgramLevel;
  String? fStudyArea;
  String? fDisciplineArea;
  dynamic? fApplicationFee;
  dynamic? fTuitionFee;
  String? fApplicationMode;
  String? fApplicationDeadline;
  String? fCourseUrl;
  String? fCampus;
  String? fRemark;
  dynamic? fIelts;
  String? fIsRequirdIelts;
  dynamic? fToeflIbt;
  String? fIsRequirdToeflIbt;
  dynamic? fPte;
  dynamic? fPteLessThan;
  String? fIsRequirdPte;
  dynamic? fSat;
  dynamic? fDat;
  dynamic? fIeltsMore;
  dynamic? fToeflMore;
  String? fIsRequirdSat;
  dynamic? fAct;
  String? fIsRequirdAct;
  String? fWith15YearsOfEducation;
  dynamic? fGre;
  dynamic fIsRequirdGre;
  dynamic? fBacklogs;
  dynamic fIsRequirdBacklogs;
  dynamic? fGmat;
  dynamic fIsRequirdGmat;
  bool? fIsScholarshipAvailable;
  dynamic fScholarshipDetails;
  dynamic fEslElpAvailable;
  dynamic fDisplayOrder;
  bool? fIsStatus;
  bool? fIsApprove;
  bool? fIsDelete;
  bool? fIsReject;
  dynamic? userId;
  dynamic fromDate;
  dynamic toDate;
  dynamic? fUpdatedBy;
  DateTime? fUpdateOnDate;
  dynamic ranking;
  dynamic? count;
  dynamic? fProgramId;
  String? fAddress;
  String? fUniversityLogo;
  String? fGlobalOpsRanking;
  String? fNationalRank;
  String? fUniversityUrl;
  String? fUniversityRemarks;
  String? fRequirements;
  dynamic fIeltsLessThan;
  dynamic fToeflIbtLessThan;
  dynamic fEntryRequirements;
  dynamic fDet;
  dynamic? fStudentId;
  dynamic fFristName;
  bool? fIsPlacement;
  String? fCurrency;
  dynamic? fMoreThanApplicationFee;
  String? fTermTuitionFee;
  String? fApplicationLink;
  String? fIncentive;
  String? fExpenditureFee;
  dynamic lastUpdatedBy;
  dynamic approveBy;
  String? fLocation;
  String? expectableBoard;
  dynamic rejectedComment;
  bool? fConditionalStatus;

  CourseDetailsModel({
    this.fCourseDetailId,
    this.fAccess,
    this.fCountryId,
    this.fCountryName,
    this.fUniversityId,
    this.fUniversity,
    this.fProgram,
    this.fDuration,
    this.fDurationName,
    this.fStartYear,
    this.fEndYear,
    this.fIntake,
    this.fProgramLevel,
    this.fStudyArea,
    this.fDisciplineArea,
    this.fApplicationFee,
    this.fTuitionFee,
    this.fApplicationMode,
    this.fApplicationDeadline,
    this.fCourseUrl,
    this.fCampus,
    this.fRemark,
    this.fIelts,
    this.fIsRequirdIelts,
    this.fToeflIbt,
    this.fIsRequirdToeflIbt,
    this.fPte,
    this.fPteLessThan,
    this.fIsRequirdPte,
    this.fSat,
    this.fDat,
    this.fIeltsMore,
    this.fToeflMore,
    this.fIsRequirdSat,
    this.fAct,
    this.fIsRequirdAct,
    this.fWith15YearsOfEducation,
    this.fGre,
    this.fIsRequirdGre,
    this.fBacklogs,
    this.fIsRequirdBacklogs,
    this.fGmat,
    this.fIsRequirdGmat,
    this.fIsScholarshipAvailable,
    this.fScholarshipDetails,
    this.fEslElpAvailable,
    this.fDisplayOrder,
    this.fIsStatus,
    this.fIsApprove,
    this.fIsDelete,
    this.fIsReject,
    this.userId,
    this.fromDate,
    this.toDate,
    this.fUpdatedBy,
    this.fUpdateOnDate,
    this.ranking,
    this.count,
    this.fProgramId,
    this.fAddress,
    this.fUniversityLogo,
    this.fGlobalOpsRanking,
    this.fNationalRank,
    this.fUniversityUrl,
    this.fUniversityRemarks,
    this.fRequirements,
    this.fIeltsLessThan,
    this.fToeflIbtLessThan,
    this.fEntryRequirements,
    this.fDet,
    this.fStudentId,
    this.fFristName,
    this.fIsPlacement,
    this.fCurrency,
    this.fMoreThanApplicationFee,
    this.fTermTuitionFee,
    this.fApplicationLink,
    this.fIncentive,
    this.fExpenditureFee,
    this.lastUpdatedBy,
    this.approveBy,
    this.fLocation,
    this.expectableBoard,
    this.rejectedComment,
    this.fConditionalStatus,
  });

  CourseDetailsModel copyWith({
    int? fCourseDetailId,
    dynamic fAccess,
    int? fCountryId,
    String? fCountryName,
    int? fUniversityId,
    String? fUniversity,
    String? fProgram,
    int? fDuration,
    String? fDurationName,
    String? fStartYear,
    String? fEndYear,
    String? fIntake,
    String? fProgramLevel,
    String? fStudyArea,
    String? fDisciplineArea,
    int? fApplicationFee,
    int? fTuitionFee,
    String? fApplicationMode,
    String? fApplicationDeadline,
    String? fCourseUrl,
    String? fCampus,
    String? fRemark,
    int? fIelts,
    String? fIsRequirdIelts,
    int? fToeflIbt,
    String? fIsRequirdToeflIbt,
    int? fPte,
    int? fPteLessThan,
    String? fIsRequirdPte,
    int? fSat,
    int? fDat,
    int? fIeltsMore,
    int? fToeflMore,
    String? fIsRequirdSat,
    int? fAct,
    String? fIsRequirdAct,
    String? fWith15YearsOfEducation,
    int? fGre,
    dynamic fIsRequirdGre,
    int? fBacklogs,
    dynamic fIsRequirdBacklogs,
    int? fGmat,
    dynamic fIsRequirdGmat,
    bool? fIsScholarshipAvailable,
    dynamic fScholarshipDetails,
    dynamic fEslElpAvailable,
    dynamic fDisplayOrder,
    bool? fIsStatus,
    bool? fIsApprove,
    bool? fIsDelete,
    bool? fIsReject,
    int? userId,
    dynamic fromDate,
    dynamic toDate,
    int? fUpdatedBy,
    DateTime? fUpdateOnDate,
    dynamic ranking,
    int? count,
    int? fProgramId,
    String? fAddress,
    String? fUniversityLogo,
    String? fGlobalOpsRanking,
    String? fNationalRank,
    String? fUniversityUrl,
    String? fUniversityRemarks,
    String? fRequirements,
    dynamic fIeltsLessThan,
    dynamic fToeflIbtLessThan,
    dynamic fEntryRequirements,
    dynamic fDet,
    int? fStudentId,
    dynamic fFristName,
    bool? fIsPlacement,
    String? fCurrency,
    int? fMoreThanApplicationFee,
    String? fTermTuitionFee,
    String? fApplicationLink,
    String? fIncentive,
    String? fExpenditureFee,
    dynamic lastUpdatedBy,
    dynamic approveBy,
    String? fLocation,
    String? expectableBoard,
    dynamic rejectedComment,
    bool? fConditionalStatus,
  }) =>
      CourseDetailsModel(
        fCourseDetailId: fCourseDetailId ?? this.fCourseDetailId,
        fAccess: fAccess ?? this.fAccess,
        fCountryId: fCountryId ?? this.fCountryId,
        fCountryName: fCountryName ?? this.fCountryName,
        fUniversityId: fUniversityId ?? this.fUniversityId,
        fUniversity: fUniversity ?? this.fUniversity,
        fProgram: fProgram ?? this.fProgram,
        fDuration: fDuration ?? this.fDuration,
        fDurationName: fDurationName ?? this.fDurationName,
        fStartYear: fStartYear ?? this.fStartYear,
        fEndYear: fEndYear ?? this.fEndYear,
        fIntake: fIntake ?? this.fIntake,
        fProgramLevel: fProgramLevel ?? this.fProgramLevel,
        fStudyArea: fStudyArea ?? this.fStudyArea,
        fDisciplineArea: fDisciplineArea ?? this.fDisciplineArea,
        fApplicationFee: fApplicationFee ?? this.fApplicationFee,
        fTuitionFee: fTuitionFee ?? this.fTuitionFee,
        fApplicationMode: fApplicationMode ?? this.fApplicationMode,
        fApplicationDeadline: fApplicationDeadline ?? this.fApplicationDeadline,
        fCourseUrl: fCourseUrl ?? this.fCourseUrl,
        fCampus: fCampus ?? this.fCampus,
        fRemark: fRemark ?? this.fRemark,
        fIelts: fIelts ?? this.fIelts,
        fIsRequirdIelts: fIsRequirdIelts ?? this.fIsRequirdIelts,
        fToeflIbt: fToeflIbt ?? this.fToeflIbt,
        fIsRequirdToeflIbt: fIsRequirdToeflIbt ?? this.fIsRequirdToeflIbt,
        fPte: fPte ?? this.fPte,
        fPteLessThan: fPteLessThan ?? this.fPteLessThan,
        fIsRequirdPte: fIsRequirdPte ?? this.fIsRequirdPte,
        fSat: fSat ?? this.fSat,
        fDat: fDat ?? this.fDat,
        fIeltsMore: fIeltsMore ?? this.fIeltsMore,
        fToeflMore: fToeflMore ?? this.fToeflMore,
        fIsRequirdSat: fIsRequirdSat ?? this.fIsRequirdSat,
        fAct: fAct ?? this.fAct,
        fIsRequirdAct: fIsRequirdAct ?? this.fIsRequirdAct,
        fWith15YearsOfEducation:
            fWith15YearsOfEducation ?? this.fWith15YearsOfEducation,
        fGre: fGre ?? this.fGre,
        fIsRequirdGre: fIsRequirdGre ?? this.fIsRequirdGre,
        fBacklogs: fBacklogs ?? this.fBacklogs,
        fIsRequirdBacklogs: fIsRequirdBacklogs ?? this.fIsRequirdBacklogs,
        fGmat: fGmat ?? this.fGmat,
        fIsRequirdGmat: fIsRequirdGmat ?? this.fIsRequirdGmat,
        fIsScholarshipAvailable:
            fIsScholarshipAvailable ?? this.fIsScholarshipAvailable,
        fScholarshipDetails: fScholarshipDetails ?? this.fScholarshipDetails,
        fEslElpAvailable: fEslElpAvailable ?? this.fEslElpAvailable,
        fDisplayOrder: fDisplayOrder ?? this.fDisplayOrder,
        fIsStatus: fIsStatus ?? this.fIsStatus,
        fIsApprove: fIsApprove ?? this.fIsApprove,
        fIsDelete: fIsDelete ?? this.fIsDelete,
        fIsReject: fIsReject ?? this.fIsReject,
        userId: userId ?? this.userId,
        fromDate: fromDate ?? this.fromDate,
        toDate: toDate ?? this.toDate,
        fUpdatedBy: fUpdatedBy ?? this.fUpdatedBy,
        fUpdateOnDate: fUpdateOnDate ?? this.fUpdateOnDate,
        ranking: ranking ?? this.ranking,
        count: count ?? this.count,
        fProgramId: fProgramId ?? this.fProgramId,
        fAddress: fAddress ?? this.fAddress,
        fUniversityLogo: fUniversityLogo ?? this.fUniversityLogo,
        fGlobalOpsRanking: fGlobalOpsRanking ?? this.fGlobalOpsRanking,
        fNationalRank: fNationalRank ?? this.fNationalRank,
        fUniversityUrl: fUniversityUrl ?? this.fUniversityUrl,
        fUniversityRemarks: fUniversityRemarks ?? this.fUniversityRemarks,
        fRequirements: fRequirements ?? this.fRequirements,
        fIeltsLessThan: fIeltsLessThan ?? this.fIeltsLessThan,
        fToeflIbtLessThan: fToeflIbtLessThan ?? this.fToeflIbtLessThan,
        fEntryRequirements: fEntryRequirements ?? this.fEntryRequirements,
        fDet: fDet ?? this.fDet,
        fStudentId: fStudentId ?? this.fStudentId,
        fFristName: fFristName ?? this.fFristName,
        fIsPlacement: fIsPlacement ?? this.fIsPlacement,
        fCurrency: fCurrency ?? this.fCurrency,
        fMoreThanApplicationFee:
            fMoreThanApplicationFee ?? this.fMoreThanApplicationFee,
        fTermTuitionFee: fTermTuitionFee ?? this.fTermTuitionFee,
        fApplicationLink: fApplicationLink ?? this.fApplicationLink,
        fIncentive: fIncentive ?? this.fIncentive,
        fExpenditureFee: fExpenditureFee ?? this.fExpenditureFee,
        lastUpdatedBy: lastUpdatedBy ?? this.lastUpdatedBy,
        approveBy: approveBy ?? this.approveBy,
        fLocation: fLocation ?? this.fLocation,
        expectableBoard: expectableBoard ?? this.expectableBoard,
        rejectedComment: rejectedComment ?? this.rejectedComment,
        fConditionalStatus: fConditionalStatus ?? this.fConditionalStatus,
      );

  factory CourseDetailsModel.fromJson(Map<String, dynamic> json) =>
      CourseDetailsModel(
        fCourseDetailId: json["f_Course_Detail_Id"],
        fAccess: json["f_access"],
        fCountryId: json["f_CountryId"],
        fCountryName: json["f_Country_Name"],
        fUniversityId: json["f_UniversityId"],
        fUniversity: json["f_University"],
        fProgram: json["f_Program"],
        fDuration: json["f_Duration"],
        fDurationName: json["f_Duration_Name"],
        fStartYear: json["f_Start_Year"],
        fEndYear: json["f_End_Year"],
        fIntake: json["f_Intake"],
        fProgramLevel: json["f_Program_Level"],
        fStudyArea: json["f_Study_Area"],
        fDisciplineArea: json["f_Discipline_Area"],
        fApplicationFee: json["f_Application_Fee"],
        fTuitionFee: json["f_Tuition_Fee"],
        fApplicationMode: json["f_Application_Mode"],
        fApplicationDeadline: json["f_Application_Deadline"],
        fCourseUrl: json["f_Course_URL"],
        fCampus: json["f_Campus"],
        fRemark: json["f_Remark"],
        fIelts: json["f_IELTS"],
        fIsRequirdIelts: json["f_Is_Requird_IELTS"],
        fToeflIbt: json["f_TOEFL_IBT"],
        fIsRequirdToeflIbt: json["f_Is_Requird_TOEFL_IBT"],
        fPte: json["f_PTE"],
        fPteLessThan: json["f_PTE_Less_Than"],
        fIsRequirdPte: json["f_Is_Requird_PTE"],
        fSat: json["f_SAT"],
        fDat: json["f_Dat"],
        fIeltsMore: json["f_IELTS_More"],
        fToeflMore: json["f_TOEFL_More"],
        fIsRequirdSat: json["f_Is_Requird_SAT"],
        fAct: json["f_ACT"],
        fIsRequirdAct: json["f_Is_Requird_ACT"],
        fWith15YearsOfEducation: json["f_With_15_Years_of_Education"],
        fGre: json["f_GRE"],
        fIsRequirdGre: json["f_Is_Requird_GRE"],
        fBacklogs: json["f_BACKLOGS"],
        fIsRequirdBacklogs: json["f_Is_Requird_BACKLOGS"],
        fGmat: json["f_GMAT"],
        fIsRequirdGmat: json["f_Is_Requird_GMAT"],
        fIsScholarshipAvailable: json["f_Is_Scholarship_Available"],
        fScholarshipDetails: json["f_Scholarship_Details"],
        fEslElpAvailable: json["f_ESL_ELP_Available"],
        fDisplayOrder: json["f_Display_Order"],
        fIsStatus: json["f_Is_Status"],
        fIsApprove: json["f_Is_Approve"],
        fIsDelete: json["f_Is_Delete"],
        fIsReject: json["f_Is_Reject"],
        userId: json["user_id"],
        fromDate: json["FromDate"],
        toDate: json["ToDate"],
        fUpdatedBy: json["f_Updated_By"],
        fUpdateOnDate: json["f_Update_On_Date"] == null
            ? null
            : DateTime.parse(json["f_Update_On_Date"]),
        ranking: json["Ranking"],
        count: json["Count"],
        fProgramId: json["f_Program_Id"],
        fAddress: json["f_address"],
        fUniversityLogo: json["f_university_Logo"],
        fGlobalOpsRanking: json["f_Global_OPS_Ranking"],
        fNationalRank: json["f_National_Rank"],
        fUniversityUrl: json["f_University_URL"],
        fUniversityRemarks: json["f_University_Remarks"],
        fRequirements: json["f_Requirements"],
        fIeltsLessThan: json["f_IELTS_Less_Than"],
        fToeflIbtLessThan: json["f_TOEFL_IBT_Less_Than"],
        fEntryRequirements: json["f_Entry_Requirements"],
        fDet: json["f_DET"],
        fStudentId: json["f_Student_Id"],
        fFristName: json["f_FristName"],
        fIsPlacement: json["f_Is_Placement"],
        fCurrency: json["f_Currency"],
        fMoreThanApplicationFee: json["f_More_Than_Application_Fee"],
        fTermTuitionFee: json["f_Term_Tuition_Fee"],
        fApplicationLink: json["f_Application_Link"],
        fIncentive: json["f_Incentive"],
        fExpenditureFee: json["f_Expenditure_fee"],
        lastUpdatedBy: json["LastUpdated_By"],
        approveBy: json["ApproveBy"],
        fLocation: json["f_Location"],
        expectableBoard: json["ExpectableBoard"],
        rejectedComment: json["RejectedComment"],
        fConditionalStatus: json["f_ConditionalStatus"],
      );

  Map<String, dynamic> toJson() => {
        "f_Course_Detail_Id": fCourseDetailId,
        "f_access": fAccess,
        "f_CountryId": fCountryId,
        "f_Country_Name": fCountryName,
        "f_UniversityId": fUniversityId,
        "f_University": fUniversity,
        "f_Program": fProgram,
        "f_Duration": fDuration,
        "f_Duration_Name": fDurationName,
        "f_Start_Year": fStartYear,
        "f_End_Year": fEndYear,
        "f_Intake": fIntake,
        "f_Program_Level": fProgramLevel,
        "f_Study_Area": fStudyArea,
        "f_Discipline_Area": fDisciplineArea,
        "f_Application_Fee": fApplicationFee,
        "f_Tuition_Fee": fTuitionFee,
        "f_Application_Mode": fApplicationMode,
        "f_Application_Deadline": fApplicationDeadline,
        "f_Course_URL": fCourseUrl,
        "f_Campus": fCampus,
        "f_Remark": fRemark,
        "f_IELTS": fIelts,
        "f_Is_Requird_IELTS": fIsRequirdIelts,
        "f_TOEFL_IBT": fToeflIbt,
        "f_Is_Requird_TOEFL_IBT": fIsRequirdToeflIbt,
        "f_PTE": fPte,
        "f_PTE_Less_Than": fPteLessThan,
        "f_Is_Requird_PTE": fIsRequirdPte,
        "f_SAT": fSat,
        "f_Dat": fDat,
        "f_IELTS_More": fIeltsMore,
        "f_TOEFL_More": fToeflMore,
        "f_Is_Requird_SAT": fIsRequirdSat,
        "f_ACT": fAct,
        "f_Is_Requird_ACT": fIsRequirdAct,
        "f_With_15_Years_of_Education": fWith15YearsOfEducation,
        "f_GRE": fGre,
        "f_Is_Requird_GRE": fIsRequirdGre,
        "f_BACKLOGS": fBacklogs,
        "f_Is_Requird_BACKLOGS": fIsRequirdBacklogs,
        "f_GMAT": fGmat,
        "f_Is_Requird_GMAT": fIsRequirdGmat,
        "f_Is_Scholarship_Available": fIsScholarshipAvailable,
        "f_Scholarship_Details": fScholarshipDetails,
        "f_ESL_ELP_Available": fEslElpAvailable,
        "f_Display_Order": fDisplayOrder,
        "f_Is_Status": fIsStatus,
        "f_Is_Approve": fIsApprove,
        "f_Is_Delete": fIsDelete,
        "f_Is_Reject": fIsReject,
        "user_id": userId,
        "FromDate": fromDate,
        "ToDate": toDate,
        "f_Updated_By": fUpdatedBy,
        "f_Update_On_Date": fUpdateOnDate?.toIso8601String(),
        "Ranking": ranking,
        "Count": count,
        "f_Program_Id": fProgramId,
        "f_address": fAddress,
        "f_university_Logo": fUniversityLogo,
        "f_Global_OPS_Ranking": fGlobalOpsRanking,
        "f_National_Rank": fNationalRank,
        "f_University_URL": fUniversityUrl,
        "f_University_Remarks": fUniversityRemarks,
        "f_Requirements": fRequirements,
        "f_IELTS_Less_Than": fIeltsLessThan,
        "f_TOEFL_IBT_Less_Than": fToeflIbtLessThan,
        "f_Entry_Requirements": fEntryRequirements,
        "f_DET": fDet,
        "f_Student_Id": fStudentId,
        "f_FristName": fFristName,
        "f_Is_Placement": fIsPlacement,
        "f_Currency": fCurrency,
        "f_More_Than_Application_Fee": fMoreThanApplicationFee,
        "f_Term_Tuition_Fee": fTermTuitionFee,
        "f_Application_Link": fApplicationLink,
        "f_Incentive": fIncentive,
        "f_Expenditure_fee": fExpenditureFee,
        "LastUpdated_By": lastUpdatedBy,
        "ApproveBy": approveBy,
        "f_Location": fLocation,
        "ExpectableBoard": expectableBoard,
        "RejectedComment": rejectedComment,
        "f_ConditionalStatus": fConditionalStatus,
      };
}
