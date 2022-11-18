.class public interface abstract Landroid/app/IWindowConfigurationExt;
.super Ljava/lang/Object;
.source "IWindowConfigurationExt.java"


# static fields
.field public static final blacklist WINDOWING_MODE_BRACKET:I = 0x73

.field public static final blacklist WINDOWING_MODE_COMPACTWINDOW:I = 0x78

.field public static final blacklist WINDOWING_MODE_ZOOM:I = 0x64


# virtual methods
.method public blacklist getWindowingComactMode()I
    .locals 1

    .line 38
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist isWindowingBracketMode(I)Z
    .locals 1
    .param p1, "windowMode"    # I

    .line 42
    const/16 v0, 0x73

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isWindowingComactMode(I)Z
    .locals 1
    .param p1, "windowMode"    # I

    .line 34
    const/16 v0, 0x78

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isWindowingZoomMode(I)Z
    .locals 1
    .param p1, "windowMode"    # I

    .line 30
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
