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
    relationship: '♥',
    name: '이우길',
    bankName: '토스',
    accountNumber: '1000-0244-5710',
  ),
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
];

List<AccountTileModel> brideFamilyInfo = [
  AccountTileModel(
    relationship: '♥',
    name: '임은하',
    bankName: '국민',
    accountNumber: '457002-01-388327',
  ),
  AccountTileModel(
      relationship: '부',
      name: '임동철',
      bankName: '우리',
      accountNumber: '1002-905-256550'),
  AccountTileModel(
    relationship: '모',
    name: '오주지',
    bankName: '국민',
    accountNumber: '438902-01-154947',
  ),
];
