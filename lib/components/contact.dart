import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wedding/components/commons/gap.dart';
import 'package:wedding/components/commons/header_text.dart';
import 'package:wedding/constants/color.dart';
import 'package:wedding/models/account_tile_model.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(32.0),
      child: Column(
        children: [
          const HeaderText(
            text: '마음 전하기',
            color: PRIMARY_COLOR,
          ),
          Gap.h16,
          const _UnderstandingText(),
          Gap.h32,
          _FamilyContact(
            division: '신랑',
            name: '이우길',
            accountInfoList: groomFamilyInfo,
          ),
          Gap.h32,
          _FamilyContact(
            division: '신부',
            name: '임은하',
            accountInfoList: brideFamilyInfo,
          ),
        ],
      ),
    );
  }
}

class _UnderstandingText extends StatelessWidget {
  const _UnderstandingText();

  @override
  Widget build(BuildContext context) {
    const defaultTextStyle = TextStyle(
      color: Colors.black,
    );
    return Column(
      children: [
        const Text(
          '참석이 어려우신 분들을 위해 기재하였습니다.',
          style: defaultTextStyle,
        ),
        Gap.h4,
        const Text(
          '너그러운 마음으로 양해부탁드리겠습니다.',
          style: defaultTextStyle,
        ),
      ],
    );
  }
}

class _FamilyContact extends StatelessWidget {
  final String division;
  final String name;
  final List<AccountTileModel> accountInfoList;

  const _FamilyContact({
    required this.division,
    required this.name,
    required this.accountInfoList,
  });

  @override
  Widget build(BuildContext context) {
    const defaultTextStyle = TextStyle(
      color: Colors.black,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RichText(
              text: TextSpan(
                text: '$division\t\t',
                style: defaultTextStyle.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 10.0,
                  color: PRIMARY_COLOR,
                ),
                children: [
                  TextSpan(
                    text: name,
                    style: defaultTextStyle.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.keyboard_arrow_down_sharp,
            ),
          ],
        ),
        const Divider(
          color: Colors.black,
        ),
        Gap.h8,
        ...accountInfoList.map((it) => _AccountTile.fromModel(model: it)),
      ],
    );
  }
}

class _AccountTile extends StatelessWidget {
  final String relationship;
  final String name;
  final String bankName;
  final String accountNumber;

  const _AccountTile({
    required this.relationship,
    required this.name,
    required this.bankName,
    required this.accountNumber,
  });

  factory _AccountTile.fromModel({required AccountTileModel model}) {
    return _AccountTile(
      relationship: model.relationship,
      name: model.name,
      bankName: model.bankName,
      accountNumber: model.accountNumber,
    );
  }

  @override
  Widget build(BuildContext context) {
    final defaultTextStyle = TextStyle(
      fontSize: MediaQuery.of(context).size.width > 350 ? 14.0 : 12.0,
      color: Colors.black,
    );

    return ListTile(
      contentPadding: EdgeInsets.zero,
      minLeadingWidth: 0,
      leading: CircleAvatar(
        maxRadius: 14.0,
        backgroundColor: GREY_COLOR,
        foregroundColor: GREY_COLOR,
        child: Text(
          relationship,
          style: defaultTextStyle.copyWith(
            color: Colors.white,
          ),
        ),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            name,
            style: defaultTextStyle.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          Gap.w8,
          Text(bankName, style: defaultTextStyle),
          Gap.w8,
          Text(
            accountNumber,
            style: defaultTextStyle,
          ),
        ],
      ),
      trailing: InkWell(
        onTap: () async {
          await Clipboard.setData(ClipboardData(text: accountNumber)).then((_) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                showCloseIcon: true,
                closeIconColor: Colors.white,
                content: Text('계좌번호가 복사되었습니다.'),
              ),
            );
          });
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0),
            border: Border.all(
              color: GREY_COLOR,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
              vertical: 4.0,
            ),
            child: Text(
              '복사',
              style: defaultTextStyle,
            ),
          ),
        ),
      ),
    );
  }
}
