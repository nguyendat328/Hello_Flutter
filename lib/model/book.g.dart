// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BookChapterAdapter extends TypeAdapter<BookChapter> {
  @override
  final int typeId = 1;

  @override
  BookChapter read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BookChapter(
      fields[0] as int?,
      fields[1] as String?,
      fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, BookChapter obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.chapter)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.url);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookChapterAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class bookhiveAdapter extends TypeAdapter<book_hive> {
  @override
  final int typeId = 0;

  @override
  book_hive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return book_hive(
      fields[0] as int?,
      fields[1] as String?,
      fields[2] as String?,
      fields[3] as int?,
      fields[4] as int?,
      fields[5] as int?,
      fields[6] as String?,
      fields[7] as double?,
      fields[8] as String?,
      fields[9] as String?,
      (fields[10] as List?)?.cast<BookChapter>(),
    );
  }

  @override
  void write(BinaryWriter writer, book_hive obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.author)
      ..writeByte(3)
      ..write(obj.isSaved)
      ..writeByte(4)
      ..write(obj.isRead)
      ..writeByte(5)
      ..write(obj.onReadChap)
      ..writeByte(6)
      ..write(obj.datePublished)
      ..writeByte(7)
      ..write(obj.aggregateRating)
      ..writeByte(8)
      ..write(obj.imageUrl)
      ..writeByte(9)
      ..write(obj.intro)
      ..writeByte(10)
      ..write(obj.listChap);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is bookhiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
