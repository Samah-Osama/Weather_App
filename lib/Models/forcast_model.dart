// class ForcastModel {
//   final DateTime date;
//   final num maxTemp;
//   final num minTemp;
//   final String image;

//   ForcastModel(
//       {required this.date,
//       required this.maxTemp,
//       required this.minTemp,
//       required this.image});

//   factory ForcastModel.fromJson(json) {
//     return ForcastModel(
//         date: DateTime.parse(json["forecast"]["forecastday"][int]['"date"']),
//         maxTemp: json["forecast"]["forecastday"][int]["day"]["maxtemp_c"],
//         minTemp: json["forecast"]["forecastday"][int]["day"]["mintemp_c"],
//         image: json["forecast"]["forecastday"][int]["day"]["condition"]
//             ["icon"]);
//   }
// }
