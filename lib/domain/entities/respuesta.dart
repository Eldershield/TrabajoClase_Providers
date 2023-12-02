import 'dart:convert';

Respuesta respuestaFromJson(String str) => Respuesta.fromJson(json.decode(str));

String respuestaToJson(Respuesta data) => json.encode(data.toJson());

class Respuesta {
    String answer;
    bool forced;
    String image;

    Respuesta({
        required this.answer,
        required this.forced,
        required this.image,
    });

    factory Respuesta.fromJson(Map<String, dynamic> json) => Respuesta(
        answer: json["answer"],
        forced: json["forced"],
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "answer": answer,
        "forced": forced,
        "image": image,
    };
}