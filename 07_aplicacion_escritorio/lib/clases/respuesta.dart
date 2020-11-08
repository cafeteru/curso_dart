import 'persona.dart';
import 'web.dart';

class Respuesta {
  Respuesta({
    this.page,
    this.perPage,
    this.total,
    this.totalPages,
    this.personas,
    this.web,
  });

  int page;
  int perPage;
  int total;
  int totalPages;
  List<Persona> personas;
  Web web;

  factory Respuesta.fromJson(Map<String, dynamic> json) => Respuesta(
        page: json['page'],
        perPage: json['per_page'],
        total: json['total'],
        totalPages: json['total_pages'],
        personas:
            List<Persona>.from(json['data'].map((x) => Persona.fromJson(x))),
        web: Web.fromJson(json['ad']),
      );

  Map<String, dynamic> toJson() => {
        'page': page,
        'per_page': perPage,
        'total': total,
        'total_pages': totalPages,
        'data': List<dynamic>.from(personas.map((x) => x.toJson())),
        'ad': web.toJson(),
      };

  @override
  String toString() {
    return 'page: $page, per_page: $perPage';
  }
}
