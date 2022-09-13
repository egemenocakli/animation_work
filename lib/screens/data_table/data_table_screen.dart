import 'package:animation_work/base/views/base_view.dart';
import 'package:animation_work/screens/login/login_service.dart';
import 'package:animation_work/screens/login/viewmodels/login_view_model.dart';
import 'package:flutter/material.dart';


class DataTableScreen extends StatelessWidget {
  const DataTableScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseView<LoginViewModel>(
        vmBuilder: (_) => LoginViewModel(service: LoginService()),
        builder: _buildScreen,
      ),
    );
  }

  Widget _buildScreen(BuildContext context, LoginViewModel viewModel) =>
      Container(
        child: DataTable(
          columns: const <DataColumn>[
        DataColumn(
          label: Expanded(
            child: Text(
              'Name',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Age',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Role',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ),
      ],


      rows: const <DataRow>[
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Sarah')),
            DataCell(Text('19')),
            DataCell(Text('Student')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Janine')),
            DataCell(Text('43')),
            DataCell(Text('Professor')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('William')),
            DataCell(Text('27')),
            DataCell(Text('Associate Professor')),
          ],
        ),
      ],
        )
      );


}
