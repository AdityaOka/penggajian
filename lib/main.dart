import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'util/size_config.dart';
import 'widget/pajak_card.dart';
import 'widget/error_dialog.dart';
import 'controller/controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Penggajian',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ctrl = Get.put(HomeController());
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Penggajian'),
        centerTitle: true,
      ),
      body: Obx((){
        if(ctrl.isShimmer.value){
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView(
            children: List<Widget>.generate(
              ctrl.listPajak.length, (index){
                return pajakCard(ctrl.listPajak[index]);
              }),
          );
        }
      }),
    );
  }
}