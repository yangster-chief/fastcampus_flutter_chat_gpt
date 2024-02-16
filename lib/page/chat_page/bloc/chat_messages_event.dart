///
/// flutter_chat_gpt
/// File Name: chat_messages_event
/// Created by sujangmac
///
/// Description:
///

part of 'chat_messages_bloc.dart';

sealed class ChatMessagesEvent {
  const ChatMessagesEvent();
}

final class ChatMessagesInitialEvent extends ChatMessagesEvent {
  final ChatItemModel chatItem;
  const ChatMessagesInitialEvent(this.chatItem);
}

final class ChatMessagesAddEvent extends ChatMessagesEvent {
  final String message;
  const ChatMessagesAddEvent(this.message);
}
