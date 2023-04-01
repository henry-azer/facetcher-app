import 'dart:async';

import 'package:facetcher/core/api/end_points.dart';
import 'package:facetcher/data/models/user-submission/user_submission.dart';

import '../../../core/api/api_consumer.dart';
import '../../../core/error/exceptions.dart';
import '../../../core/models/response_model.dart';
import '../../../core/utils/app_strings.dart';
import '../../entities/user-submission/user_submission_request.dart';

abstract class UserSubmissionRemoteDataSource {
  Future<ResponseModel<UserSubmission>> createUserSubmission(UserSubmissionRequest userSubmissionRequest);
}

class UserSubmissionRemoteDataSourceImpl implements UserSubmissionRemoteDataSource {
  final ApiConsumer apiConsumer;

  UserSubmissionRemoteDataSourceImpl({required this.apiConsumer});

  @override
  Future<ResponseModel<UserSubmission>> createUserSubmission(UserSubmissionRequest userSubmissionRequest) async {
    final response = await apiConsumer.post(EndPoints.createUserSubmission, body: userSubmissionRequest.toJson());
    if (response[AppStrings.success].toString() == AppStrings.boolFalse) {
      throw GenericException(message: response[AppStrings.message]);
    } else {
      return ResponseModel(
          success: response[AppStrings.success], message: response[AppStrings.message],
          body: UserSubmission.fromJson(response[AppStrings.body]));
    }
  }
}
