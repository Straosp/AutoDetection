import '../net/AppUrl.dart';

/// LiSenCaseID : "13423274-04b2-a1c9-55bc-2f1b6d814deb"
/// LiSenCaseName : "001.炼钢风机"
/// CaseFileName1 : "播放音频1"
/// CaseSoundFile1 : "audio1.wav"
/// CaseFileName2 : "播放音频2"
/// CaseSoundFile2 : "audio2.wav"
/// DetailImage1 : "image_cases1.png"
/// Remark : ""
/// Creator : "admin"
/// CreateDate : "2021-07-21 09:56:22"
/// Modifier : "admin"
/// ModifyDate : "2021-07-22 09:45:23"

class CaseModel {
  CaseModel({
      String? liSenCaseID, 
      String? liSenCaseName, 
      String? caseFileName1, 
      String? caseSoundFile1, 
      String? caseFileName2, 
      String? caseSoundFile2, 
      String? detailImage1, 
      String? remark, 
      String? creator, 
      String? createDate, 
      String? modifier, 
      String? modifyDate,}){
    _liSenCaseID = liSenCaseID;
    _liSenCaseName = liSenCaseName;
    _caseFileName1 = caseFileName1;
    _caseSoundFile1 = caseSoundFile1;
    _caseFileName2 = caseFileName2;
    _caseSoundFile2 = caseSoundFile2;
    _detailImage1 = detailImage1;
    _remark = remark;
    _creator = creator;
    _createDate = createDate;
    _modifier = modifier;
    _modifyDate = modifyDate;
}

  CaseModel.fromJson(dynamic json) {
    _liSenCaseID = json['LiSenCaseID'];
    _liSenCaseName = json['LiSenCaseName'];
    _caseFileName1 = json['CaseFileName1'];
    _caseSoundFile1 = json['CaseSoundFile1'];
    _caseFileName2 = json['CaseFileName2'];
    _caseSoundFile2 = json['CaseSoundFile2'];
    _detailImage1 = json['DetailImage1'];
    _remark = json['Remark'];
    _creator = json['Creator'];
    _createDate = json['CreateDate'];
    _modifier = json['Modifier'];
    _modifyDate = json['ModifyDate'];
  }
  String? _liSenCaseID;
  String? _liSenCaseName;
  String? _caseFileName1;
  String? _caseSoundFile1;
  String? _caseFileName2;
  String? _caseSoundFile2;
  String? _detailImage1;
  String? _remark;
  String? _creator;
  String? _createDate;
  String? _modifier;
  String? _modifyDate;
  CaseModel copyWith({  String? liSenCaseID,
  String? liSenCaseName,
  String? caseFileName1,
  String? caseSoundFile1,
  String? caseFileName2,
  String? caseSoundFile2,
  String? detailImage1,
  String? remark,
  String? creator,
  String? createDate,
  String? modifier,
  String? modifyDate,
}) => CaseModel(  liSenCaseID: liSenCaseID ?? _liSenCaseID,
  liSenCaseName: liSenCaseName ?? _liSenCaseName,
  caseFileName1: caseFileName1 ?? _caseFileName1,
  caseSoundFile1: caseSoundFile1 ?? _caseSoundFile1,
  caseFileName2: caseFileName2 ?? _caseFileName2,
  caseSoundFile2: caseSoundFile2 ?? _caseSoundFile2,
  detailImage1: detailImage1 ?? _detailImage1,
  remark: remark ?? _remark,
  creator: creator ?? _creator,
  createDate: createDate ?? _createDate,
  modifier: modifier ?? _modifier,
  modifyDate: modifyDate ?? _modifyDate,
);
  String? get liSenCaseID => _liSenCaseID;
  String? get liSenCaseName => _liSenCaseName;
  String? get caseFileName1 => _caseFileName1;
  String? get caseSoundFile1 => _caseSoundFile1;
  String? get caseFileName2 => _caseFileName2;
  String? get caseSoundFile2 => _caseSoundFile2;
  String? get detailImage1 => _detailImage1;
  String? get remark => _remark;
  String? get creator => _creator;
  String? get createDate => _createDate;
  String? get modifier => _modifier;
  String? get modifyDate => _modifyDate;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['LiSenCaseID'] = _liSenCaseID;
    map['LiSenCaseName'] = _liSenCaseName;
    map['CaseFileName1'] = _caseFileName1;
    map['CaseSoundFile1'] = _caseSoundFile1;
    map['CaseFileName2'] = _caseFileName2;
    map['CaseSoundFile2'] = _caseSoundFile2;
    map['DetailImage1'] = _detailImage1;
    map['Remark'] = _remark;
    map['Creator'] = _creator;
    map['CreateDate'] = _createDate;
    map['Modifier'] = _modifier;
    map['ModifyDate'] = _modifyDate;
    return map;
  }

}
extension CaseModelExtension on CaseModel{
  String getDetailImage() => "${AppUrl.caseBaseUrl}$liSenCaseID/$detailImage1";
  String getSoundFileUrl1() => "${AppUrl.caseBaseUrl}$liSenCaseID/$caseSoundFile1";
  String getSoundFileUrl2() => "${AppUrl.caseBaseUrl}$liSenCaseID/$caseSoundFile2";
}