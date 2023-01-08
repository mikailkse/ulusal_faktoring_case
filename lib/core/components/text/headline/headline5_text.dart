import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../theme/theme.dart';

class Headline5Text extends AutoSizeText {
  Headline5Text(
      {Key? key,
      required String text,
      required Color color,
      TextAlign? textAlign})
      : super(
          key: key,
          text,
          overflow: TextOverflow.ellipsis,
          textScaleFactor: 1,
          textAlign: textAlign,
          style: light.textTheme.headline5!.copyWith(
            color: color,
            fontWeight: light.textTheme.headline5!.fontWeight,
            fontFamily: light.textTheme.headline5!.fontFamily,
            fontSize: light.textTheme.headline5!.fontSize,
            fontStyle: light.textTheme.headline5!.fontStyle,
          ),
        );
}
