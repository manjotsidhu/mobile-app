// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ib_page_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class IbPageDataAdapter extends TypeAdapter<IbPageData> {
  @override
  final int typeId = 1;

  @override
  IbPageData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return IbPageData(
      id: fields[0] as String,
      pageUrl: fields[1] as String,
      title: fields[2] as String,
      content: (fields[3] as List)?.cast<IbContent>(),
      tableOfContents: (fields[4] as List)?.cast<IbTocItem>(),
      chapterOfContents: (fields[5] as List)?.cast<IbTocItem>(),
    );
  }

  @override
  void write(BinaryWriter writer, IbPageData obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.pageUrl)
      ..writeByte(2)
      ..write(obj.title)
      ..writeByte(3)
      ..write(obj.content)
      ..writeByte(4)
      ..write(obj.tableOfContents)
      ..writeByte(5)
      ..write(obj.chapterOfContents);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IbPageDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
