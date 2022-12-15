class Pajak{
  String? nama;
  String? kodeNegara;
  String? namaNegara;
  String? kodePernikahan;
  String? statusPernikahan;
  bool? statusAnak;
  int? brutoBulan;
  int? nettoBulan;
  int? pajakBulan;
  int? asuransiBulan;

  Pajak({
    this.nama,
    this.kodeNegara,
    this.namaNegara,
    this.kodePernikahan,
    this.statusPernikahan,
    this.statusAnak,
    this.brutoBulan,
    this.nettoBulan,
    this.pajakBulan,
    this.asuransiBulan,
  });

  Pajak.fromJson(Map<String, dynamic> json){
    nama = json['nama'];
    kodeNegara = json['kode_negara'];
    namaNegara = json['nama_negara'];
    kodePernikahan = json['kode_pernikahan'];
    statusPernikahan = json['status_pernikahan'];
    statusAnak = json['status_anak'];
    brutoBulan = json['bruto_bulan'];
    nettoBulan = json['netto_bulan'];
    pajakBulan = json['pajak_bulan'];
    asuransiBulan = json['asuransi_bulan'];
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nama'] = nama;
    data['kode_negara'] = kodeNegara;
    data['nama_negara'] = namaNegara;
    data['kode_pernikahan'] = kodePernikahan;
    data['status_pernikahan'] = statusPernikahan;
    data['status_anak'] = statusAnak;
    data['bruto_bulan'] = brutoBulan;
    data['netto_bulan'] = nettoBulan;
    data['pajak_bulan'] = pajakBulan;
    data['asuransi_bulan'] = asuransiBulan;
    return data;
  }
}

class PajakModel{
  List<Pajak>? pajak;
  String? status;
  String? message;

  PajakModel({
    this.pajak,
    this.status,
    this.message,
  });

  PajakModel.fromJson(Map<String, dynamic> json){
    pajak = <Pajak>[];
    if(json['pajak'] != null){
      json['pajak'].forEach((v){
        pajak?.add(Pajak.fromJson(v));
      });
    }
    message = json['message'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (pajak != null) {
      data['pajak'] = pajak!.map((v) => v.toJson()).toList();
    }
    data['status'] = status;
    data['message'] = message;
    return data;
  }
}