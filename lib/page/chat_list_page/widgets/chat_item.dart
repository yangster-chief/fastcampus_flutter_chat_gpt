import 'package:flutter/material.dart';
import 'package:flutter_chat_gpt/hive_model/chat_item_model.dart';

///
/// flutter_chat_gpt
/// File Name: chat_item
/// Created by sujangmac
///
/// Description:
///
class ChatItem extends StatelessWidget {
  final ChatItemModel item;
  final VoidCallback onTapped;
  final VoidCallback onDelete;

  const ChatItem({
    super.key,
    required this.item,
    required this.onTapped,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) => ListTile(
        title: Text(item.title),
        onTap: onTapped,
        trailing:
            IconButton(icon: const Icon(Icons.delete), onPressed: onDelete),
      );
}
