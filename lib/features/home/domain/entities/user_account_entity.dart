import 'package:equatable/equatable.dart';

class UserAccountDataEntity extends Equatable {
  const UserAccountDataEntity({
    required this.id,
    required this.accountBalance,
    required this.card,
  });

  final int id;
  final String accountBalance;
  final List<Card> card;

  @override
  List<Object?> get props => [id, accountBalance, card];
}

class Card extends Equatable {
  const Card({
    required this.id,
    required this.cardName,
    required this.cardMaker,
    required this.cardBalance,
    required this.cardInterest,
    required this.cardInterestRate,
  });

  final int id;
  final String cardName;
  final String cardMaker;
  final String cardBalance;
  final String cardInterest;
  final String cardInterestRate;

  @override
  List<Object?> get props =>
      [id, cardName, cardMaker, cardBalance, cardInterest, cardBalance];
}
