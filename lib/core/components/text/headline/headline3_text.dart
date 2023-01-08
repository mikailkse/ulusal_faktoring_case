import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../theme/theme.dart';

class Headline3Text extends AutoSizeText {
  Headline3Text({Key? key, required String text, required Color color})
      : super(
          key: key,
          text,
          overflow: TextOverflow.ellipsis,
          textScaleFactor: 1,
          style: light.textTheme.headline3!.copyWith(
            color: color,
            fontWeight: light.textTheme.headline3!.fontWeight,
            fontFamily: light.textTheme.headline3!.fontFamily,
            fontSize: light.textTheme.headline3!.fontSize,
            fontStyle: light.textTheme.headline3!.fontStyle,
          ),
        );
}
