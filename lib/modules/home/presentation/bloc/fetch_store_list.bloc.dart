import 'package:flutter_modular/flutter_modular.dart';
import 'package:mokolo/modules/core/presentation/stream_builder_all.dart';
import 'package:mokolo/modules/home/domain/entities/store.entity.dart';
import 'package:mokolo/modules/home/domain/usecases/store_fetchlist.usecase.dart';

import '../../../core/presentation/blocs/base_bloc.dart';
import '../../../core/presentation/either_stream_binder.dart';

class FetchStoreListBloc extends BaseBloc {
  late final _streamBinder = EitherStreamBinder<List<StoreEntity>>();

  late final StoreFetchListUseCase _useCase = Modular.get();

  Stream<ActionState<List<StoreEntity>>> get outStream =>
      _streamBinder.outStream;

  FetchStoreListBloc() {
    loadData();
  }

  List<StoreEntity>? get loadedValue => _streamBinder.loadedValue;
  Future<void> loadData() async {
    return _streamBinder.callUseCase(() => _useCase.call(null),
        forceLoading: true);
  }
}
