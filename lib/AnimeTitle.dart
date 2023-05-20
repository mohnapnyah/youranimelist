import 'package:flutter/material.dart';
// Это класс самого аниме они буду записываться в карточки
class Anime {
  final String title;
  final String posterUrl;

  Anime({required this.title, required this.posterUrl});
}
// Это листы, я хз как в дарте туда сюда делать поэтому мы делаем их здесь и отправляем на мейнпейдж, либо создаем там спроси у очкарика гения архитектуры
List<Anime> summerAnimeList = [
  Anime(title: 'Название аниме 1', posterUrl: 'URL постера 1'),
  Anime(title: 'Название аниме 2', posterUrl: 'URL постера 2'),
  // Добавьте остальные объекты аниме в список
];