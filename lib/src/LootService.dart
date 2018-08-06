import 'package:angular/di.dart';

import "Loot.dart";
import "dart:async";

@Injectable()
class LootService {
  final loots = <Loot>[
    new Loot(10, 'Bottle'),
    new Loot(11, 'Fork'),
    new Loot(12, 'Spoon'),
    new Loot(13, 'Paper'),
    new Loot(14, 'Rock'),
    new Loot(15, 'Scissors'),
    new Loot(16, 'Knife'),
    new Loot(17, 'Coin with clover'),
    new Loot(18, 'Coin with cat'),
    new Loot(19, 'Coin with hole'),
    new Loot(20, 'Chocolate coin')
  ];

  Future<List<Loot>> getAll() async => loots;
}