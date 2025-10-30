import 'app/application_widget.dart';
import 'bootstrap.dart';

Future<void> main() async {
  await bootstrap(() async => ApplicationWidget());
}
