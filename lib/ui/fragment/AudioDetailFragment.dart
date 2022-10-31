import 'package:auto_detection/model/AudioDetailModel.dart';
import 'package:auto_detection/net/Request.dart';
import 'package:auto_detection/view/AutoDetectionAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:get/get.dart';
import 'package:charcode/html_entity.dart' as HtmlEntity;

import '../../util/ImageCacheUtil.dart';
import '../../vm/AudioDetailVM.dart';

class AudioDetail extends GetView<AudioDetailVM>{

  final viewModel = Get.find<AudioDetailVM>();
  TextEditingController runThresholdController  = TextEditingController();
  TextEditingController bandThresholdController  = TextEditingController();
  TextEditingController startBandController  = TextEditingController();
  TextEditingController endBandController  = TextEditingController();
  TextEditingController diagnosticController  = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AutoDetectionAppBar(title: viewModel.audioDetailModel?.soundPointCode ?? ""),
      ),
      body: ConstrainedBox(
          constraints: const BoxConstraints.expand(),
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Positioned(
                child: SingleChildScrollView(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(15, 15, 15, 220),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          width: double.infinity,
                          height: 200,
                          child: Swiper(
                            itemCount: 11,
                            itemHeight: 100,
                            itemBuilder: (context,index){
                              return Container(
                                width: double.infinity,
                                margin: const EdgeInsets.all(10),
                                child: cacheImage("",boxFit: BoxFit.fill, width: 100, height: 150),
                              );
                            },
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 50,
                          padding: const EdgeInsets.all(15),
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              color: Colors.white
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("最高温度: ${viewModel.audioDetailModel?.tempMax}${String.fromCharCode(HtmlEntity.$deg)}C",style: const TextStyle(fontSize: 16),),
                              Text("平均温度: ${viewModel.audioDetailModel?.tempAvg}${String.fromCharCode(HtmlEntity.$deg)}C",style: const TextStyle(fontSize: 16),),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              color: Colors.white
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const Text("波形图",style: TextStyle(fontSize: 16),),
                              cacheImage(viewModel.audioDetailModel?.getTimeDoMineImageUrl() ?? "", boxFit: BoxFit.fitWidth, width: double.infinity, height: 150)
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(5),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Expanded(
                                  child:  Container(
                                    margin: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                                    child: TextField(
                                      controller: runThresholdController,
                                      keyboardType: TextInputType.number,
                                      inputFormatters: [
                                        FilteringTextInputFormatter.allow(RegExp("[0-9.]")),
                                      ],
                                      decoration: const InputDecoration(
                                        hintText: "截取时间:",
                                      ),),
                                  )
                              ),
                              ElevatedButton(onPressed: (){},
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                                    side: MaterialStateProperty.all(const BorderSide(width: 1,color: Colors.blue)),
                                    padding: MaterialStateProperty.all(EdgeInsets.all(10))
                                ),
                                child: const Text("获取运行阈值",style: TextStyle(fontSize: 18),),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              color: Colors.white
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const Text("功率谱",style: TextStyle(fontSize: 16),),
                              cacheImage(viewModel.audioDetailModel?.getFrequencyAnalysisImageUrl() ?? "", boxFit: BoxFit.fitWidth, width: double.infinity, height: 300)
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                              color: Colors.white
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                alignment: Alignment.center,
                                margin: const EdgeInsets.fromLTRB(10, 0, 30, 0),
                                child: const Text("截取时间",style: TextStyle(fontSize: 18),),
                              ),
                              Expanded(
                                  child:  Container(
                                    padding: const EdgeInsets.all(5),
                                    margin: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                                    child: TextField(
                                      controller: bandThresholdController,
                                      textAlign: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      inputFormatters: [
                                        FilteringTextInputFormatter.allow(RegExp("[0-9.]")),
                                      ],
                                      decoration: const InputDecoration(
                                          hintText: "请输入截取时间",
                                          border: InputBorder.none,
                                          labelStyle: TextStyle(fontSize: 18),
                                          hintStyle: TextStyle(fontSize: 18)
                                      ),),
                                  )
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
                              color: Colors.white
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                alignment: Alignment.center,
                                margin: const EdgeInsets.fromLTRB(10, 0, 30, 0),
                                child: const Text("目标频段",style: TextStyle(fontSize: 18),),
                              ),
                              Expanded(
                                child:  TextField(
                                  controller: startBandController,
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.allow(RegExp("[0-9.]")),
                                  ],
                                  decoration: const InputDecoration(
                                      hintText: "1000",
                                      border: InputBorder.none,
                                      labelStyle: TextStyle(fontSize: 18),
                                      hintStyle: TextStyle(fontSize: 18)
                                  ),),
                              ),
                              const Text("到",style: TextStyle(fontSize: 18),),
                              Expanded(
                                child: TextField(
                                  controller: endBandController,
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.allow(RegExp("[0-9.]")),
                                  ],
                                  decoration: const InputDecoration(
                                      hintText: "2000",
                                      border: InputBorder.none,
                                      labelStyle: TextStyle(fontSize: 18),
                                      hintStyle: TextStyle(fontSize: 18)
                                  ),),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(top: 15),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("${viewModel.bandThresholdValue}",style: const TextStyle(fontSize: 18),),
                              ElevatedButton(onPressed: (){},
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                                    side: MaterialStateProperty.all(const BorderSide(width: 1,color: Colors.blue)),
                                    padding: MaterialStateProperty.all(const EdgeInsets.all(10))
                                ),
                                child: const Text("获取频段阈值",style: TextStyle(fontSize: 18),),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              color: Colors.white
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const Text("声谱图",style: TextStyle(fontSize: 16),),
                              cacheImage(viewModel.audioDetailModel?.getSpectrumImageUrl() ?? "", boxFit: BoxFit.fitWidth, width: double.infinity, height: 100)
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          margin: const EdgeInsets.only(top: 15),
                          child: ElevatedButton(onPressed: (){},style: ButtonStyle(
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                              side: MaterialStateProperty.all(const BorderSide(width: 1,color: Colors.blue)),
                              padding: MaterialStateProperty.all(const EdgeInsets.all(10))
                          ), child: const Text("设置为停机模型文件",style: TextStyle(fontSize: 18),)),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 15),
                          child: Row(
                            children: <Widget>[
                              const Text("诊断意见:"),
                              Radio<int>(value: 0, groupValue: viewModel.diagnosticValue.value, onChanged: (v){ viewModel.diagnosticValue.value = 0; }),
                              const Text("不是预警信息",style: TextStyle(fontSize: 16),),
                              Radio<int>(value: 1, groupValue: viewModel.diagnosticValue.value, onChanged: (v){ viewModel.diagnosticValue.value = 1; }),
                              const Text("是预警信息",style: TextStyle(fontSize: 16),),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 200,
                          child: TextField(
                            controller: diagnosticController,
                            maxLines: 100,
                            decoration: const InputDecoration(
                                hintText: "请输入诊断意见",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 1
                                    )
                                )
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 15,
                left: 15,
                right: 15,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(viewModel.audioDetailModel?.soundFileName ?? "",style: const TextStyle(fontSize: 16),),
                      Text("${viewModel.audioDetailModel?.reMark}"),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text("AI参考"),
                          Radio<int>(value: 2, groupValue: 2, onChanged: (v){}),
                          const Text("正常"),
                          Radio<int>(value: 3, groupValue: 2, onChanged: (v){}),
                          const Text("正常"),
                          Radio<int>(value: 4, groupValue: 2, onChanged: (v){}),
                          const Text("正常"),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                        child: Row(
                          children: <Widget>[
                            GestureDetector(
                              child: const Icon(Icons.play_circle,color: Colors.blue,size: 50,),
                            ),
                            const LinearProgressIndicator(
                              value: 1,
                              minHeight: 20,

                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }

}
