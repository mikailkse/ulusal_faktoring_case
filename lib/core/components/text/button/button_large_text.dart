import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../theme/theme.dart';

class ButtonLargeText extends AutoSizeText {
  ButtonLargeText({Key? key, required String text, required Color color})
      : super(
          key: key,
          text,
          overflow: TextOverflow.ellipsis,
          textScaleFactor: 1,
          style: light.textTheme.button!.copyWith(
            color: color,
            fontWeight: light.textTheme.button!.fontWeight,
            fontFamily: light.textTheme.button!.fontFamily,
            fontSize: light.textTheme.button!.fontSize,
            fontStyle: light.textTheme.button!.fontStyle,
          ),
        );
}
