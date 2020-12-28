import 'package:flutter/material.dart';

class Result {
  final int id;
  final String name;
  final String airDate;
  final String episode;
  final List<String> characters;
  final String url;
  final DateTime created;

  Result({
    @required this.id,
    @required this.name,
    @required this.airDate,
    @required this.episode,
    @required this.characters,
    @required this.url,
    @required this.created,
  });
}
