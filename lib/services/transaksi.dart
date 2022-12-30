import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:projectcarwash/config.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TransaksiServis {
  static tambah({
    required name,
    required plat,
    required hp,
    required merk,
    required tipe,
    required total,
  }) async {
    var prefs = await SharedPreferences.getInstance();
    var token = prefs.getString('token');

    var res = await http.post(
      baseUrl('api/transaksi/insert'),
      body: json.encode({
        "name": name,
        "plate_number": plat,
        "no_hp": hp,
        "merk_model": merk,
        "wash_type_id": tipe,
        "total": total,
      }),
      headers: {
        'Accept': "application/json",
        'Content-Type': "application/json",
        'Access-Control-Allow-Origin': "*",
        'Authorization': "Bearer $token",
      },
    );
    print(res.body);
    var data = json.decode(res.body);

    return data;
  }

  static getDetailPencucian(type) async {
    var res = await http.get(baseUrl('pencucian/detail_pencucian?type=$type'));
    var data = json.decode(res.body);

    return data;
  }
}
