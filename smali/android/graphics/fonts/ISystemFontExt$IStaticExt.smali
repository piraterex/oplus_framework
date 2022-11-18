.class public interface abstract Landroid/graphics/fonts/ISystemFontExt$IStaticExt;
.super Ljava/lang/Object;
.source "ISystemFontExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/fonts/ISystemFontExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IStaticExt"
.end annotation


# virtual methods
.method public blacklist apendIndividualFontFamily(Landroid/text/FontConfig;)Landroid/text/FontConfig;
    .locals 0
    .param p1, "fontconfig"    # Landroid/text/FontConfig;

    .line 20
    return-object p1
.end method

.method public blacklist getIndividualFontFamily()Landroid/text/FontConfig$FontFamily;
    .locals 1

    .line 12
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getOemCustomizationConfigXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "oemXml"    # Ljava/lang/String;

    .line 28
    return-object p1
.end method

.method public blacklist getOemCustomizationFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "oemPath"    # Ljava/lang/String;

    .line 32
    return-object p1
.end method

.method public blacklist getSystemFontConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "fonConfig"    # Ljava/lang/String;

    .line 24
    return-object p1
.end method

.method public blacklist isFlipfontUsed()Z
    .locals 1

    .line 36
    const/4 v0, 0x0

    return v0
.end method
