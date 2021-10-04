class Tags {
  List<String> tags = [];

  addTag(String tag) {
    tags.add(tag);
  }

  getTags(int i) {
    return tags.elementAt(i);
  }

  getTagSize() {
    return tags.length;
  }
}
