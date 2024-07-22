class ContactAddressModel {
  final String division;
  final String name;
  final String phone;

  ContactAddressModel({
    required this.division,
    required this.name,
    required this.phone,
  });
}

List<ContactAddressModel> groomContactAddresses = [
  ContactAddressModel(division: '신랑 아버지', name: '이필주', phone: '01056872285'),
  ContactAddressModel(division: '신랑 어머니', name: '송효숙', phone: '01076872285'),
  ContactAddressModel(division: '신랑', name: '이우길', phone: '01066832285'),
];

List<ContactAddressModel> brideContactAddresses = [
  ContactAddressModel(division: '신부 아버지', name: '임동철', phone: '01052440776'),
  ContactAddressModel(division: '신부 어머니', name: '오주지', phone: '01037340776'),
  ContactAddressModel(division: '신부', name: '임은하', phone: '01063280776'),
];
