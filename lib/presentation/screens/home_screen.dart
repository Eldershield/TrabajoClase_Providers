import 'package:flutter/material.dart';
import 'package:flutter_api_yesorno/providers/respuesta_provider.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    final respuestaProvider = context.watch<RespuestaProvider>();
    respuestaProvider.loadRespuesta();
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(respuestaProvider.mensaje.answer),
        Image.network(respuestaProvider.mensaje.image)
      ],
    ));
  }
}
