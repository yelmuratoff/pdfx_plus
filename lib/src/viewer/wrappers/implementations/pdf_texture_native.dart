// ignore_for_file: non_constant_identifier_names

import 'package:flutter/widgets.dart';

Texture PdfTexture({Key? key, required int textureId}) => Texture(
      key: key,
      textureId: textureId,
      filterQuality: FilterQuality.medium,
    );

Texture PdfTexturePreview({Key? key, required int textureId}) => Texture(
      key: key,
      textureId: textureId,
      filterQuality: FilterQuality.low,
    );
