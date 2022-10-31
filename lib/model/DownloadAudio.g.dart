// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DownloadAudio.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DownloadAudioAdapter extends TypeAdapter<DownloadAudio> {
  @override
  final int typeId = 1;

  @override
  DownloadAudio read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DownloadAudio(
      fileName: fields[0] as String?,
      recordTime: fields[1] as String?,
      downloadTime: fields[2] as String?,
      phone: fields[3] as String?,
      detectionName: fields[4] as String?,
      detectionCode: fields[5] as String?,
      audioFileState: fields[6] as String?,
      audioDetailFileState: fields[7] as String?,
      downloadUrl: fields[8] as String?,
      timeDoMineImageUrl: fields[9] as String?,
      frequencyAnalysisImage: fields[10] as String?,
      spectrumImage: fields[11] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, DownloadAudio obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.fileName)
      ..writeByte(1)
      ..write(obj.recordTime)
      ..writeByte(2)
      ..write(obj.downloadTime)
      ..writeByte(3)
      ..write(obj.phone)
      ..writeByte(4)
      ..write(obj.detectionName)
      ..writeByte(5)
      ..write(obj.detectionCode)
      ..writeByte(6)
      ..write(obj.audioFileState)
      ..writeByte(7)
      ..write(obj.audioDetailFileState)
      ..writeByte(8)
      ..write(obj.downloadUrl)
      ..writeByte(9)
      ..write(obj.timeDoMineImageUrl)
      ..writeByte(10)
      ..write(obj.frequencyAnalysisImage)
      ..writeByte(11)
      ..write(obj.spectrumImage);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DownloadAudioAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
