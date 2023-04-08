import 'package:dartz/dartz.dart';

import '../../../core/error/exceptions.dart';
import '../../../core/models/response_model.dart';
import '../../entities/message-us/user-message-us-request.dart';
import '../../models/message-us/message_us.dart';

abstract class MessageUsRepository{
  Future<Either<GenericException, ResponseModel<MessageUs>>>createOrUpdateMessageSubmission(MessageUsRequest messageUsRequest);
}