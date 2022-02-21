import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kantor_tukan/presentation/exchange_rate/widgets/list_table.dart';
import 'package:kantor_tukan/presentation/exchange_rate/widgets/list_title.dart';

class ExchangeRateForm extends StatelessWidget {
  const ExchangeRateForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {



    return SingleChildScrollView(
      child: Column(
        children: const [
          SizedBox(height: 60, child: ListTitle()),
          //ListTable(items: items),

          //ListTable()
        ],
      ),
    );
  }
}
