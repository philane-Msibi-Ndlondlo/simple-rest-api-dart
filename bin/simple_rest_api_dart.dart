import 'package:shelf/shelf_io.dart' as shelf_io;

import 'core/base_service.dart';

void main(List<String> arguments) async {
  final service = Service();

  final server = await shelf_io.serve(service.handler, 'localhost', 7000);
  print('Server start on port: ${server.port}');
}
