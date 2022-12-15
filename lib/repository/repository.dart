import 'dart:convert';
import 'package:flutter/services.dart';

import '../model/model.dart';

class Repository{
  Future<PajakModel> getPajak() async{
    try{
      var result = await rootBundle.loadString('assets/data.json');
      // return PajakModel.fromJson(json.decode(result));
      var pajak = PajakModel.fromJson(json.decode(result));
      print("pajak = ${pajak.pajak?.length}");
      return pajak;
    }catch(e){
      Map<String, dynamic> error ={
        "status": "failed",
        "message": "$e",
      };
      return PajakModel.fromJson(error);
    }
  }
}