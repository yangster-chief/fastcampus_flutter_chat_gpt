import 'package:hive_flutter/hive_flutter.dart';

///
/// flutter_chat_gpt
/// File Name: message_role_model
/// Created by sujangmac
///
/// Description:
///
part 'message_role_model.g.dart';

@HiveType(typeId: 2)
enum MessageRoleModel {
  @HiveField(0)
  ai,
  @HiveField(1)
  user,
}
