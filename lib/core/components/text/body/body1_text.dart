import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../theme/theme.dart';

class BodyText extends AutoSizeText {
  BodyText({
    Key? key,
    required String text,
    required Color color,
    int? maxLines,
    TextAlign? textAlign,
  }) : super(
          key: key,
          text,
          overflow: TextOverflow.ellipsis,
          textScaleFactor: 1,
          textAlign: textAlign,
          maxLines: maxLines,
          style: light.textTheme.bodyText1!.copyWith(
            color: color,
            fontWeight: light.textTheme.bodyText1!.fontWeight,
            fontFamily: light.textTheme.bodyText1!.fontFamily,
            fontSize: light.textTheme.bodyText1!.fontSize,
            fontStyle: light.textTheme.bodyText1!.fontStyle,
          ),
        );
}
