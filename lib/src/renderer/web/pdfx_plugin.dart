import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'package:pdfx_plus/src/renderer/interfaces/platform.dart';
import 'platform.dart';

class PdfxPlugin extends PdfxWeb {
  static void registerWith(Registrar registrar) {
    PdfxPlatform.instance = PdfxWeb();
  }
}
