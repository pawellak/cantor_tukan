import 'package:cloud_firestore/cloud_firestore.dart' as fs;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kantor_tukan/domain/core/value_objects.dart';
import 'package:kantor_tukan/domain/transaction/transaction.dart';
import 'package:kantor_tukan/domain/transaction/value_object.dart';
import 'package:kantor_tukan/domain/core/enums.dart';

part 'transaction_dtos.freezed.dart';

part 'transaction_dtos.g.dart';

@JsonSerializable()
@freezed
abstract class TransactionDto with _$TransactionDto {
  const TransactionDto._();

  const factory TransactionDto({
    String? uid,
    required String currency,
    required String transactionType,
    required String transactionStatus,
    required String dateAcceptation,
    required String dateReservation,
    required double currencyValue,
    required double currencyBill,
    required double priceBuy,
    required double priceSell,
  }) = _TransactionDto;

  factory TransactionDto.fromDomain(Transaction transaction) {
    return TransactionDto(
        uid: transaction.uId.getOrCrash(),
        currency: transaction.currency.getOrCrash().toShortString(),
        transactionType: transaction.transactionType.getOrCrash().toShortString(),
        transactionStatus: transaction.transactionStatus.getOrCrash().toShortString(),
        dateAcceptation: transaction.dateAcceptation.getOrCrash().toIso8601String(),
        dateReservation: transaction.dateReservation.getOrCrash().toIso8601String(),
        currencyValue: transaction.currencyValue.getOrCrash(),
        currencyBill: transaction.currencyBill.getOrCrash(),
        priceBuy: transaction.priceBuy.getOrCrash(),
        priceSell: transaction.priceSell.getOrCrash());
  }

  Transaction toDomain() {
    return Transaction(
      uId: uid == null ? UniqueId() : UniqueId.fromUniqueString(uid!),
      currency: Currency.fromString(currency),
      transactionType: TransactionType.fromString(transactionType),
      transactionStatus: TransactionStatus.fromString(transactionStatus),
      dateAcceptation: DateCantor.fromIso8601String(dateAcceptation),
      dateReservation: DateCantor.fromIso8601String(dateReservation),
      currencyValue: CurrencyValue(currencyValue),
      currencyBill: CurrencyValue(currencyBill),
      priceBuy: CurrencyPrice(priceBuy),
      priceSell: CurrencyPrice(priceSell),
    );
  }

  factory TransactionDto.fromFirestore(fs.DocumentSnapshot doc) {
    final docData = doc.data() as Map<String, dynamic>;
    return TransactionDto.fromJson(docData).copyWith(uid: doc.id);
  }

  /// Connect the generated [_$TransactionDtoFromJson] function to the `fromJson`
  /// factory.
  factory TransactionDto.fromJson(Map<String, dynamic> json) => _$TransactionDtoFromJson(json);

  /// Connect the generated [_$TransactionDtoToJson] function to the `toJson` method.
  @override
  Map<String, dynamic> toJson() => _$TransactionDtoToJson(this);
}