import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:varanasi/app/shared/data/models/block.dart';
import 'package:varanasi/app/shared/data/models/media.dart';
import 'package:varanasi/app/shared/domain/entities/page.dart';

part 'page.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PageModel extends Equatable {
  const PageModel({
    required this.title,
    required this.blocks,
    required this.paginated,
    required this.children,
    required this.sequence,
  });

  factory PageModel.fromJson(Map<String, dynamic> json) {
    return _$PageModelFromJson(json);
  }

  final String title;
  final List<BlockModel> blocks;
  final bool paginated;
  final List<MediaModel> children;
  final int sequence;

  Page toEntity() {
    return Page(
      title: title,
      blocks: blocks.map((e) => e.toEntity()).toList(),
      paginated: paginated,
      children: children.map((e) => e.toEntity()).toList(),
      sequence: sequence,
    );
  }

  Map<String, dynamic> toJson() {
    return _$PageModelToJson(this);
  }

  @override
  List<Object?> get props => [
        title,
        blocks,
        paginated,
        children,
        sequence,
      ];
}