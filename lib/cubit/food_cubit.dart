import 'package:bloc/bloc.dart';
import 'package:bwa_foodmarket/models/models.dart';
import 'package:bwa_foodmarket/services/services.dart';
import 'package:equatable/equatable.dart';

part 'food_state.dart';

class FoodCubit extends Cubit<FoodState> {
  FoodCubit() : super(FoodInitial());

  Future<void> getFood() async {
    ApiReturnValue<List<Food>> result = await FoodServices.getFoods();

    if (result.value != null) {
      emit(FoodLoaded(food: result.value));
    } else {
      emit(FoodLoadingFailed(message: result.message));
    }
  }
}
