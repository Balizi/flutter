
import 'package:flutter/material.dart';

class Brief{
  String title;
  String description;
  String imageUrl;
  int year;

  Brief({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.year
  });
}

List<Brief> briefList = [
  Brief(
    title: 'title1',
    description: 'The world is constantly changing, and it can be difficult to keep up with all of the new developments and advancements. From technological innovations to social and political changes, there is always something happening that can impact our lives in significant ways. ',
    imageUrl: 'assets/images/tech1.png',
    year:12
  ),
  Brief(
    title: 'title2',
    description: 'The world is constantly changing, and it can be difficult to keep up with all of the new developments and advancements. From technological innovations to social and political changes, there is always something happening that can impact our lives in significant ways. ',
    imageUrl: 'assets/images/tech1.png',
    year:12
  ),
  Brief(
    title: 'title"',
    description: 'descriptionThe world is constantly changing, and it can be difficult to keep up with all of the new developments and advancements. From technological innovations to social and political changes, there is always something happening that can impact our lives in significant ways. ',
    imageUrl: 'assets/images/tech1.png',
    year:12
  ),
  Brief(
    title: 'title4',
    description: 'The world is constantly changing, and it can be difficult to keep up with all of the new developments and advancements. From technological innovations to social and political changes, there is always something happening that can impact our lives in significant ways. ',
    imageUrl: 'assets/images/tech1.png',
    year:12
  ),
];
