.class public interface abstract Landroid/app/IResourcesManagerExt;
.super Ljava/lang/Object;
.source "IResourcesManagerExt.java"


# virtual methods
.method public blacklist applyConfigurationToResources(Landroid/content/res/Configuration;I)V
    .locals 0
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "change"    # I

    .line 41
    return-void
.end method

.method public blacklist canUseOverlayConfiguration(Landroid/content/res/ResourcesKey;Landroid/content/res/Configuration;)Z
    .locals 1
    .param p1, "resourcesKey"    # Landroid/content/res/ResourcesKey;
    .param p2, "configuration"    # Landroid/content/res/Configuration;

    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist hookGetDisplayMetrics(Landroid/util/DisplayMetrics;)Landroid/util/DisplayMetrics;
    .locals 0
    .param p1, "originalDisplayMetrics"    # Landroid/util/DisplayMetrics;

    .line 62
    return-object p1
.end method

.method public blacklist redirectResourcesToNewImplLocked(Landroid/content/res/Resources;Landroid/content/res/ResourcesImpl;Z)V
    .locals 0
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "impl"    # Landroid/content/res/ResourcesImpl;
    .param p3, "update"    # Z

    .line 37
    return-void
.end method

.method public blacklist setCompactWindowDisplayAdjustment(Landroid/content/res/ResourcesImpl;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "impl"    # Landroid/content/res/ResourcesImpl;
    .param p2, "oldOverrideConfig"    # Landroid/content/res/Configuration;
    .param p3, "newOverrideConfig"    # Landroid/content/res/Configuration;

    .line 49
    return-void
.end method

.method public blacklist updateCompactWindowConfigToApplicationResourcesImpl(Landroid/content/res/Configuration;Landroid/content/res/ResourcesImpl;)V
    .locals 0
    .param p1, "activityThreadConfig"    # Landroid/content/res/Configuration;
    .param p2, "impl"    # Landroid/content/res/ResourcesImpl;

    .line 46
    return-void
.end method

.method public blacklist updateCustomDarkModeForWechat(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/ResourcesImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "targetConfig"    # Landroid/content/res/Configuration;
    .param p2, "theadConfig"    # Landroid/content/res/Configuration;
    .param p3, "targetImpl"    # Landroid/content/res/ResourcesImpl;
    .param p4, "currentProcessName"    # Ljava/lang/String;

    .line 52
    return-void
.end method

.method public blacklist updateResourcesForActivity(Ljava/lang/String;Landroid/os/IBinder;Landroid/content/res/Configuration;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityToken"    # Landroid/os/IBinder;
    .param p3, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p4, "displayId"    # I

    .line 33
    return-void
.end method
