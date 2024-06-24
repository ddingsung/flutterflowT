import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'details13_property_house_widget.dart' show Details13PropertyHouseWidget;
import 'package:flutter/material.dart';

class Details13PropertyHouseModel
    extends FlutterFlowModel<Details13PropertyHouseWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for amentities widget.
  FormFieldController<List<String>>? amentitiesValueController;
  String? get amentitiesValue => amentitiesValueController?.value?.firstOrNull;
  set amentitiesValue(String? val) =>
      amentitiesValueController?.value = val != null ? [val] : [];
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
