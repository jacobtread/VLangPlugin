package me.jacobtread.v.plugin.module

import com.intellij.openapi.module.ModuleType
import me.jacobtread.v.plugin.VIcons
import javax.swing.Icon

class VModuleType : ModuleType<VModuleBuilder>("VModule") {

    override fun createModuleBuilder(): VModuleBuilder {
        return VModuleBuilder()
    }

    override fun getName(): String {
        return "V"
    }

    override fun getDescription(): String {
        return "A V Module"
    }

    override fun getNodeIcon(isOpened: Boolean): Icon {
        return VIcons.FILE
    }

}