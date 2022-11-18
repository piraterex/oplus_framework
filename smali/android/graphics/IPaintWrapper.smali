.class public interface abstract Landroid/graphics/IPaintWrapper;
.super Ljava/lang/Object;
.source "IPaintWrapper.java"


# virtual methods
.method public blacklist getFontVariationSettings()Ljava/lang/String;
    .locals 1

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSetTypeface(JJ)V
    .locals 0
    .param p1, "paintStr"    # J
    .param p3, "typefaceStr"    # J

    .line 38
    return-void
.end method

.method public blacklist getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setFontVariationSettings(Ljava/lang/String;)V
    .locals 0
    .param p1, "fontVariationSettings"    # Ljava/lang/String;

    .line 28
    return-void
.end method

.method public blacklist setTypeface(Landroid/graphics/Typeface;)V
    .locals 0
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 35
    return-void
.end method
