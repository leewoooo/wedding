class AccountTileModel {
  final String relationship;
  final String name;
  final String bankName;
  final String accountNumber;

  AccountTileModel({
    required this.relationship,
    required this.name,
    required this.bankName,
    required this.accountNumber,
  });
}

List<AccountTileModel> groomFamilyInfo = [
  AccountTileModel(
      relationship: '부',
      name: '이필주',
      bankName: '국민',
      accountNumber: '047101-04-146360'),
  AccountTileModel(
    relationship: '모',
    name: '송효숙',
    bankName: '신한',
    accountNumber: '110-354-109855',
  ),
  AccountTileModel(
    relationship: '♥',
    name: '이우길',
    bankName: '토스',
    accountNumber: '1000-0244-5710',
  ),
];

List<AccountTileModel> brideFamilyInfo = [
  AccountTileModel(
      relationship: '부',
      name: '임동철',
      bankName: '은행',
      accountNumber: 'xxxxxx-xx-xxxxxx'),
  AccountTileModel(
    relationship: '모',
    name: '오주지',
    bankName: '은행',
    accountNumber: 'xxx-xxx-xxxxxx',
  ),
  AccountTileModel(
    relationship: '♥',
    name: '임은하',
    bankName: '국민',
    accountNumber: '457002-01-388327',
  ),
];
