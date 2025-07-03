import 'package:catching_kawa_app/core/widgts/custome_text_form_field.dart';
import 'package:catching_kawa_app/generated/l10n.dart';
import 'package:flutter/material.dart';

class IDFormField extends StatelessWidget {
  const IDFormField({super.key, this.idControler, this.validator});
  final TextEditingController? idControler;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return CustomeTextFormField.custometextformfield(
      controller: idControler,
      validator: validator != null
          ? (value) {
              return validator!(value);
            }
          : (value) {
              if (value == null || value.isEmpty) {
                return S.of(context).required_id;
              } else if (value.length != 14) {
                return S.of(context).wrong_data;
              } else {
                return null;
              }
            },
      prefixIcon: IconButton(onPressed: () {}, icon: Icon(Icons.perm_identity)),
      textType: TextInputType.phone,
      hintText: S.of(context).enter_id,
    );
  }
}
