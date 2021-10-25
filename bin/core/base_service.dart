import 'package:shelf_router/shelf_router.dart';
import 'package:shelf/shelf.dart';

import '../routes/todos.dart';
import '../routes/users.dart';

class Service {
  Handler get handler {
    final router = Router();

    // Todos
    router.mount('/api/todos/', Todo().handler);
    router.mount('/api/users/', User().handler);

    return router;
  }
}
