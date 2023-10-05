// lib/models/post_data.dart
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_data.freezed.dart';

@JsonSerializable()
@freezed
class PostData with _$PostData {
  factory PostData({
    required String title,
    required String content,
    required String author,
    String? postId,
  }) = _PostData;

  factory PostData.fromJson(Map<String, dynamic> json) =>
      _$PostDataFromJson(json);
}

