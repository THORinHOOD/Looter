class Loot {
  int _id;
  int _count;
  String _name;

  getID() => _id;
  getName() => _name;
  getCount() => _count;

  addMore() {
    _count++;
  }

  Loot(id, name) {
    _id = id;
    _name = name;
    _count = 1;
  }
}