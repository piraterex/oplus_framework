.class public interface abstract Landroid/app/IConfigurationControllerExt;
.super Ljava/lang/Object;
.source "IConfigurationControllerExt.java"


# virtual methods
.method public blacklist handleStateCheck(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist hookHandleConfigurationChanged(Landroid/app/Application;Landroid/content/res/Configuration;ILandroid/content/res/Configuration;)Z
    .locals 1
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "config"    # Landroid/content/res/Configuration;
    .param p3, "diff"    # I
    .param p4, "configuration"    # Landroid/content/res/Configuration;

    .line 25
    const/4 v0, 0x0

    return v0
.end method
