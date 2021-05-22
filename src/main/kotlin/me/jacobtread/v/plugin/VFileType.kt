package me.jacobtread.v.plugin

import com.intellij.openapi.fileTypes.LanguageFileType
import javax.swing.Icon

class VFileType : LanguageFileType(LANGUAGE) {
    override fun getName(): String {
        return "V File"
    }

    override fun getDescription(): String {
        return "V language source file"
    }

    override fun getDefaultExtension(): String {
        return "v"
    }

    override fun getIcon(): Icon {
        return VIcons.FILE
    }

    companion object  {
        val INSTANCE: VFileType = VFileType()
    }
}