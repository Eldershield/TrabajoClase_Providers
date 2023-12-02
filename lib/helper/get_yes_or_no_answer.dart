import 'package:flutter_api_yesorno/domain/entities/respuesta.dart';
import 'package:dio/dio.dart';

class GetYesOrNoAnswer{
  final String url = "https://yesno.wtf/api";
  final _dio = Dio();

  Future<Respuesta> getRespuesta() async{
    final response = await _dio.get(url);
    final respuestaYesOrNO = Respuesta.fromJson(response.data);
    return respuestaYesOrNO;
  }
}