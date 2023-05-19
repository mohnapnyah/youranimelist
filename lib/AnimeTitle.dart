import 'package:flutter/material.dart';

class Anime {
  final String title;
  final String posterUrl;

  Anime({required this.title, required this.posterUrl});
}
List<Anime> summerAnimeList = [
  Anime(title: 'Название аниме 1', posterUrl: 'URL постера 1'),
  Anime(title: 'Название аниме 2', posterUrl: 'URL постера 2'),
  // Добавьте остальные объекты аниме в список
];