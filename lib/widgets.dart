import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

titleText(String name) {
  return Padding(
    padding: Platform.isAndroid
        ? const EdgeInsets.only(left: 16, bottom: 10, top: 10)
        : const EdgeInsets.only(left: 16, top: 18, bottom: 7),
    child: Text(
      name,
      style: TextStyle(
        color: Platform.isAndroid ? Colors.red : CupertinoColors.systemGrey2,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    ),
  );
}

commonListTile(icon, String title, String subTitle) {
  return ListTile(
    onTap: () {},
    leading: Icon(icon),
    title: Text(title),
    subtitle: Text(subTitle),
  );
}

accountListTile(icon, String title) {
  return ListTile(
    onTap: () {},
    leading: Icon(icon),
    title: Text(title),
  );
}

commonContainer(icon, String title, String subTitle) {
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
        (subTitle != "")
            ? Text(
                subTitle,
                style: const TextStyle(
                    color: CupertinoColors.systemGrey2, fontSize: 17),
              )
            : Container(),
        const SizedBox(width: 5),
        const Icon(CupertinoIcons.right_chevron,
            color: CupertinoColors.systemGrey2),
      ],
    ),
  );
}
