import 'package:json_annotation/json_annotation.dart';

import 'user.dart';

part 'chat.g.dart';

@JsonSerializable()
class Chat {
  Chat({
    required this.id,
    this.text,
    this.user,
    this.replyCount,
    this.unreadCount,
    this.createdAt,
  });

  final String id;
  final String? text;
  final User? user;
  final int? replyCount;
  final int? unreadCount;
  final DateTime? createdAt;

  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);

  Map<String, dynamic> toJson() => _$ChatToJson(this);
}
