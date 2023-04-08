part of 'message_us_cubit.dart';

@immutable
abstract class MessageUsState extends Equatable {
  const MessageUsState();

  @override
  List<Object> get props => [];
}

class MessageUsInitial extends MessageUsState {}

class MessageUsLoading extends MessageUsState {}

class MessageUsSuccess extends MessageUsState {
  final ResponseModel<MessageUs> messages;

  const MessageUsSuccess({required this.messages});

  @override
  List<Object> get props => [messages];
}

class MessageUsError extends MessageUsState {
  final String message;

  const MessageUsError({required this.message});

  @override
  List<Object> get props => [message];
}
