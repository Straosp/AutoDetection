
import 'package:hive/hive.dart';
part 'DownloadAudio.g.dart';

@HiveType(typeId: 1)
class DownloadAudio {

  @HiveField(0)
  String? fileName; // 文件名称
  @HiveField(1)
  String? recordTime;
  @HiveField(2)
  String? downloadTime;
  @HiveField(3)
  String? phone;
  @HiveField(4)
  String? detectionName;
  @HiveField(5)
  String? detectionCode;
  @HiveField(6)
  String? audioFileState;
  @HiveField(7)
  String? audioDetailFileState;
  @HiveField(8)
  String? downloadUrl;
  @HiveField(9)
  String? timeDoMineImageUrl;
  @HiveField(10)
  String? frequencyAnalysisImage;
  @HiveField(11)
  String? spectrumImage;

  DownloadAudio({
    required this.fileName,
    required this.recordTime,
    required this.downloadTime,
    required this.phone,
    required this.detectionName,
    required this.detectionCode,
    required this.audioFileState,
    required this.audioDetailFileState,
    required this.downloadUrl,
    required this.timeDoMineImageUrl,
    required this.frequencyAnalysisImage,
    required this.spectrumImage});



}