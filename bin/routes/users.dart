import 'package:shelf_router/shelf_router.dart';
import 'package:shelf/shelf.dart';
import 'dart:convert';

import '../classes/user.dart' as Model;
import '../utils/json.dart';

List users = [
  Model.User(
      fullname: "Philane Msibi", gender: "M", occupation: "Software Enginner"),
  Model.User(
      fullname: "Nathi Nkosi", gender: "M", occupation: "Front End Developer"),
  Model.User(
      fullname: "Vukile Dinga", gender: "M", occupation: "Project Manager"),
];

class User {
  Handler get handler {
    final router = Router();

    router.get("/", (Request req) {
      return Response.ok(Json.stringify(users));
    });

    return router;
  }
}
