import 'package:church_project/_common/_utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CustomInput extends HookWidget {
  final String? label;
  final String value;
  final ValueChanged<String> onChanged;

  const CustomInput({
    super.key,
    this.label,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController(
      text: value,
    );

    useEffect(() {
      if (controller.text != value) {
        controller.value = TextEditingValue(
          text: value,
          selection: TextSelection.collapsed(
            offset: value.length,
          ),
        );
      }
      return null;
    }, [value]);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (label != null) ...[
          Text(label.toString(), textAlign: TextAlign.left),

          SizedBox(height: 10),
        ],

        TextField(
          controller: controller,

          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
              borderSide: BorderSide(color: PRIMARY_COLOR),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
          ),

          onChanged: onChanged,
        ),
      ],
    );
  }
}
