import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import '../../src/Loot.dart';

@Component
(
  selector:'my-loot',
  directives: const [materialDirectives, CORE_DIRECTIVES],
  templateUrl: 'loot_component.html',
)
class LootComponent {
  @Input()
  Loot loot;
}