class WorldItem {
  final int id;
  final String team;
  final String group;
  final String flagImage;

  WorldItem({
    required this.id,
    required this.team,
    required this.group,
    required this.flagImage
  });

  factory WorldItem.fromJson(Map<String, dynamic> json) {
    return WorldItem(
      id: json['id'],
      team: json['team'],
      group: json['group'],
      flagImage: json['flagImage'],
    );
  }

  WorldItem.fromJson2(Map<String, dynamic> json)
      : id = json['id'],
        team = json['team'],
        group = json['group'],
        flagImage = json['flagImage'];
}