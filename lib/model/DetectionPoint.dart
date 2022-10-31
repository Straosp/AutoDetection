import '../net/AppUrl.dart';

/// LastAlarmTime : "2022-01-31 15:28:33"
/// WarnCount : 3
/// SoundPointID : "3450f1b5-c916-476f-9cd6-4a1de8541991"
/// GatheringModuleID : "526bb6a1-25e4-40ed-bb44-96b546f6bb10"
/// SoundPointName : "一炼钢1CC2#风机轴承座"
/// SoundPointCode : "20A0AB90102"
/// ModelNo : 0
/// SoundPointLine : ""
/// SoundDevName : ""
/// SoundPointPosition : ""
/// SoundPointDesc : ""
/// SoundPointImgSrc : "20A0AB90102.png"
/// SoundPointImgSrc2 : "20A0AB90102_2.png"
/// LubricationType : null
/// DevWorkType : "1"
/// RotationalSpeedMin : 0
/// RotationalSpeedMax : 0
/// ModelState : "3"
/// PointState : "0"
/// SoundPointState : "0"
/// TempState : "0"
/// HealthValue : 92
/// IsHealthShow : "1"
/// HealthRatio : 0.97
/// Diagnostic : "【力声】力声预警提醒：一炼钢1CC2#风机轴承座，编号20A0AB90102，AI判定声音状态改变，请用APP查看详情！-2022-01-31"
/// AcquisitionType : "0"
/// AcquisitionCycle : 240
/// AcquisitionCount : 60
/// CheckTime : 2
/// CheckValue : 0.0
/// CheckInterval : 60
/// LisenGahterLimit : 0
/// AreaLoad : 0.0
/// StartRate : 0
/// EndRate : 0
/// ContrastType : "0"
/// RateTargetValue : 0.0
/// ChangeValue : 0.0
/// CalculateFileType : "0"
/// CalculateAreaUnLoad : 0.0
/// CalculateAreaLoad : 0.0
/// CalculateType : "0"
/// CalculateStartRate : 0
/// CalculateEndRate : 0
/// CalculateContrastType : "0"
/// CalculateRateTargetValue : 0.0
/// AcquisitionTime : "2022-08-15 07:23:52"
/// TriggerSignalNo : 0
/// TriggerSignalValue : null
/// IsSetTemp : "1"
/// TempRatio : 1.0
/// TempOffset : 0.0
/// TempNow : 41.70000076293945
/// TempMax : 30.0
/// TempAvg : 39.54999923706055
/// TempThresholdMax : 75.0
/// TempThresholdMin : 35.0
/// TempThresholdChange : 10.0
/// IsEnable : "1"
/// EnableTime : "2020-11-27 10:16:29"
/// IsNormalFileFlag : "1"
/// IsDeNoiseFileFlag : "0"
/// DeNoiseType : "0"
/// EnlargeFlag : "0"
/// SoundDecibels : 0
/// PointSlope : 0.00013124344102080315
/// Latitude : 0.0
/// Longitude : 0.0
/// Creator : "admin"
/// CreateDate : "2020-11-09 19:35:56"
/// Modifier : "18930671096"
/// ModifyDate : "2022-06-30 12:46:13"
/// ConnectState : "0"

class DetectionPoint {
  DetectionPoint({
    String? lastAlarmTime,
      num? warnCount, 
      String? soundPointID, 
      String? gatheringModuleID, 
      String? soundPointName, 
      String? soundPointCode, 
      num? modelNo, 
      String? soundPointLine, 
      String? soundDevName, 
      String? soundPointPosition, 
      String? soundPointDesc, 
      String? soundPointImgSrc, 
      String? soundPointImgSrc2, 
      dynamic lubricationType, 
      String? devWorkType, 
      num? rotationalSpeedMin, 
      num? rotationalSpeedMax, 
      String? modelState, 
      String? pointState, 
      String? soundPointState, 
      String? tempState, 
      num? healthValue, 
      String? isHealthShow, 
      num? healthRatio, 
      String? diagnostic, 
      String? acquisitionType, 
      num? acquisitionCycle, 
      num? acquisitionCount, 
      num? checkTime, 
      num? checkValue, 
      num? checkInterval, 
      num? lisenGahterLimit, 
      num? areaLoad, 
      num? startRate, 
      num? endRate, 
      String? contrastType, 
      num? rateTargetValue, 
      num? changeValue, 
      String? calculateFileType, 
      num? calculateAreaUnLoad, 
      num? calculateAreaLoad, 
      String? calculateType, 
      num? calculateStartRate, 
      num? calculateEndRate, 
      String? calculateContrastType, 
      num? calculateRateTargetValue, 
      String? acquisitionTime, 
      num? triggerSignalNo, 
      dynamic triggerSignalValue, 
      String? isSetTemp, 
      num? tempRatio, 
      num? tempOffset, 
      num? tempNow, 
      num? tempMax, 
      num? tempAvg, 
      num? tempThresholdMax, 
      num? tempThresholdMin, 
      num? tempThresholdChange, 
      String? isEnable, 
      String? enableTime, 
      String? isNormalFileFlag, 
      String? isDeNoiseFileFlag, 
      String? deNoiseType, 
      String? enlargeFlag, 
      num? soundDecibels, 
      num? pointSlope, 
      num? latitude, 
      num? longitude, 
      String? creator, 
      String? createDate, 
      String? modifier, 
      String? modifyDate, 
      String? connectState,}){
    _lastAlarmTime = lastAlarmTime;
    _warnCount = warnCount;
    _soundPointID = soundPointID;
    _gatheringModuleID = gatheringModuleID;
    _soundPointName = soundPointName;
    _soundPointCode = soundPointCode;
    _modelNo = modelNo;
    _soundPointLine = soundPointLine;
    _soundDevName = soundDevName;
    _soundPointPosition = soundPointPosition;
    _soundPointDesc = soundPointDesc;
    _soundPointImgSrc = soundPointImgSrc;
    _soundPointImgSrc2 = soundPointImgSrc2;
    _lubricationType = lubricationType;
    _devWorkType = devWorkType;
    _rotationalSpeedMin = rotationalSpeedMin;
    _rotationalSpeedMax = rotationalSpeedMax;
    _modelState = modelState;
    _pointState = pointState;
    _soundPointState = soundPointState;
    _tempState = tempState;
    _healthValue = healthValue;
    _isHealthShow = isHealthShow;
    _healthRatio = healthRatio;
    _diagnostic = diagnostic;
    _acquisitionType = acquisitionType;
    _acquisitionCycle = acquisitionCycle;
    _acquisitionCount = acquisitionCount;
    _checkTime = checkTime;
    _checkValue = checkValue;
    _checkInterval = checkInterval;
    _lisenGahterLimit = lisenGahterLimit;
    _areaLoad = areaLoad;
    _startRate = startRate;
    _endRate = endRate;
    _contrastType = contrastType;
    _rateTargetValue = rateTargetValue;
    _changeValue = changeValue;
    _calculateFileType = calculateFileType;
    _calculateAreaUnLoad = calculateAreaUnLoad;
    _calculateAreaLoad = calculateAreaLoad;
    _calculateType = calculateType;
    _calculateStartRate = calculateStartRate;
    _calculateEndRate = calculateEndRate;
    _calculateContrastType = calculateContrastType;
    _calculateRateTargetValue = calculateRateTargetValue;
    _acquisitionTime = acquisitionTime;
    _triggerSignalNo = triggerSignalNo;
    _triggerSignalValue = triggerSignalValue;
    _isSetTemp = isSetTemp;
    _tempRatio = tempRatio;
    _tempOffset = tempOffset;
    _tempNow = tempNow;
    _tempMax = tempMax;
    _tempAvg = tempAvg;
    _tempThresholdMax = tempThresholdMax;
    _tempThresholdMin = tempThresholdMin;
    _tempThresholdChange = tempThresholdChange;
    _isEnable = isEnable;
    _enableTime = enableTime;
    _isNormalFileFlag = isNormalFileFlag;
    _isDeNoiseFileFlag = isDeNoiseFileFlag;
    _deNoiseType = deNoiseType;
    _enlargeFlag = enlargeFlag;
    _soundDecibels = soundDecibels;
    _pointSlope = pointSlope;
    _latitude = latitude;
    _longitude = longitude;
    _creator = creator;
    _createDate = createDate;
    _modifier = modifier;
    _modifyDate = modifyDate;
    _connectState = connectState;
}

  DetectionPoint.fromJson(dynamic json) {
    _lastAlarmTime = json['LastAlarmTime'];
    _warnCount = json['WarnCount'];
    _soundPointID = json['SoundPointID'];
    _gatheringModuleID = json['GatheringModuleID'];
    _soundPointName = json['SoundPointName'];
    _soundPointCode = json['SoundPointCode'];
    _modelNo = json['ModelNo'];
    _soundPointLine = json['SoundPointLine'];
    _soundDevName = json['SoundDevName'];
    _soundPointPosition = json['SoundPointPosition'];
    _soundPointDesc = json['SoundPointDesc'];
    _soundPointImgSrc = json['SoundPointImgSrc'];
    _soundPointImgSrc2 = json['SoundPointImgSrc2'];
    _lubricationType = json['LubricationType'];
    _devWorkType = json['DevWorkType'];
    _rotationalSpeedMin = json['RotationalSpeedMin'];
    _rotationalSpeedMax = json['RotationalSpeedMax'];
    _modelState = json['ModelState'];
    _pointState = json['PointState'];
    _soundPointState = json['SoundPointState'];
    _tempState = json['TempState'];
    _healthValue = json['HealthValue'];
    _isHealthShow = json['IsHealthShow'];
    _healthRatio = json['HealthRatio'];
    _diagnostic = json['Diagnostic'];
    _acquisitionType = json['AcquisitionType'];
    _acquisitionCycle = json['AcquisitionCycle'];
    _acquisitionCount = json['AcquisitionCount'];
    _checkTime = json['CheckTime'];
    _checkValue = json['CheckValue'];
    _checkInterval = json['CheckInterval'];
    _lisenGahterLimit = json['LisenGahterLimit'];
    _areaLoad = json['AreaLoad'];
    _startRate = json['StartRate'];
    _endRate = json['EndRate'];
    _contrastType = json['ContrastType'];
    _rateTargetValue = json['RateTargetValue'];
    _changeValue = json['ChangeValue'];
    _calculateFileType = json['CalculateFileType'];
    _calculateAreaUnLoad = json['CalculateAreaUnLoad'];
    _calculateAreaLoad = json['CalculateAreaLoad'];
    _calculateType = json['CalculateType'];
    _calculateStartRate = json['CalculateStartRate'];
    _calculateEndRate = json['CalculateEndRate'];
    _calculateContrastType = json['CalculateContrastType'];
    _calculateRateTargetValue = json['CalculateRateTargetValue'];
    _acquisitionTime = json['AcquisitionTime'];
    _triggerSignalNo = json['TriggerSignalNo'];
    _triggerSignalValue = json['TriggerSignalValue'];
    _isSetTemp = json['IsSetTemp'];
    _tempRatio = json['TempRatio'];
    _tempOffset = json['TempOffset'];
    _tempNow = json['TempNow'];
    _tempMax = json['TempMax'];
    _tempAvg = json['TempAvg'];
    _tempThresholdMax = json['TempThresholdMax'];
    _tempThresholdMin = json['TempThresholdMin'];
    _tempThresholdChange = json['TempThresholdChange'];
    _isEnable = json['IsEnable'];
    _enableTime = json['EnableTime'];
    _isNormalFileFlag = json['IsNormalFileFlag'];
    _isDeNoiseFileFlag = json['IsDeNoiseFileFlag'];
    _deNoiseType = json['DeNoiseType'];
    _enlargeFlag = json['EnlargeFlag'];
    _soundDecibels = json['SoundDecibels'];
    _pointSlope = json['PointSlope'];
    _latitude = json['Latitude'];
    _longitude = json['Longitude'];
    _creator = json['Creator'];
    _createDate = json['CreateDate'];
    _modifier = json['Modifier'];
    _modifyDate = json['ModifyDate'];
    _connectState = json['ConnectState'];
  }
  String? _lastAlarmTime;
  num? _warnCount;
  String? _soundPointID;
  String? _gatheringModuleID;
  String? _soundPointName;
  String? _soundPointCode;
  num? _modelNo;
  String? _soundPointLine;
  String? _soundDevName;
  String? _soundPointPosition;
  String? _soundPointDesc;
  String? _soundPointImgSrc;
  String? _soundPointImgSrc2;
  dynamic _lubricationType;
  String? _devWorkType;
  num? _rotationalSpeedMin;
  num? _rotationalSpeedMax;
  String? _modelState;
  String? _pointState;
  String? _soundPointState;
  String? _tempState;
  num? _healthValue;
  String? _isHealthShow;
  num? _healthRatio;
  String? _diagnostic;
  String? _acquisitionType;
  num? _acquisitionCycle;
  num? _acquisitionCount;
  num? _checkTime;
  num? _checkValue;
  num? _checkInterval;
  num? _lisenGahterLimit;
  num? _areaLoad;
  num? _startRate;
  num? _endRate;
  String? _contrastType;
  num? _rateTargetValue;
  num? _changeValue;
  String? _calculateFileType;
  num? _calculateAreaUnLoad;
  num? _calculateAreaLoad;
  String? _calculateType;
  num? _calculateStartRate;
  num? _calculateEndRate;
  String? _calculateContrastType;
  num? _calculateRateTargetValue;
  String? _acquisitionTime;
  num? _triggerSignalNo;
  dynamic _triggerSignalValue;
  String? _isSetTemp;
  num? _tempRatio;
  num? _tempOffset;
  num? _tempNow;
  num? _tempMax;
  num? _tempAvg;
  num? _tempThresholdMax;
  num? _tempThresholdMin;
  num? _tempThresholdChange;
  String? _isEnable;
  String? _enableTime;
  String? _isNormalFileFlag;
  String? _isDeNoiseFileFlag;
  String? _deNoiseType;
  String? _enlargeFlag;
  num? _soundDecibels;
  num? _pointSlope;
  num? _latitude;
  num? _longitude;
  String? _creator;
  String? _createDate;
  String? _modifier;
  String? _modifyDate;
  String? _connectState;
DetectionPoint copyWith({  String? lastAlarmTime,
  num? warnCount,
  String? soundPointID,
  String? gatheringModuleID,
  String? soundPointName,
  String? soundPointCode,
  num? modelNo,
  String? soundPointLine,
  String? soundDevName,
  String? soundPointPosition,
  String? soundPointDesc,
  String? soundPointImgSrc,
  String? soundPointImgSrc2,
  dynamic lubricationType,
  String? devWorkType,
  num? rotationalSpeedMin,
  num? rotationalSpeedMax,
  String? modelState,
  String? pointState,
  String? soundPointState,
  String? tempState,
  num? healthValue,
  String? isHealthShow,
  num? healthRatio,
  String? diagnostic,
  String? acquisitionType,
  num? acquisitionCycle,
  num? acquisitionCount,
  num? checkTime,
  num? checkValue,
  num? checkInterval,
  num? lisenGahterLimit,
  num? areaLoad,
  num? startRate,
  num? endRate,
  String? contrastType,
  num? rateTargetValue,
  num? changeValue,
  String? calculateFileType,
  num? calculateAreaUnLoad,
  num? calculateAreaLoad,
  String? calculateType,
  num? calculateStartRate,
  num? calculateEndRate,
  String? calculateContrastType,
  num? calculateRateTargetValue,
  String? acquisitionTime,
  num? triggerSignalNo,
  dynamic triggerSignalValue,
  String? isSetTemp,
  num? tempRatio,
  num? tempOffset,
  num? tempNow,
  num? tempMax,
  num? tempAvg,
  num? tempThresholdMax,
  num? tempThresholdMin,
  num? tempThresholdChange,
  String? isEnable,
  String? enableTime,
  String? isNormalFileFlag,
  String? isDeNoiseFileFlag,
  String? deNoiseType,
  String? enlargeFlag,
  num? soundDecibels,
  num? pointSlope,
  num? latitude,
  num? longitude,
  String? creator,
  String? createDate,
  String? modifier,
  String? modifyDate,
  String? connectState,
}) => DetectionPoint(  lastAlarmTime: lastAlarmTime ?? _lastAlarmTime,
  warnCount: warnCount ?? _warnCount,
  soundPointID: soundPointID ?? _soundPointID,
  gatheringModuleID: gatheringModuleID ?? _gatheringModuleID,
  soundPointName: soundPointName ?? _soundPointName,
  soundPointCode: soundPointCode ?? _soundPointCode,
  modelNo: modelNo ?? _modelNo,
  soundPointLine: soundPointLine ?? _soundPointLine,
  soundDevName: soundDevName ?? _soundDevName,
  soundPointPosition: soundPointPosition ?? _soundPointPosition,
  soundPointDesc: soundPointDesc ?? _soundPointDesc,
  soundPointImgSrc: soundPointImgSrc ?? _soundPointImgSrc,
  soundPointImgSrc2: soundPointImgSrc2 ?? _soundPointImgSrc2,
  lubricationType: lubricationType ?? _lubricationType,
  devWorkType: devWorkType ?? _devWorkType,
  rotationalSpeedMin: rotationalSpeedMin ?? _rotationalSpeedMin,
  rotationalSpeedMax: rotationalSpeedMax ?? _rotationalSpeedMax,
  modelState: modelState ?? _modelState,
  pointState: pointState ?? _pointState,
  soundPointState: soundPointState ?? _soundPointState,
  tempState: tempState ?? _tempState,
  healthValue: healthValue ?? _healthValue,
  isHealthShow: isHealthShow ?? _isHealthShow,
  healthRatio: healthRatio ?? _healthRatio,
  diagnostic: diagnostic ?? _diagnostic,
  acquisitionType: acquisitionType ?? _acquisitionType,
  acquisitionCycle: acquisitionCycle ?? _acquisitionCycle,
  acquisitionCount: acquisitionCount ?? _acquisitionCount,
  checkTime: checkTime ?? _checkTime,
  checkValue: checkValue ?? _checkValue,
  checkInterval: checkInterval ?? _checkInterval,
  lisenGahterLimit: lisenGahterLimit ?? _lisenGahterLimit,
  areaLoad: areaLoad ?? _areaLoad,
  startRate: startRate ?? _startRate,
  endRate: endRate ?? _endRate,
  contrastType: contrastType ?? _contrastType,
  rateTargetValue: rateTargetValue ?? _rateTargetValue,
  changeValue: changeValue ?? _changeValue,
  calculateFileType: calculateFileType ?? _calculateFileType,
  calculateAreaUnLoad: calculateAreaUnLoad ?? _calculateAreaUnLoad,
  calculateAreaLoad: calculateAreaLoad ?? _calculateAreaLoad,
  calculateType: calculateType ?? _calculateType,
  calculateStartRate: calculateStartRate ?? _calculateStartRate,
  calculateEndRate: calculateEndRate ?? _calculateEndRate,
  calculateContrastType: calculateContrastType ?? _calculateContrastType,
  calculateRateTargetValue: calculateRateTargetValue ?? _calculateRateTargetValue,
  acquisitionTime: acquisitionTime ?? _acquisitionTime,
  triggerSignalNo: triggerSignalNo ?? _triggerSignalNo,
  triggerSignalValue: triggerSignalValue ?? _triggerSignalValue,
  isSetTemp: isSetTemp ?? _isSetTemp,
  tempRatio: tempRatio ?? _tempRatio,
  tempOffset: tempOffset ?? _tempOffset,
  tempNow: tempNow ?? _tempNow,
  tempMax: tempMax ?? _tempMax,
  tempAvg: tempAvg ?? _tempAvg,
  tempThresholdMax: tempThresholdMax ?? _tempThresholdMax,
  tempThresholdMin: tempThresholdMin ?? _tempThresholdMin,
  tempThresholdChange: tempThresholdChange ?? _tempThresholdChange,
  isEnable: isEnable ?? _isEnable,
  enableTime: enableTime ?? _enableTime,
  isNormalFileFlag: isNormalFileFlag ?? _isNormalFileFlag,
  isDeNoiseFileFlag: isDeNoiseFileFlag ?? _isDeNoiseFileFlag,
  deNoiseType: deNoiseType ?? _deNoiseType,
  enlargeFlag: enlargeFlag ?? _enlargeFlag,
  soundDecibels: soundDecibels ?? _soundDecibels,
  pointSlope: pointSlope ?? _pointSlope,
  latitude: latitude ?? _latitude,
  longitude: longitude ?? _longitude,
  creator: creator ?? _creator,
  createDate: createDate ?? _createDate,
  modifier: modifier ?? _modifier,
  modifyDate: modifyDate ?? _modifyDate,
  connectState: connectState ?? _connectState,
);
  String? get lastAlarmTime => _lastAlarmTime;
  num? get warnCount => _warnCount;
  String? get soundPointID => _soundPointID;
  String? get gatheringModuleID => _gatheringModuleID;
  String? get soundPointName => _soundPointName;
  String? get soundPointCode => _soundPointCode;
  num? get modelNo => _modelNo;
  String? get soundPointLine => _soundPointLine;
  String? get soundDevName => _soundDevName;
  String? get soundPointPosition => _soundPointPosition;
  String? get soundPointDesc => _soundPointDesc;
  String? get soundPointImgSrc => _soundPointImgSrc;
  String? get soundPointImgSrc2 => _soundPointImgSrc2;
  dynamic get lubricationType => _lubricationType;
  String? get devWorkType => _devWorkType;
  num? get rotationalSpeedMin => _rotationalSpeedMin;
  num? get rotationalSpeedMax => _rotationalSpeedMax;
  String? get modelState => _modelState;
  String? get pointState => _pointState;
  String? get soundPointState => _soundPointState;
  String? get tempState => _tempState;
  num? get healthValue => _healthValue;
  String? get isHealthShow => _isHealthShow;
  num? get healthRatio => _healthRatio;
  String? get diagnostic => _diagnostic;
  String? get acquisitionType => _acquisitionType;
  num? get acquisitionCycle => _acquisitionCycle;
  num? get acquisitionCount => _acquisitionCount;
  num? get checkTime => _checkTime;
  num? get checkValue => _checkValue;
  num? get checkInterval => _checkInterval;
  num? get lisenGahterLimit => _lisenGahterLimit;
  num? get areaLoad => _areaLoad;
  num? get startRate => _startRate;
  num? get endRate => _endRate;
  String? get contrastType => _contrastType;
  num? get rateTargetValue => _rateTargetValue;
  num? get changeValue => _changeValue;
  String? get calculateFileType => _calculateFileType;
  num? get calculateAreaUnLoad => _calculateAreaUnLoad;
  num? get calculateAreaLoad => _calculateAreaLoad;
  String? get calculateType => _calculateType;
  num? get calculateStartRate => _calculateStartRate;
  num? get calculateEndRate => _calculateEndRate;
  String? get calculateContrastType => _calculateContrastType;
  num? get calculateRateTargetValue => _calculateRateTargetValue;
  String? get acquisitionTime => _acquisitionTime;
  num? get triggerSignalNo => _triggerSignalNo;
  dynamic get triggerSignalValue => _triggerSignalValue;
  String? get isSetTemp => _isSetTemp;
  num? get tempRatio => _tempRatio;
  num? get tempOffset => _tempOffset;
  num? get tempNow => _tempNow;
  num? get tempMax => _tempMax;
  num? get tempAvg => _tempAvg;
  num? get tempThresholdMax => _tempThresholdMax;
  num? get tempThresholdMin => _tempThresholdMin;
  num? get tempThresholdChange => _tempThresholdChange;
  String? get isEnable => _isEnable;
  String? get enableTime => _enableTime;
  String? get isNormalFileFlag => _isNormalFileFlag;
  String? get isDeNoiseFileFlag => _isDeNoiseFileFlag;
  String? get deNoiseType => _deNoiseType;
  String? get enlargeFlag => _enlargeFlag;
  num? get soundDecibels => _soundDecibels;
  num? get pointSlope => _pointSlope;
  num? get latitude => _latitude;
  num? get longitude => _longitude;
  String? get creator => _creator;
  String? get createDate => _createDate;
  String? get modifier => _modifier;
  String? get modifyDate => _modifyDate;
  String? get connectState => _connectState;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['LastAlarmTime'] = _lastAlarmTime;
    map['WarnCount'] = _warnCount;
    map['SoundPointID'] = _soundPointID;
    map['GatheringModuleID'] = _gatheringModuleID;
    map['SoundPointName'] = _soundPointName;
    map['SoundPointCode'] = _soundPointCode;
    map['ModelNo'] = _modelNo;
    map['SoundPointLine'] = _soundPointLine;
    map['SoundDevName'] = _soundDevName;
    map['SoundPointPosition'] = _soundPointPosition;
    map['SoundPointDesc'] = _soundPointDesc;
    map['SoundPointImgSrc'] = _soundPointImgSrc;
    map['SoundPointImgSrc2'] = _soundPointImgSrc2;
    map['LubricationType'] = _lubricationType;
    map['DevWorkType'] = _devWorkType;
    map['RotationalSpeedMin'] = _rotationalSpeedMin;
    map['RotationalSpeedMax'] = _rotationalSpeedMax;
    map['ModelState'] = _modelState;
    map['PointState'] = _pointState;
    map['SoundPointState'] = _soundPointState;
    map['TempState'] = _tempState;
    map['HealthValue'] = _healthValue;
    map['IsHealthShow'] = _isHealthShow;
    map['HealthRatio'] = _healthRatio;
    map['Diagnostic'] = _diagnostic;
    map['AcquisitionType'] = _acquisitionType;
    map['AcquisitionCycle'] = _acquisitionCycle;
    map['AcquisitionCount'] = _acquisitionCount;
    map['CheckTime'] = _checkTime;
    map['CheckValue'] = _checkValue;
    map['CheckInterval'] = _checkInterval;
    map['LisenGahterLimit'] = _lisenGahterLimit;
    map['AreaLoad'] = _areaLoad;
    map['StartRate'] = _startRate;
    map['EndRate'] = _endRate;
    map['ContrastType'] = _contrastType;
    map['RateTargetValue'] = _rateTargetValue;
    map['ChangeValue'] = _changeValue;
    map['CalculateFileType'] = _calculateFileType;
    map['CalculateAreaUnLoad'] = _calculateAreaUnLoad;
    map['CalculateAreaLoad'] = _calculateAreaLoad;
    map['CalculateType'] = _calculateType;
    map['CalculateStartRate'] = _calculateStartRate;
    map['CalculateEndRate'] = _calculateEndRate;
    map['CalculateContrastType'] = _calculateContrastType;
    map['CalculateRateTargetValue'] = _calculateRateTargetValue;
    map['AcquisitionTime'] = _acquisitionTime;
    map['TriggerSignalNo'] = _triggerSignalNo;
    map['TriggerSignalValue'] = _triggerSignalValue;
    map['IsSetTemp'] = _isSetTemp;
    map['TempRatio'] = _tempRatio;
    map['TempOffset'] = _tempOffset;
    map['TempNow'] = _tempNow;
    map['TempMax'] = _tempMax;
    map['TempAvg'] = _tempAvg;
    map['TempThresholdMax'] = _tempThresholdMax;
    map['TempThresholdMin'] = _tempThresholdMin;
    map['TempThresholdChange'] = _tempThresholdChange;
    map['IsEnable'] = _isEnable;
    map['EnableTime'] = _enableTime;
    map['IsNormalFileFlag'] = _isNormalFileFlag;
    map['IsDeNoiseFileFlag'] = _isDeNoiseFileFlag;
    map['DeNoiseType'] = _deNoiseType;
    map['EnlargeFlag'] = _enlargeFlag;
    map['SoundDecibels'] = _soundDecibels;
    map['PointSlope'] = _pointSlope;
    map['Latitude'] = _latitude;
    map['Longitude'] = _longitude;
    map['Creator'] = _creator;
    map['CreateDate'] = _createDate;
    map['Modifier'] = _modifier;
    map['ModifyDate'] = _modifyDate;
    map['ConnectState'] = _connectState;
    return map;
  }

}
extension DetectionPointExtension on DetectionPoint{
  String getCover() => "${AppUrl.imageBaseUrl}${(soundPointCode ?? "" ).substring(0,9)}/${(soundPointCode ?? "" ).substring(10,11)}/Icon/$soundPointImgSrc";
  String getIconUrl() => "${AppUrl.imageBaseUrl}${soundPointCode?.substring(0,9) ?? ""}/${soundPointCode?.substring(10,11) ?? ""}/Icon/${soundPointImgSrc2}";

}