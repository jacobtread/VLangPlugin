package me.jacobtread.v.plugin

import com.intellij.lang.Language
import com.intellij.openapi.util.IconLoader
import javax.swing.Icon

class VLanguage : Language("V")

val LANGUAGE: VLanguage = VLanguage()

object VIcons {

    val FILE: Icon = IconLoader.getIcon("/icons/v-icon.png", VLanguage::class.java)

}