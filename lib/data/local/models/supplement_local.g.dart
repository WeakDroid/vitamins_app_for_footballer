// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supplement_local.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SupplementLocalAdapter extends TypeAdapter<SupplementLocal> {
  @override
  final int typeId = 0;

  @override
  SupplementLocal read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SupplementLocal(
      fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, SupplementLocal obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SupplementLocalAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
