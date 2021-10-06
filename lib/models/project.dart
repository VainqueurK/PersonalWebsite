import 'package:static_website/models/tags.dart';

class Project {
  String title;
  String desc;
  Tags tags;
  List<String> imgs;

  Project(this.title, this.desc, this.tags, this.imgs);
}
