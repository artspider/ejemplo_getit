import 'package:ejmplo_getit/domain/entities/info.dart';
import 'package:ejmplo_getit/domain/entities/result.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class EpisodesPage {
  final Info info;
  final List<Result> results;

  EpisodesPage({@required this.info, @required this.results});
}
