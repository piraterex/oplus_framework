.class public Landroid/app/LoadedApkSocExtImpl;
.super Ljava/lang/Object;
.source "LoadedApkSocExtImpl.java"

# interfaces
.implements Landroid/app/ILoadedApkSocExt;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "loadedApk"    # Ljava/lang/Object;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public whitelist preloadRes(Landroid/content/res/Resources;Landroid/content/pm/ApplicationInfo;Landroid/app/Application;Ljava/lang/String;)V
    .locals 0
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "app"    # Landroid/app/Application;
    .param p4, "packageName"    # Ljava/lang/String;

    .line 22
    return-void
.end method

.method public whitelist setAppContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 17
    return-void
.end method
