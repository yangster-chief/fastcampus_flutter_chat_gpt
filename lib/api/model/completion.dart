import 'package:json_annotation/json_annotation.dart';

///
/// flutter_chat_gpt
/// File Name: completion
/// Created by sujangmac
///
/// Description:
///

part 'completion.g.dart';

@JsonSerializable()
class CompletionRequest {
  @JsonKey(name: 'model')
  final String model;
  @JsonKey(name: 'messages')
  final List<Map<String, dynamic>> messages;

  const CompletionRequest(this.model, this.messages);

  factory CompletionRequest.fromJson(Map<String, dynamic> json) =>
      _$CompletionRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CompletionRequestToJson(this);
}

@JsonSerializable()
class CompletionResponse {
  final String id;
  final int created;
  final String model;
  final List<ChoiceModel> choices;

  const CompletionResponse(this.id, this.created, this.model, this.choices);

  factory CompletionResponse.fromJson(Map<String, dynamic> json) =>
      _$CompletionResponseFromJson(json);
}

@JsonSerializable()
class ChoiceModel {
  @JsonKey(name: 'index')
  final int index;
  @JsonKey(name: 'message')
  final MessageModel message;

  const ChoiceModel(this.index, this.message);

  factory ChoiceModel.fromJson(Map<String, dynamic> json) =>
      _$ChoiceModelFromJson(json);
}

@JsonSerializable()
class MessageModel {
  @JsonKey(name: 'role')
  final String role;
  @JsonKey(name: 'content')
  final String content;

  const MessageModel(this.role, this.content);

  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);

  Map<String, dynamic> toJson() => _$MessageModelToJson(this);
}
