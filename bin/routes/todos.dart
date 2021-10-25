import 'dart:async';
import 'dart:convert';
import 'package:shelf_router/shelf_router.dart';
import 'package:shelf/shelf.dart';

import '../classes/todo.dart' as Model;
import '../core/mongo.dart';
import '../utils/json.dart';

List todos = [
  Model.Todo(title: "Code a Rest API in Dart", completed: 1),
  Model.Todo(title: "Sleep", completed: 1),
  Model.Todo(title: "Eat", completed: 1)
];

class Todo {
  Handler get handler {
    final router = Router();

    router.get("/", (Request req) {
      return Response.ok(Json.stringify(todos));
    });

    router.post("/", (Request req) async {
      var payload = await req.readAsString();
      //payload = json.decode(payload);
      return Response.ok(payload);
    });
    return router;
  }
}
