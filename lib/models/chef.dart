import 'package:flutter/material.dart';

class Chef {
  final String? name;
  final String? description;
  final String? img;

  const Chef({
    @required this.name,
    this.description,
    this.img,
  });
}
