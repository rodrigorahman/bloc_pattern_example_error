
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/rxdart.dart';

class Bloc1 extends BlocBase {

  var _chatController = BehaviorSubject<String>();

  Stream<String> get outChat => _chatController.stream;
  Sink<String> get inChat => _chatController.sink;

  @override
  void dispose() {
    _chatController.close();
  }


}