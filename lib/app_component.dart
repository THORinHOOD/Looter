import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'components/loot_component.dart';
import 'src/Loot.dart';

final someLoots = <Loot>[
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

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  styleUrls : const ['app_component.css'],
  directives: const [materialDirectives, CORE_DIRECTIVES, LootComponent],
)
class AppComponent {
  Loot selected;
  final title = "Your backpack";
  List<Loot> loots = someLoots;

  void onSelect(Loot loot) => selected = loot;
}
