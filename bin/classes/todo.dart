// ignore: file_names

class Todo {
  String? id = "0";
  String? title;
  int? completed;
  Todo({this.title, this.completed});

  String toString() {
    return '{"id": $id,"title":$title, "completed": $completed}';
  }
}
