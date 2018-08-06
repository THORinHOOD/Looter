import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

import '../../src/LootService.dart';
import '../loot_list_component/loot_list_component.dart';

@Component
(
  selector : 'app',
  template :'''<h1>HEH</h1>
               <loot-list/>''',
  directives: const [materialDirectives, CORE_DIRECTIVES],
)
class AppComponent {

}