class Spell {
  String name; // Название заклинания
  int level; // Уровень заклинания
  int castingTime; // Время накладывания
  int range; // Дальность
  int duration; // Длительность
  String description; // Описание
  String school;
  List<String> components;
  List<String> classes; // Классы
  String source; // Источник

  Spell({
    required this.name,
    required this.level,
    required this.description,
    required this.school,
    required this.components,
    this.castingTime = 0,
    this.classes = const [],
    this.duration = 0,
    this.range = 0,
    this.source = '',
  });
}

Spell acidSplash = Spell(
  name: 'Брызги кислоты',
  level: 0,
  castingTime: 1,
  range: 60,
  duration: 0,
  description:
      'Вы выбираете одну или двух существ, которые находятся в пределах дистанции атаки и видите друг друга. Цели должны пройти спасбросок Ловкости, иначе получат 1к6 урона кислотой.',
  school: 'conjuration',
  components: ['V', 'S'],
  classes: ['wizard', 'sorcerer', 'artificer'],
  source: 'PHB',
);

Spell bladeWard = Spell(
  name: 'Защита от оружия',
  level: 0,
  castingTime: 1,
  range: 0,
  duration: 1,
  description:
      'Вы протягиваете руку и рисуете в воздухе ограждающий знак. Вы получаете до конца своего следующего хода сопротивление дробящему, колющему и рубящему урону, причиненному атаками оружием.',
  school: 'abjuration',
  components: ['V', 'S'],
  classes: ['wizard', 'sorcerer', 'bard', 'warlock'],
  source: 'PHB',
);

Spell chillTouch = Spell(
  name: 'Ледяное прикосновение',
  level: 0,
  castingTime: 1,
  range: 120,
  duration: 0,
  description:
      'Вы создаете скелетную руку, которая нападает на одно существо, находящееся в пределах дистанции атаки. Цель получает 1к8 урона нежити и не может восстановить хиты до конца следующего хода.',
  school: 'necromancy',
  components: ['V', 'S'],
  classes: ['wizard', 'sorcerer', 'warlock'],
  source: 'PHB',
);
