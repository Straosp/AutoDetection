class AppUrl{

  static const String baseUrl = "http://www.lisenapp.com:5034/api/";

  static const String audioBaseUrl = "http://www.lisenapp.com/KingtechNetFile/SoundNormalFiles/";
  static const String noiseFileBaseUrl = "http://www.lisenapp.com/KingtechNetFile/SoundDeNoiseFiles/";
  static const String originalFileBaseUrl = "http://www.lisenapp.com/KingtechNetFile/SoundFiles/";
  static const String caseBaseUrl = "http://www.lisenapp.com/KingtechNetFile/LisenCaseFiles/";
  static const String weiXinAfterService = "https://work.weixin.qq.com/kfid/kfcb6c2dcb2d10d73a4";
  //图片加载baseurl
  static const String imageBaseUrl = "http://47.103.17.180/KingtechNetFile/ImageFiles/";
  //隐私政策
  static const String lisenAppPrivacy = "http://www.lisenapp.com/page/yszc.html";

  //获取所有案例
  static const String getAllUseCase = "LisenCase/GetLisenAllCase";

  //检查更新
  static const String checkUpdate = "AppUpdateLog/GetAppVer";

  //提交反馈
  static const String submitFeedback = "FeedBack/AddFeedBack";

  //日志上传
  static const String uploadUserLog = "UserLog/UserLogInsert";

  //获取监测点特征数据
  static const String getDetectionPointCharacteristicData = "FileResultHistory/GetPointHis";

  //绑定位置信息
  static const String addPositionData = "LiSenArea/AreaAdd";

  //获取温度曲线图数据
  static const String getTempData = "PointTemp/QueryPointTempHis";

  //分享剪切板请求服务器做分享记录
  static const String getAudioShareContent = "FileDownRecord";


  // 47.103.17.180 > www.lisenapp.com
  // 账号密码登录
  static const String loginByPassword = "Authentication/Access";
  //登录发送验证码
  //检查手机号是否注册 也可能是发送验证码api，服务器先检测是否注册过
  static const String sendLoginVerifyCode = "Authentication/GetLiSenLoginVCode";
  //登录校验验证码是否正确
  static const String checkLoginVerifyCode = "Authentication/CheckVCodeByPhone";
  // 通过手机号获取token
  static const String getTokenByPhone = "Authentication/Login";
  //获取注册验证码
  static const String getRegisterNotDevCode = "Authentication/GetLiSenRegisterVCode";
  //注册 无绑定设备下的注册
  static const String registerUserNotDev = "Authentication/Register";

  //注册发送验证码
  static const String sendRegisterVerifyCode = "User/GetVCode";
  //是否为内部测试用户
  static const String isDebugUser = "User/GetIsDebugByPhone";
  //查询用户等级权限
  static const String getUserLevel = "User/GetModuleUserLevel";
  //注册账户 将手机号与设备绑定
  static const String registerUserAccount = "User/SetModulePhone";
  //注销账户验证码
  static const String cancelAccountVerifyCode = "User/GetUserCancelVCode";
  //注销账户
  static const String cancelAccount = "User/UserCancel";

  //获取签到天数以及积分
  static const String getSignDaysAndScore = "UserSign/GetUserSignInfo";
  //签到
  static const String submitSignInDay = "UserSign/UseSign";
  //根据月份查询签到记录
  static const String getSignInHistoryByMonth = "UserSign/GetUserSignLogByMonth";

  //根据手机号获取测点信息
  static const String getDetectionPointList = "SoundPoint/GetPointCodeByDevCode";
  //取消测点警报
  static const String removeDetectionAlarmData = "SoundPoint/SoundPointUnWarn";
  //查询测点数据
  static const String geDetectionPointData = "SoundPoint/GetPointCodeByDevCode";
  //调试助手
  static const String debugDetectionPointStatus = "SoundPoint/GetSoundPoints";
  //采集模块信息配置
  static const String collectModelParamData = "SoundPoint/SoundPointStateChange";
  //修改测点配置信息
  static const String submitDetectionConfigurationData = "SoundPoint/SoundPointUByCode";
  //上传测点图片
  static const String uploadDetectionPointImage = "SoundPoint/UploadDevImageByID/ifile";
  //上传测点图片icon
  static const String uploadDetectionPointIcon = "SoundPoint/UploadIconByID/ifile";

  //ai 声音文件加载更多
  static const String soundFileByDetectionPointCode = "SoundFiles/GetSoundFileListByNum";
  //根据时间获取声音文件
  static const String getHistoryAiAudioFileByTime = "SoundFiles/GetSoundFileListByStartTime";
  //获取该声音文件的阈值
  static const String getAIAudioThresholdValue = "SoundFiles/GetFileAreaValue";
  //获取频段阈值
  static const String getAIAudioThresholdValueByRate = "SoundFiles/GetFileAreaValueByRate";
  //收藏文件
  static const String addCollectionAudioFile = "SoundFiles/SoundFileFllow";
  //取消收藏
  static const String removeCollectionAudioFile = "SoundFiles/SoundFileUnFllow";
  //给文件添加备注
  static const String addTipsOnAIAudioFile = "SoundFiles/SoundFileAddRemark";
  //根据soundFileId获取音频详细信息
  static const String getAIAudioFileDetail = "SoundFiles/FindSoundFileResultByID";
  //查询报警记录
  static const String getHistoryAlarmRecord = "SoundAlarmRecord/GetAlarmRecordByPointCode";
  //触发发送短信
  static const String sendAlarmSMS = "SoundAlarmRecord/AlarmSendMail";
  //提交诊断意见
  static const String submitDiagnosticOpinion = "SoundAlarmRecord/AlarmRecordInsert";

  //查询测点参数阈值
  static const String getDetectionPointParamsThreshold = "SoundPointPar/GetPointParByPointCode";
  //修改测点阈值
  static const String updateDetectionPointThresholdValue = "SoundPointPar/SetPointAreaValue";

  //查询监测点采集信息
  static const String getDetectionPointCollectData = "PointFollow/GetMainCodeByChildren";
  //跟随测点信息
  static const String submitFlowPointData = "PointFollow/SaveFollowRelation";

  //区域更新s
  static const String updateDetectionPointArea = "PointArea/PointAreaUpdate";
  //绑定区域信息
  static const String insertAreaData = "PointArea/PointAreaInsert";
  //测点编号查询区域ID
  static const String getAreaIDByDetectionPointID = "PointArea/GetPointAreaByID";

  //查询获取该测点的标准音频文件(标准音频及背景音)
  static const String getNormalAudioFileByCode = "SoundNormalFile/GetNormalFileListByCode";
  //删除背景文件
  static const String removeBackgroundAudioFile = "SoundNormalFile/NormailFileEnable";
  //设置当前文件为标准文件
  static const String setStandardCurrentAudioFile = "SoundNormalFile/SetNormalFileByFileID";
  //设置为背景音文件
  static const String setBackgroundAudioFile = "SoundNormalFile/SetBackgrondFileBySoundFile";

  //获取物联网卡的信息
  static const String getIotNetworkCardData = "NetCards/GetNetCardbyMouleNo";
  // 绑定物联网卡
  static const String bindIOTCard = "NetCards/ModuleBindNetCard";

  //查询测点模型数据
  static const String getDetectionPointModelData = "PointModels/GetModelsByPointCode";
  //启用模型训练
  static const String submitModelCalculation = "PointModels/ModelTrainingByPointCode";
  //获取模型训练信息
  static const String getModelCalculationData = "PointModels/QueryModelTrainingApplyByPointCode";
  //启用测点模型
  static const String enableModelOnDetectionPoint = "PointModels/SetEnableModelByPointCode";
  // 添加测点模型
  static const String addModelOnDetectionPoint = "PointModels/AddModelByPointCode";
  //更新测点信息
  static const String updateDetectionModelData = "PointModels/PointModelEdit";

  //查询模型变更记录
  static const String getHistoryUsedModel = "ModChangeRecord/GetRecordByPoint";
  //重置模型
  static const String resetModelData = "ModChangeRecord/PointModelReset";

  //查询音频采集模块的信息
  static const String getAudioCollectModulesData = "DevInfo/GetGatherByModCode";

  //查询摄像头信息
  static const String getCameraData = "LiSenCamera/GetCameraList";
  //绑定监控摄像头
  static const String bindCameraOnDetectionPoint = "LiSenCamera/PointBindCamera";

  //获取当前测点的委托任务列表
  static const String getDetectionPointEntrustTaskList = "FileAnalysisApplys/QueryApplyList";
  //提交委托任务
  static const String submitEntrustTask = "FileAnalysisApplys/InsertFileApplys";


  //现有声纹的样本类型
  static const String getVoicePrintSampleByDetectionCode = "SoundSamples/QuerySampleTypes";
  //上边的类型获取数据
  static const String getVoicePrintSampleDataByDetectionCode = "SoundSamples/QuerySampleByCode";
  //获取样本参数
  static const String getVoicePrintSampleConfig = "SoundSamples/QueryLibParam";
  //保存上面的参数
  static const String saveVoicePrintConfig = "SoundSamples/UpdateLibParam";
  //修改引发类别名称
  static const String updateVoicePrintSampleTypeName = "SoundSamples/UpdateSampleTypeName";
  //获取音频文件的其他样本数据
  static const String getAudioAllVoicePrintSampleData = "SoundSamples/QuerySampleByFileID";
  //根据sampletype查询文件的其他的切片数据
  static const String getVoicePrintClipAudioDataBySampleType = "SoundSamples/QueryFileSampleByCode";
  //类别合并
  static const String voicePrintTypeMerge = "SoundSamples/SampleTypeMerge";
  //样本类别信息修改
  static const String sampleDataChangeType = "SoundSamples/SampleChangeType";
  //获取当前测点的声纹库使用文件列表信息(App)
  static const String getSampleTypeFileList =  "SoundSamples/GetSampleLibFileList";
  //获取当前测点的声纹库信息
  static const String getSampleTaskData = "SoundSamples/GetSampleLibMsg";
  //选择部分音频加入样本
  static const String setVoicePrintAudioClip = "SoundSamples/SampleUserAdd";
  //声纹库删除某一个片段
  static const String deleteOneSamplePart = "SoundSamples/SampleUserDel";

  // 测点附件文件列表
  static const String detectionAttachFileList = "SoundPointOtherFiles/GetAppVer";
  //附件文件上传
  static const String uploadDetectionAttachFile = "SoundPointOtherFiles/UpLoadPointOtherFile";

  // 声音趋势图 相似度
  static const String samplePrintSimilarityData = "SampleResult";
  // http://192.168.0.2/api/SoundPointTrend/GetPointTrendImg
  //测点趋势图
  static const String detectionTrendChartImage = "SoundPointTrend/GetPointTrendImg";


}
