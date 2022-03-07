import 'package:flutter/material.dart';
import 'package:kantor_tukan/presentation/orders/widgets/list_point/decorator.dart';
import 'package:kantor_tukan/presentation/orders/widgets/list_point/title.dart';

import 'description.dart';

class ListPoint extends StatelessWidget {
  final String title;
  final String description;

  const ListPoint({Key? key, required this.title, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var listPoint = _buildListPoint();
    return ListPointDecorator().call(context, listPoint);
  }

  Row _buildListPoint() {
    return Row(
      children: [
        ListPointTitle().call(title),
        ListPointDescription().call(description),
      ],
    );
  }
}
