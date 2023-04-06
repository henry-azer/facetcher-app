import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'message_us_state.dart';

class MessageUsCubit extends Cubit<MessageUsState> {
  MessageUsCubit() : super(MessageUsInitial());
}
