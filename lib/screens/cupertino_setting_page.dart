import 'package:flutter/cupertino.dart';

import '../widgets.dart';

class CupertinoSettingPage extends StatefulWidget {
  const CupertinoSettingPage({Key? key}) : super(key: key);

  @override
  State<CupertinoSettingPage> createState() => _CupertinoSettingPageState();
}

class _CupertinoSettingPageState extends State<CupertinoSettingPage> {
  bool lock = false;
  bool finger = false;
  bool password = false;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemRed,
        middle: Text(
          "Setting Ui",
          style: TextStyle(
            color: CupertinoColors.white,
          ),
        ),
      ),
      child: Container(
        color: CupertinoColors.systemIndigo.withOpacity(0.1),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              titleText("Common"),
              commonContainer(CupertinoIcons.globe, "Languages", "English"),
              commonContainer(
                  CupertinoIcons.cloud, "Environment", "Production"),
              titleText("Account"),
              commonContainer(CupertinoIcons.phone, "Phone Number", ""),
              commonContainer(CupertinoIcons.envelope, "Email", ""),
              commonContainer(
                  CupertinoIcons.square_arrow_right, "Sign out", ""),
              titleText("Security"),
              securityContainer(
                  CupertinoIcons.lock_circle, "Lock App in Background", "lock"),
              securityContainer(
                  CupertinoIcons.lock_shield, "Use Fingerprint", "finger"),
              securityContainer(
                  CupertinoIcons.lock, "Change Password", "password"),
              titleText("Misc"),
              commonContainer(CupertinoIcons.doc_text, "Terms of Service", ""),
              commonContainer(
                  CupertinoIcons.book_circle, "Open Source Licence", ""),
            ],
          ),
        ),
      ),
    );
  }

  securityContainer(icon, String title, String value) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      color: CupertinoColors.white,
      child: Row(
        children: [
          Icon(icon, color: CupertinoColors.inactiveGray),
          const SizedBox(width: 15),
          Text(
            title,
            style: const TextStyle(fontSize: 18),
          ),
          const Spacer(),
          CupertinoSwitch(
              activeColor: CupertinoColors.systemRed,
              value: value == "lock"
                  ? lock
                  : value == "finger"
                      ? finger
                      : password,
              onChanged: (val) {
                setState(() {
                  (value == "lock")
                      ? lock = val
                      : value == "finger"
                          ? finger = val
                          : password = val;
                });
              }),
        ],
      ),
    );
  }
}
