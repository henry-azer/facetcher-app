import 'package:dartz/dartz.dart';
import 'package:facetcher/core/models/response_model.dart';
import 'package:facetcher/data/datasources/message-us/message_us_remote_datasource.dart';
import 'package:facetcher/data/entities/message-us/user-message-us-request.dart';

import 'package:facetcher/core/error/exceptions.dart';
import 'package:facetcher/data/models/message-us/message_us.dart';
import '../../../core/network/network_info.dart';
import '../../datasources/message-us/message_us_local_datasource.dart';
import 'message_us_repository.dart';

class MessageUsRepositoryImpl implements MessageUsRepository {
  final NetworkInfo networkInfo;
  final MessageUsLocalDataSourceImpl messageUsLocalDataSourceImpl;
  final MessageUsRemoteDataSourceImpl messageUsRemoteDataSourceImpl;

  MessageUsRepositoryImpl({
    required this.networkInfo,
    required this.messageUsLocalDataSourceImpl,
    required this.messageUsRemoteDataSourceImpl,
  });

  @override
  Future<Either<GenericException, ResponseModel<MessageUs>>>
      createUserMessage(MessageUsRequest messageUsRequest) async {
    if (await networkInfo.isConnected) {
      try {
        final messageUs = await messageUsRemoteDataSourceImpl
            .createUserMessage(messageUsRequest);
        return Right(messageUs);
      } on GenericException catch (exception) {
        return Left(exception);
      }
    } else {
      return const Left(CacheException());
    }
  }
}
