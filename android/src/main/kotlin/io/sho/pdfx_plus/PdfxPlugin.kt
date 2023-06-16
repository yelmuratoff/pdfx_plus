package io.sho.pdfx_plus

import android.annotation.TargetApi
import android.os.Build
import androidx.annotation.NonNull
import dev.flutter.pigeon.Pigeon
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.sho.pdfx_plus.resources.DocumentRepository
import io.sho.pdfx_plus.resources.PageRepository

/**
 * PdfxPlugin
 */
@TargetApi(Build.VERSION_CODES.LOLLIPOP)
class PdfxPlugin : FlutterPlugin {
    private val documents = DocumentRepository()
    private val pages = PageRepository()

    override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        Pigeon.PdfxApi.setup(
            flutterPluginBinding.binaryMessenger,
            Messages(flutterPluginBinding, documents, pages)
        )
    }

    override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
        Pigeon.PdfxApi.setup(binding.binaryMessenger, null)
        documents.clear()
        pages.clear()
    }
}

