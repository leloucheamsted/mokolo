import 'package:mokolo/modules/core/presentation/blocs/base_bloc.dart';
import 'package:rxdart/rxdart.dart';

class LayoutBloc extends BaseBloc {
  final _currentIndex = BehaviorSubject<int>.seeded(0);

  Stream<int> get currentIndexStream => _currentIndex.stream;
  Function(int) get changeIndex => _currentIndex.sink.add;
}
