// To parse this JSON data, do
//
//     final episodesPageModel = episodesPageModelFromJson(jsonString);

import 'package:ejmplo_getit/domain/entities/episodes_page.dart';
import 'package:ejmplo_getit/domain/entities/info.dart';
import 'package:ejmplo_getit/domain/entities/result.dart';
import 'package:meta/meta.dart';
import 'dart:convert';

EpisodesPageModel episodesPageModelFromJson(String str) =>
    EpisodesPageModel.fromJson(json.decode(str));

String episodesPageModelToJson(EpisodesPageModel data) =>
    json.encode(data.toJson());

class EpisodesPageModel extends EpisodesPage {
  EpisodesPageModel({
    @required this.info,
    @required this.results,
  });

  final InfoModel info;
  final List<ResultModel> results;

  factory EpisodesPageModel.fromJson(Map<String, dynamic> json) =>
      EpisodesPageModel(
        info: InfoModel.fromJson(json["info"]),
        results: List<ResultModel>.from(
            json["results"].map((x) => ResultModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "info": info.toJson(),
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
      };
}

class InfoModel extends Info {
  InfoModel({
    @required this.count,
    @required this.pages,
    @required this.next,
    @required this.prev,
  });

  final int count;
  final int pages;
  final String next;
  final dynamic prev;

  factory InfoModel.fromJson(Map<String, dynamic> json) => InfoModel(
        count: json["count"],
        pages: json["pages"],
        next: json["next"],
        prev: json["prev"],
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "pages": pages,
        "next": next,
        "prev": prev,
      };
}

class ResultModel extends Result {
  ResultModel({
    @required this.id,
    @required this.name,
    @required this.airDate,
    @required this.episode,
    @required this.characters,
    @required this.url,
    @required this.created,
  });

  final int id;
  final String name;
  final String airDate;
  final String episode;
  final List<String> characters;
  final String url;
  final DateTime created;

  factory ResultModel.fromJson(Map<String, dynamic> json) => ResultModel(
        id: json["id"],
        name: json["name"],
        airDate: json["air_date"],
        episode: json["episode"],
        characters: List<String>.from(json["characters"].map((x) => x)),
        url: json["url"],
        created: DateTime.parse(json["created"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "air_date": airDate,
        "episode": episode,
        "characters": List<dynamic>.from(characters.map((x) => x)),
        "url": url,
        "created": created.toIso8601String(),
      };
}
