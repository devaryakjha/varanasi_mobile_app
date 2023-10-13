// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download_url.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DownloadUrlAdapter extends TypeAdapter<DownloadUrl> {
  @override
  final int typeId = 10;

  @override
  DownloadUrl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DownloadUrl(
      quality: fields[2] as String?,
      link: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, DownloadUrl obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj._quality)
      ..writeByte(1)
      ..write(obj.link)
      ..writeByte(2)
      ..write(obj.quality);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DownloadUrlAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DownloadUrl _$DownloadUrlFromJson(Map<String, dynamic> json) => DownloadUrl(
      quality: json['quality'] as String?,
      link: json['link'] as String?,
    );

Map<String, dynamic> _$DownloadUrlToJson(DownloadUrl instance) =>
    <String, dynamic>{
      'link': instance.link,
      'quality': _$DownloadQualityEnumMap[instance.quality]!,
    };

const _$DownloadQualityEnumMap = {
  DownloadQuality.low: 'low',
  DownloadQuality.medium: 'medium',
  DownloadQuality.high: 'high',
  DownloadQuality.veryHigh: 'veryHigh',
  DownloadQuality.extreme: 'extreme',
};
