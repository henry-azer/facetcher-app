part of 'message_us_cubit.dart';

@immutable
abstract class MessageUsState extends Equatable {
  const MessageUsState();

  @override
  List<Object> get props => [];
}

class MessageUsInitial extends MessageUsState {}

class MessageUsLoading extends MessageUsState {}

class MessageUsSuccess extends MessageUsState {}

class MessageUsError extends MessageUsState {}
