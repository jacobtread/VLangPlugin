package me.jacobtread.v.plugin.module

import com.intellij.ide.util.projectWizard.ModuleBuilder
import com.intellij.openapi.module.ModuleType

class VModuleBuilder : ModuleBuilder() {
    override fun getModuleType(): ModuleType<*> {
        return VModuleType()
    }
}