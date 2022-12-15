import 'package:get/get.dart';
import 'package:flutter/material.dart';

errorDialog(String message){
  Get.dialog(
    AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
       content: Text(
        message,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.black,
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Get.back(),
          child: Text(
            'Tutup',
          ),
        )
      ],
    ),
  );
}