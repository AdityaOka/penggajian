import 'package:get/get.dart';

import '../model/model.dart';
import '../widget/error_dialog.dart';
import '../repository/repository.dart';

class HomeController extends GetxController{
  final isShimmer = true.obs;
  final listPajak = <Pajak>[].obs;
  final message = "".obs;
  
  final repository = Repository();

  getData() async{
    await repository.getPajak().then((value){
      if(value.status == 'ok'){
        listPajak.value = value.pajak ?? [];
        isShimmer.value = false;
      } else {
        errorDialog(value.message == "" ? "Error Occured" : value.message!);
      }
    }, onError: (e){
      errorDialog("$e");
    });
  }

  @override 
  void onInit(){
    getData();
    super.onInit();
  }
}