/// SoundFileID : "eba26bc2-024a-4faf-b287-30770e670478"
/// SoundDevID : null
/// SoundPointID : "1907c6f8-413f-4bce-97b1-44a293ba35e5"
/// SoundPointCode : "20A0AB90301"
/// ModelNo : 0
/// GatheringModuleCode : "20A0AB903"
/// SoundFileName : "20210415032327-01-001.wav"
/// SoundFileSrc : "\\\\301c248240-plx11.cn-shanghai.nas.aliyuncs.com\\myshare\\KingtechsFile\\SoundFiles\\20A0AB903\\1\\20210415\\20210415032327-01-001.wav"
/// TempMax : 9.5
/// TempAvg : 9.5
/// RecordTime : "2021-04-15 03:26:00"
/// TotalSecond : 0.0
/// SoundFileState : "0"
/// LowState : "0"
/// MiddleState : "0"
/// HighState : "0"
/// ModResultState : "2"
/// ManualWarnFlag : "0"
/// UpLoadFlag : null
/// SampleFlag : null
/// FllowFlag : "1"
/// DeNoiseFlag : "1"
/// IsEnable : "1"
/// ReMark : "华东交大就睡觉"
/// FileDesc : null
/// Creator : "admin"
/// CreateDate : "2021-04-15 03:26:00"
/// Modifier : "18062506940"
/// ModifyDate : "2022-07-11 17:22:16"

class AudioHistoryRecord {
  AudioHistoryRecord({
      String? soundFileID, 
      dynamic soundDevID, 
      String? soundPointID, 
      String? soundPointCode, 
      num? modelNo, 
      String? gatheringModuleCode, 
      String? soundFileName, 
      String? soundFileSrc, 
      num? tempMax, 
      num? tempAvg, 
      String? recordTime, 
      num? totalSecond, 
      String? soundFileState, 
      String? lowState, 
      String? middleState, 
      String? highState, 
      String? modResultState, 
      String? manualWarnFlag, 
      dynamic upLoadFlag, 
      dynamic sampleFlag, 
      String? fllowFlag, 
      String? deNoiseFlag, 
      String? isEnable, 
      String? reMark, 
      dynamic fileDesc, 
      String? creator, 
      String? createDate, 
      String? modifier, 
      String? modifyDate,}){
    _soundFileID = soundFileID;
    _soundDevID = soundDevID;
    _soundPointID = soundPointID;
    _soundPointCode = soundPointCode;
    _modelNo = modelNo;
    _gatheringModuleCode = gatheringModuleCode;
    _soundFileName = soundFileName;
    _soundFileSrc = soundFileSrc;
    _tempMax = tempMax;
    _tempAvg = tempAvg;
    _recordTime = recordTime;
    _totalSecond = totalSecond;
    _soundFileState = soundFileState;
    _lowState = lowState;
    _middleState = middleState;
    _highState = highState;
    _modResultState = modResultState;
    _manualWarnFlag = manualWarnFlag;
    _upLoadFlag = upLoadFlag;
    _sampleFlag = sampleFlag;
    _fllowFlag = fllowFlag;
    _deNoiseFlag = deNoiseFlag;
    _isEnable = isEnable;
    _reMark = reMark;
    _fileDesc = fileDesc;
    _creator = creator;
    _createDate = createDate;
    _modifier = modifier;
    _modifyDate = modifyDate;
}

  AudioHistoryRecord.fromJson(dynamic json) {
    _soundFileID = json['SoundFileID'];
    _soundDevID = json['SoundDevID'];
    _soundPointID = json['SoundPointID'];
    _soundPointCode = json['SoundPointCode'];
    _modelNo = json['ModelNo'];
    _gatheringModuleCode = json['GatheringModuleCode'];
    _soundFileName = json['SoundFileName'];
    _soundFileSrc = json['SoundFileSrc'];
    _tempMax = json['TempMax'];
    _tempAvg = json['TempAvg'];
    _recordTime = json['RecordTime'];
    _totalSecond = json['TotalSecond'];
    _soundFileState = json['SoundFileState'];
    _lowState = json['LowState'];
    _middleState = json['MiddleState'];
    _highState = json['HighState'];
    _modResultState = json['ModResultState'];
    _manualWarnFlag = json['ManualWarnFlag'];
    _upLoadFlag = json['UpLoadFlag'];
    _sampleFlag = json['SampleFlag'];
    _fllowFlag = json['FllowFlag'];
    _deNoiseFlag = json['DeNoiseFlag'];
    _isEnable = json['IsEnable'];
    _reMark = json['ReMark'];
    _fileDesc = json['FileDesc'];
    _creator = json['Creator'];
    _createDate = json['CreateDate'];
    _modifier = json['Modifier'];
    _modifyDate = json['ModifyDate'];
  }
  String? _soundFileID;
  dynamic _soundDevID;
  String? _soundPointID;
  String? _soundPointCode;
  num? _modelNo;
  String? _gatheringModuleCode;
  String? _soundFileName;
  String? _soundFileSrc;
  num? _tempMax;
  num? _tempAvg;
  String? _recordTime;
  num? _totalSecond;
  String? _soundFileState;
  String? _lowState;
  String? _middleState;
  String? _highState;
  String? _modResultState;
  String? _manualWarnFlag;
  dynamic _upLoadFlag;
  dynamic _sampleFlag;
  String? _fllowFlag;
  String? _deNoiseFlag;
  String? _isEnable;
  String? _reMark;
  dynamic _fileDesc;
  String? _creator;
  String? _createDate;
  String? _modifier;
  String? _modifyDate;
AudioHistoryRecord copyWith({  String? soundFileID,
  dynamic soundDevID,
  String? soundPointID,
  String? soundPointCode,
  num? modelNo,
  String? gatheringModuleCode,
  String? soundFileName,
  String? soundFileSrc,
  num? tempMax,
  num? tempAvg,
  String? recordTime,
  num? totalSecond,
  String? soundFileState,
  String? lowState,
  String? middleState,
  String? highState,
  String? modResultState,
  String? manualWarnFlag,
  dynamic upLoadFlag,
  dynamic sampleFlag,
  String? fllowFlag,
  String? deNoiseFlag,
  String? isEnable,
  String? reMark,
  dynamic fileDesc,
  String? creator,
  String? createDate,
  String? modifier,
  String? modifyDate,
}) => AudioHistoryRecord(  soundFileID: soundFileID ?? _soundFileID,
  soundDevID: soundDevID ?? _soundDevID,
  soundPointID: soundPointID ?? _soundPointID,
  soundPointCode: soundPointCode ?? _soundPointCode,
  modelNo: modelNo ?? _modelNo,
  gatheringModuleCode: gatheringModuleCode ?? _gatheringModuleCode,
  soundFileName: soundFileName ?? _soundFileName,
  soundFileSrc: soundFileSrc ?? _soundFileSrc,
  tempMax: tempMax ?? _tempMax,
  tempAvg: tempAvg ?? _tempAvg,
  recordTime: recordTime ?? _recordTime,
  totalSecond: totalSecond ?? _totalSecond,
  soundFileState: soundFileState ?? _soundFileState,
  lowState: lowState ?? _lowState,
  middleState: middleState ?? _middleState,
  highState: highState ?? _highState,
  modResultState: modResultState ?? _modResultState,
  manualWarnFlag: manualWarnFlag ?? _manualWarnFlag,
  upLoadFlag: upLoadFlag ?? _upLoadFlag,
  sampleFlag: sampleFlag ?? _sampleFlag,
  fllowFlag: fllowFlag ?? _fllowFlag,
  deNoiseFlag: deNoiseFlag ?? _deNoiseFlag,
  isEnable: isEnable ?? _isEnable,
  reMark: reMark ?? _reMark,
  fileDesc: fileDesc ?? _fileDesc,
  creator: creator ?? _creator,
  createDate: createDate ?? _createDate,
  modifier: modifier ?? _modifier,
  modifyDate: modifyDate ?? _modifyDate,
);
  String? get soundFileID => _soundFileID;
  dynamic get soundDevID => _soundDevID;
  String? get soundPointID => _soundPointID;
  String? get soundPointCode => _soundPointCode;
  num? get modelNo => _modelNo;
  String? get gatheringModuleCode => _gatheringModuleCode;
  String? get soundFileName => _soundFileName;
  String? get soundFileSrc => _soundFileSrc;
  num? get tempMax => _tempMax;
  num? get tempAvg => _tempAvg;
  String? get recordTime => _recordTime;
  num? get totalSecond => _totalSecond;
  String? get soundFileState => _soundFileState;
  String? get lowState => _lowState;
  String? get middleState => _middleState;
  String? get highState => _highState;
  String? get modResultState => _modResultState;
  String? get manualWarnFlag => _manualWarnFlag;
  dynamic get upLoadFlag => _upLoadFlag;
  dynamic get sampleFlag => _sampleFlag;
  String? get fllowFlag => _fllowFlag;
  String? get deNoiseFlag => _deNoiseFlag;
  String? get isEnable => _isEnable;
  String? get reMark => _reMark;
  dynamic get fileDesc => _fileDesc;
  String? get creator => _creator;
  String? get createDate => _createDate;
  String? get modifier => _modifier;
  String? get modifyDate => _modifyDate;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['SoundFileID'] = _soundFileID;
    map['SoundDevID'] = _soundDevID;
    map['SoundPointID'] = _soundPointID;
    map['SoundPointCode'] = _soundPointCode;
    map['ModelNo'] = _modelNo;
    map['GatheringModuleCode'] = _gatheringModuleCode;
    map['SoundFileName'] = _soundFileName;
    map['SoundFileSrc'] = _soundFileSrc;
    map['TempMax'] = _tempMax;
    map['TempAvg'] = _tempAvg;
    map['RecordTime'] = _recordTime;
    map['TotalSecond'] = _totalSecond;
    map['SoundFileState'] = _soundFileState;
    map['LowState'] = _lowState;
    map['MiddleState'] = _middleState;
    map['HighState'] = _highState;
    map['ModResultState'] = _modResultState;
    map['ManualWarnFlag'] = _manualWarnFlag;
    map['UpLoadFlag'] = _upLoadFlag;
    map['SampleFlag'] = _sampleFlag;
    map['FllowFlag'] = _fllowFlag;
    map['DeNoiseFlag'] = _deNoiseFlag;
    map['IsEnable'] = _isEnable;
    map['ReMark'] = _reMark;
    map['FileDesc'] = _fileDesc;
    map['Creator'] = _creator;
    map['CreateDate'] = _createDate;
    map['Modifier'] = _modifier;
    map['ModifyDate'] = _modifyDate;
    return map;
  }

  @override
  String toString() {
    return 'AudioHistoryRecord{_soundFileID: $_soundFileID, _soundDevID: $_soundDevID, _soundPointID: $_soundPointID, _soundPointCode: $_soundPointCode, _modelNo: $_modelNo, _gatheringModuleCode: $_gatheringModuleCode, _soundFileName: $_soundFileName, _soundFileSrc: $_soundFileSrc, _tempMax: $_tempMax, _tempAvg: $_tempAvg, _recordTime: $_recordTime, _totalSecond: $_totalSecond, _soundFileState: $_soundFileState, _lowState: $_lowState, _middleState: $_middleState, _highState: $_highState, _modResultState: $_modResultState, _manualWarnFlag: $_manualWarnFlag, _upLoadFlag: $_upLoadFlag, _sampleFlag: $_sampleFlag, _fllowFlag: $_fllowFlag, _deNoiseFlag: $_deNoiseFlag, _isEnable: $_isEnable, _reMark: $_reMark, _fileDesc: $_fileDesc, _creator: $_creator, _createDate: $_createDate, _modifier: $_modifier, _modifyDate: $_modifyDate}';
  }
}