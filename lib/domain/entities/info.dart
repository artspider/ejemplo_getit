import 'package:flutter/material.dart';

class Info {
  final int count;
  final int pages;
  final String next;
  final dynamic prev;

  Info({
    @required this.count,
    @required this.pages,
    @required this.next,
    @required this.prev,
  });
}
