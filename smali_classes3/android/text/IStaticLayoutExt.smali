.class public interface abstract Landroid/text/IStaticLayoutExt;
.super Ljava/lang/Object;
.source "IStaticLayoutExt.java"


# virtual methods
.method public blacklist getLayoutParaSpacingAdded(Landroid/text/StaticLayout;Ljava/lang/Object;ZLjava/lang/CharSequence;I)F
    .locals 1
    .param p1, "layout"    # Landroid/text/StaticLayout;
    .param p2, "builder"    # Ljava/lang/Object;
    .param p3, "moreChars"    # Z
    .param p4, "source"    # Ljava/lang/CharSequence;
    .param p5, "endPos"    # I

    .line 25
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public blacklist lineNeedMultiply(ZZZLandroid/text/StaticLayout;)Z
    .locals 1
    .param p1, "needMultiply"    # Z
    .param p2, "addLastLineLineSpacing"    # Z
    .param p3, "lastLine"    # Z
    .param p4, "layout"    # Landroid/text/StaticLayout;

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist lineShouldIncludeFontPad(ZLandroid/text/StaticLayout;)Z
    .locals 1
    .param p1, "firstLine"    # Z
    .param p2, "layout"    # Landroid/text/StaticLayout;

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setBuilderToTextJustificationHooks()V
    .locals 0

    .line 18
    return-void
.end method

.method public blacklist setLayoutParaSpacingAdded(Ljava/lang/Object;F)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "paraSpacing"    # F

    .line 20
    return-void
.end method

.method public blacklist setTextJustificationHooks()V
    .locals 0

    .line 22
    return-void
.end method
