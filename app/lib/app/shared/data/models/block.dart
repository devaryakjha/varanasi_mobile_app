import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:varanasi/app/shared/data/models/media.dart';
import 'package:varanasi/app/shared/domain/entities/block.dart';

part 'block.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class BlockModel extends Equatable {
  const BlockModel({
    required this.title,
    required this.children,
  });

  factory BlockModel.fromJson(Map<String, dynamic> json) {
    return _$BlockModelFromJson(json);
  }

  final String title;
  final List<MediaModel> children;

  Block toEntity() {
    return Block(
      title: title,
      children: children.map((e) => e.toEntity()).toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return _$BlockModelToJson(this);
  }

  @override
  List<Object?> get props => [title, children];
}