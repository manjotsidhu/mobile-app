// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ib_content.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class IbTocItemAdapter extends TypeAdapter<IbTocItem> {
  @override
  final int typeId = 2;

  @override
  IbTocItem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return IbTocItem(
      content: fields[0] as String,
      items: (fields[1] as HiveList)?.castHiveList(),
    );
  }

  @override
  void write(BinaryWriter writer, IbTocItem obj) {
    writer
      ..writeByte(2)
      ..writeByte(1)
      ..write(obj.items)
      ..writeByte(0)
      ..write(obj.content);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IbTocItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class IbMdAdapter extends TypeAdapter<IbMd> {
  @override
  final int typeId = 3;

  @override
  IbMd read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return IbMd(
      content: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, IbMd obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.content);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IbMdAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
