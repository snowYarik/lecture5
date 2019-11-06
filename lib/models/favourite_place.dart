import 'dart:io';

import 'package:flutter/material.dart';

class FavouritePlace {
  const FavouritePlace({
    @required this.image,
    @required this.name,
    @required this.description,
  });

  final File image;
  final String name;
  final String description;

  
}
