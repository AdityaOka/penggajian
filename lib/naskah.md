Tolong buatkan sebuah API dengan method GET yang menampilkan informasi penggajian user
untuk schema API sebagai berikut :

Status kode 200
```
{
    "status": "status request (ok/failed) String",
    "pajak":[
        {
            "nama":"String",
            "kode_negara":"String ID/VN",
            "nama_negara":"String",
            "kode_pernikahan": "String ID(TK/K0/K2) VN(TK/K)",
            "status_pernikahan": "String Menikah/Belum Menikah",
            "status_anak": "bool",
            "bruto_bulan" : "int",
            "netto_bulan": "int",
            "pajak_bulan": "int"
        }
    ]
}
```

Status kode selain 200

```
{
    "status": "String status request (ok/failed)",
    "message" : "String Error message"
}
```

Keterangan API
Kode pernikahan ID 
* TK = Belum Menikah
* KO = Menikah Belum Memiliki Anak
* K1 = Menikah Memiliki Anak

Kode pernikahan VN
* TK = Belum Menikah
* K = Menikah