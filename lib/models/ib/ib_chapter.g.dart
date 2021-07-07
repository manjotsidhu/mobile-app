// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ib_chapter.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class IbChapterAdapter extends TypeAdapter<IbChapter> {
  @override
  final int typeId = 0;

  @override
  IbChapter read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return IbChapter(
      id: fields[0] as String,
      value: fields[1] as String,
      navOrder: fields[2] as String,
      prev: fields[3] as IbChapter,
      next: fields[4] as IbChapter,
      items: (fields[5] as HiveList)?.castHiveList(),
    );
  }

  @override
  void write(BinaryWriter writer, IbChapter obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.value)
      ..writeByte(2)
      ..write(obj.navOrder)
      ..writeByte(3)
      ..write(obj.prev)
      ..writeByte(4)
      ..write(obj.next)
      ..writeByte(5)
      ..write(obj.items);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IbChapterAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
