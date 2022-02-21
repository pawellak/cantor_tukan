// import 'package:flutter/material.dart';
//
// class CurrencyAppBar extends StatelessWidget with PreferredSizeWidget {
//   const CurrencyAppBar({Key? key}) : super(key: key);
//
//   @override
//   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
//
//   @override
//   Widget build(BuildContext context) {
//     return _buildAppBar();
//   }
//
//   FutureBuilder<String> _buildAppBar() {
//     return FutureBuilder(
//       future:
//       builder: (_, futureCurrencyUpdate) {
//         return PrepareAppBar().build(futureCurrencyUpdate);
//       },
//     );
//   }
// }
