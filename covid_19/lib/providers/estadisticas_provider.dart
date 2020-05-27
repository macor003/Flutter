import 'package:http/http.dart' as http;

import 'dart:convert';

import 'package:covid_19/models/estadisticas_model.dart';

class EstadisticasProvider {
  String _url = 'api.thevirustracker.com';

  Future<List<Estadistica>> getEstadisticas(String pais) async {
    final url = Uri.https(_url, 'free-api',{'countryTotal':'$pais'});

    final resp = await http.get(url);
    final decodedData = json.decode(resp.body);

    //print(decodedData['countrydata']);

    final estadisticas =
        new Estadisticas.fromJsonList(decodedData['countrydata']);

    return estadisticas.items;
  }
}
