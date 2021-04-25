import 'package:bloc/bloc.dart';
import 'package:bwa_foodmarket/models/models.dart';
import 'package:bwa_foodmarket/services/services.dart';
import 'package:equatable/equatable.dart';

part 'transaction_state.dart';

class TransactionCubit extends Cubit<TransactionState> {
  TransactionCubit() : super(TransactionInitial());

  Future<void> getTransactions() async {
    ApiReturnValue<List<Transaction>> result =
        await TransactionServices.getTransaction();

    if (result.value != null) {
      emit(TransactionLoaded(transaction: result.value));
    } else {
      emit(TransactionLoadingFailed(message: result.message));
    }
  }

  Future<bool> submitTransaction(Transaction transaction) async {
    ApiReturnValue<Transaction> result =
        await TransactionServices.submitTransaction(transaction);

    if (result.value != null) {
      emit(TransactionLoaded(
          transaction:
              (state as TransactionLoaded).transaction + [result.value]));
      return true;
    } else {
      return false;
    }
  }
}
