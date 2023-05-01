import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/models/response_model.dart';
import '../../../../data/entities/message-us/user-message-us-request.dart';
import '../../../../data/models/message-us/message_us.dart';
import '../../domain/usecases/create_message_us_usecase.dart';

part 'message_us_state.dart';

class MessageUsCubit extends Cubit<MessageUsState> {
  final CreateMessageUsUseCase createMessageUsUseCase;

  MessageUsCubit({required this.createMessageUsUseCase})
      : super((MessageUsInitial()));

  Future<void> createUserMessageUs(MessageUsRequest messageUsRequest) async {
    emit(MessageUsInitial());
    emit(MessageUsLoading());
    Either<GenericException, ResponseModel<MessageUs>> response =
        await createMessageUsUseCase(MessageUsRequest(
            title: messageUsRequest.title, message: messageUsRequest.message));
    emit(response.fold(
        (exception) => MessageUsError(message: exception.message),
        (userTrial) => MessageUsSuccess(messages: userTrial)));
  }
}
