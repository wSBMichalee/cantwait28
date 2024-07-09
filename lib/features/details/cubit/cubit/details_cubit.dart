import 'package:bloc/bloc.dart';
import 'package:cantwait28/models/item_model.dart';
import 'package:cantwait28/repositories/itmes_repository.dart';
import 'package:meta/meta.dart';

part 'details_state.dart';

class DetailsCubit extends Cubit<DetailsState> {
  DetailsCubit(this._itemsRepository) : super(DetailsState(itemModel: null));

  final ItemsRepository _itemsRepository;

  Future<void> getItemWithId(String id) async {
    final ItemModel = await _itemsRepository.get(id: id);
    emit(DetailsState(itemModel: ItemModel));
  }
}
