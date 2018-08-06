import 'package:angular/angular.dart';
import 'dart:async';
import 'package:angular_components/angular_components.dart';
import 'components/loot_component.dart';
import 'src/Loot.dart';
import 'src/LootService.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  styleUrls : const ['app_component.css'],
  directives: const [materialDirectives, CORE_DIRECTIVES, LootComponent],
  providers: const [LootService],
)
class AppComponent implements OnInit {
  final LootService lootService;
  Loot selected;
  final title = "Your backpack";
  List<Loot> loots;

  void onSelect(Loot loot) => selected = loot;
  Future _getLoots() async => loots = await lootService.getAll();

  void ngOnInit() => _getLoots();
  AppComponent(this.lootService);
}
