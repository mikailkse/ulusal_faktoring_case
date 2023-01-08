import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../theme/theme.dart';

class Headline2Text extends AutoSizeText {
  Headline2Text({
    Key? key,
    required String text,
    required Color color,
    TextAlign? textAlign,
    int? maxLines,
  }) : super(
          key: key,
          text,
          overflow: TextOverflow.ellipsis,
          textScaleFactor: 1,
          textAlign: textAlign,
          maxLines: maxLines,
          style: light.textTheme.headline2!.copyWith(
            color: color,
            fontWeight: light.textTheme.headline2!.fontWeight,
            fontFamily: light.textTheme.headline2!.fontFamily,
            fontSize: light.textTheme.headline2!.fontSize,
            fontStyle: light.textTheme.headline2!.fontStyle,
          ),
        );
}
