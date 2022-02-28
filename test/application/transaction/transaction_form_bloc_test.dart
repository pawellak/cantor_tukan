import 'package:flutter_test/flutter_test.dart';
import 'package:kantor_tukan/application/transaction/transaction_form/transaction_form_bloc.dart';
import 'package:kantor_tukan/domain/transaction/i_transaction_repository.dart';
import 'package:mockito/annotations.dart';

import 'transaction_form_bloc_test.mocks.dart';

@GenerateMocks([ITransactionRepository])
void main() {
  late MockITransactionRepository mockTransactionRepository;
  late TransactionFormBloc transactionFormBloc;

  setUp(() {
    mockTransactionRepository = MockITransactionRepository();
    transactionFormBloc = TransactionFormBloc(mockTransactionRepository);
  });

  group('check state', () {

  });
}
