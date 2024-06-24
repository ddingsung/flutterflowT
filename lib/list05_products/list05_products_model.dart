import '/flutter_flow/flutter_flow_util.dart';
import 'list05_products_widget.dart' show List05ProductsWidget;
import 'package:flutter/material.dart';

class List05ProductsModel extends FlutterFlowModel<List05ProductsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
