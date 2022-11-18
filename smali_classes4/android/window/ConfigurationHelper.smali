.class public Landroid/window/ConfigurationHelper;
.super Ljava/lang/Object;
.source "ConfigurationHelper.java"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist freeTextLayoutCachesIfNeeded(I)V
    .locals 1
    .param p0, "configDiff"    # I

    .line 45
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_0

    .line 46
    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    .line 48
    :cond_0
    return-void
.end method

.method public static blacklist isDifferentDisplay(II)Z
    .locals 1
    .param p0, "displayId"    # I
    .param p1, "newDisplayId"    # I

    .line 98
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    if-eq p0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist isDisplayRotationChanged(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .locals 4
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 123
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v0

    .line 124
    .local v0, "origRot":I
    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v1

    .line 125
    .local v1, "newRot":I
    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    if-eq v0, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .line 127
    :cond_2
    :goto_0
    return v2
.end method

.method public static blacklist shouldUpdateResources(Landroid/os/IBinder;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;ZLjava/lang/Boolean;)Z
    .locals 2
    .param p0, "token"    # Landroid/os/IBinder;
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;
    .param p3, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p4, "displayChanged"    # Z
    .param p5, "configChanged"    # Ljava/lang/Boolean;

    .line 67
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 68
    return v0

    .line 72
    :cond_0
    if-eqz p4, :cond_1

    .line 73
    return v0

    .line 77
    :cond_1
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v1

    invoke-virtual {v1, p0, p3}, Landroid/app/ResourcesManager;->isSameResourcesOverrideConfig(Landroid/os/IBinder;Landroid/content/res/Configuration;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 78
    return v0

    .line 83
    :cond_2
    invoke-static {p1, p2}, Landroid/window/ConfigurationHelper;->shouldUpdateWindowMetricsBounds(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 84
    return v0

    .line 87
    :cond_3
    invoke-static {p1, p2}, Landroid/window/ConfigurationHelper;->isDisplayRotationChanged(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 88
    return v0

    .line 90
    :cond_4
    if-nez p5, :cond_6

    invoke-virtual {p1, p2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method private static blacklist shouldUpdateWindowMetricsBounds(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .locals 5
    .param p0, "currentConfig"    # Landroid/content/res/Configuration;
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 112
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 113
    .local v0, "currentBounds":Landroid/graphics/Rect;
    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 115
    .local v1, "newBounds":Landroid/graphics/Rect;
    iget-object v2, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 116
    .local v2, "currentMaxBounds":Landroid/graphics/Rect;
    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 118
    .local v3, "newMaxBounds":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    return v4
.end method
