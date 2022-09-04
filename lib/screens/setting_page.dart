import 'package:flutter/material.dart';

import '../widgets.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool lock = false;
  bool finger = false;
  bool password = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings Ui", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.red,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: ListView(
          children: [
            titleText("Common"),
            commonListTile(Icons.language_outlined, "Languages", "English"),
            commonListTile(Icons.cloud_outlined, "Environment", "Production"),
            titleText("Account"),
            accountListTile(Icons.phone, "Phone Number"),
            accountListTile(Icons.email, "Email"),
            accountListTile(Icons.login_rounded, "Sign out"),
            titleText("Security"),
            securityListTile(
                Icons.phonelink_lock, "Lock App in Background", "lock"),
            securityListTile(Icons.fingerprint, "Use Fingerprint", "finger"),
            securityListTile(Icons.lock, "Change Password", "password"),
            titleText("Misc"),
            accountListTile(Icons.file_present, "Terms of Service"),
            accountListTile(Icons.collections_bookmark, "Open Source Licence"),
          ],
        ),
      ),
    );
  }

  securityListTile(icon, String title, String value) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      trailing: Switch(
          activeColor: Colors.red,
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
    );
  }
}
