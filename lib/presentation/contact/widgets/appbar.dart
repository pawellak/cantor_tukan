import 'package:flutter/material.dart';
import 'package:kantor_tukan/presentation/about_me/constants.dart';
import 'package:kantor_tukan/presentation/contact/constants.dart';
import 'package:kantor_tukan/presentation/information/constants.dart';

class ContactAppBar extends StatelessWidget with PreferredSizeWidget {
  const ContactAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return _buildAppBar();
  }

  AppBar _buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: const Text(ContactConstants.appBar),
    );
  }
}
