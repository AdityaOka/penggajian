import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

import '../model/model.dart';
import '../util/size_config.dart';

String currencyFormat(int number){
  NumberFormat currencyFormater = NumberFormat.currency(
    locale: 'id',
    symbol: 'Rp',
    decimalDigits: 2,
  );
  return currencyFormater.format(number);
}

Widget pajakCard(Pajak pajak){
  

  return Container(
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black),
      borderRadius: BorderRadius.circular(10),
    ),
    padding: EdgeInsets.symmetric(
      vertical: SizeConfig.sizeVertical(2),
      horizontal: SizeConfig.sizeHorizontal(3),
    ),
    margin: EdgeInsets.symmetric(
      vertical: SizeConfig.sizeVertical(2),
      horizontal: SizeConfig.sizeHorizontal(2),
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${pajak.nama}',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: SizeConfig.sizeVertical(2),
        ),
        Text(
          "Warganegara ${pajak.namaNegara}",
        ),
        SizedBox(
          height: SizeConfig.sizeVertical(1),
        ),
        if(pajak.kodeNegara == "ID")...[
          if(pajak.statusPernikahan == "Menikah")...[
            Text(
              'Status Pernikahan : ${pajak.statusPernikahan}'
              "${(pajak.statusAnak == true) ? " dan memiliki anak" : " dan belum Memiliki Anak"}"
            )
          ]else ...[
            Text("Status Pernikahan : ${pajak.statusPernikahan}")
          ],
        ]else ...[
          Text('Status Pernikahan : ${pajak.statusPernikahan}'),
        ],
        SizedBox(
          height: SizeConfig.sizeVertical(1),
        ),
        Text(
          "Pengahasilan per bulan : "
          "${currencyFormat(pajak.brutoBulan ?? 0)}"
        ),
        SizedBox(
          height: SizeConfig.sizeVertical(1),
        ),
        Text(
          "Netto per bulan : "
          "${currencyFormat(pajak.nettoBulan ?? 0)}",
        ),
        SizedBox(
          height: SizeConfig.sizeVertical(1),
        ),
        if(pajak.kodeNegara == "VN")...[
          Text(
            "Asuransi per bulan : "
            "${currencyFormat(pajak.asuransiBulan ?? 0)}"
          ),
          SizedBox(
            height: SizeConfig.sizeVertical(1),
          ),
        ],
        Text(
          'Pajak bulanan : '
          "${currencyFormat(pajak.pajakBulan ?? 0)}"
        )
      ],
    ),
  );
}