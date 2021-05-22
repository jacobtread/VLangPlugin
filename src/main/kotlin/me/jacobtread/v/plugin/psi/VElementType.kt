package me.jacobtread.v.plugin.psi

import com.intellij.psi.tree.IElementType
import me.jacobtread.v.plugin.LANGUAGE
import org.jetbrains.annotations.NotNull

class VElementType(debugName: @NotNull String) : IElementType(debugName, LANGUAGE)