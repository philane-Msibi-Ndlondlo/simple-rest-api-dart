class User {
  String? id = "0";
  String? fullname;
  String? gender;
  String? occupation;

  User({this.fullname, this.gender, this.occupation});

  String toString() {
    return '{"id": $id,"fullname":$fullname, "gender": $gender, "occupation: $occupation}';
  }
}
