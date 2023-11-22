// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_token.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AccessTokenAdapter extends TypeAdapter<AccessToken> {
  @override
  final int typeId = 1;

  @override
  AccessToken read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AccessToken(
      token: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, AccessToken obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.token);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AccessTokenAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
