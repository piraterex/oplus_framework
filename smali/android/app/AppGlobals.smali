.class public Landroid/app/AppGlobals;
.super Ljava/lang/Object;
.source "AppGlobals.java"


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getFloatCoreSetting(Ljava/lang/String;F)F
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # F

    .line 88
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 89
    .local v0, "currentActivityThread":Landroid/app/ActivityThread;
    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0, p0, p1}, Landroid/app/ActivityThread;->getFloatCoreSetting(Ljava/lang/String;F)F

    move-result v1

    return v1

    .line 92
    :cond_0
    return p1
.end method

.method public static greylist getInitialApplication()Landroid/app/Application;
    .locals 1

    .line 35
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public static greylist getInitialPackage()Ljava/lang/String;
    .locals 1

    .line 44
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getIntCoreSetting(Ljava/lang/String;I)I
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .line 72
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 73
    .local v0, "currentActivityThread":Landroid/app/ActivityThread;
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0, p0, p1}, Landroid/app/ActivityThread;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 76
    :cond_0
    return p1
.end method

.method public static greylist getPackageManager()Landroid/content/pm/IPackageManager;
    .locals 1

    .line 53
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getPermissionManager()Landroid/permission/IPermissionManager;
    .locals 1

    .line 61
    invoke-static {}, Landroid/app/ActivityThread;->getPermissionManager()Landroid/permission/IPermissionManager;

    move-result-object v0

    return-object v0
.end method
