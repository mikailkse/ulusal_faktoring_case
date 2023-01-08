import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../theme/theme.dart';

class Headline6Text extends AutoSizeText {
  Headline6Text({Key? key, required String text, required Color color})
      : super(
          key: key,
          text,
          overflow: TextOverflow.ellipsis,
          textScaleFactor: 1,
          style: light.textTheme.headline6!.copyWith(
            color: color,
            fontWeight: light.textTheme.headline6!.fontWeight,
            fontFamily: light.textTheme.headline6!.fontFamily,
            fontSize: light.textTheme.headline6!.fontSize,
            fontStyle: light.textTheme.headline6!.fontStyle,
          ),
        );
}
