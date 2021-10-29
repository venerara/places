class Sight {
  final String name; //название достопримечательности
  final double lat; //координата места
  final double lon; //координата места
  final String url; //путь до фотографии в интернете
  final String details; //описание достопримечательности
  final String type; //тип достопримечательности

  Sight({
    required this.name,
    required this.lat,
    required this.lon,
    required this.url,
    required this.details,
    required this.type,
  });
}
