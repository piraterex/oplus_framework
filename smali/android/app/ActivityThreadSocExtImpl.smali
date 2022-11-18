.class public Landroid/app/ActivityThreadSocExtImpl;
.super Ljava/lang/Object;
.source "ActivityThreadSocExtImpl.java"

# interfaces
.implements Landroid/app/IActivityThreadSocExt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityThreadSocExtImpl$StaticExtImpl;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ActivityThreadSocExtImpl"


# instance fields
.field blacklist mActivityThread:Landroid/app/ActivityThread;

.field blacklist st_bindApp:J

.field blacklist ux_perf:Landroid/util/BoostFramework;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "activityThread"    # Ljava/lang/Object;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    move-object v0, p1

    check-cast v0, Landroid/app/ActivityThread;

    iput-object v0, p0, Landroid/app/ActivityThreadSocExtImpl;->mActivityThread:Landroid/app/ActivityThread;

    .line 24
    return-void
.end method


# virtual methods
.method public whitelist createBoostFramework(Landroid/content/Context;)V
    .locals 2
    .param p1, "appContext"    # Landroid/content/Context;

    .line 44
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWritesMask()I

    move-result v0

    .line 47
    .local v0, "old_mask":I
    :try_start_0
    new-instance v1, Landroid/util/BoostFramework;

    invoke-direct {v1, p1}, Landroid/util/BoostFramework;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/app/ActivityThreadSocExtImpl;->ux_perf:Landroid/util/BoostFramework;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 50
    goto :goto_0

    .line 49
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 50
    throw v1

    .line 52
    .end local v0    # "old_mask":I
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist dumpMessage(Z)V
    .locals 0
    .param p1, "dumpAll"    # Z

    .line 93
    return-void
.end method

.method public whitelist enableActivityThreadLog()V
    .locals 0

    .line 103
    return-void
.end method

.method public whitelist enableActivityThreadLog(Z)V
    .locals 0
    .param p1, "isEnable"    # Z

    .line 88
    return-void
.end method

.method public whitelist enableProcessMainThreadLooperLog()V
    .locals 0

    .line 98
    return-void
.end method

.method public whitelist hintBoostFWKActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 108
    return-void
.end method

.method public whitelist initializeBindApp()V
    .locals 2

    .line 28
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ActivityThreadSocExtImpl;->st_bindApp:J

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityThreadSocExtImpl;->ux_perf:Landroid/util/BoostFramework;

    .line 30
    return-void
.end method

.method public whitelist perfUXEngineEvents(Landroid/content/Context;)V
    .locals 11
    .param p1, "appContext"    # Landroid/content/Context;

    .line 56
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 57
    .local v0, "end_bindApp":J
    iget-wide v2, p0, Landroid/app/ActivityThreadSocExtImpl;->st_bindApp:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    .line 58
    .local v2, "bindApp_dur":I
    const/4 v3, 0x0

    .line 59
    .local v3, "pkg_name":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 62
    :cond_0
    iget-object v4, p0, Landroid/app/ActivityThreadSocExtImpl;->ux_perf:Landroid/util/BoostFramework;

    if-eqz v4, :cond_2

    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v3, :cond_2

    .line 63
    const/4 v4, 0x0

    .line 66
    .local v4, "pkgDir":Ljava/lang/String;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v6

    .line 67
    .local v6, "codePath":Ljava/lang/String;
    const/16 v7, 0x2f

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v7

    .line 72
    .end local v6    # "codePath":Ljava/lang/String;
    move-object v10, v4

    goto :goto_0

    .line 69
    :catch_0
    move-exception v6

    .line 71
    .local v6, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HeavyGameThread () : Exception_1 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ActivityThreadSocExtImpl"

    invoke-static {v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v4

    .line 73
    .end local v4    # "pkgDir":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Exception;
    .local v10, "pkgDir":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Landroid/app/ActivityThreadSocExtImpl;->ux_perf:Landroid/util/BoostFramework;

    iget v4, v4, Landroid/util/BoostFramework;->board_first_api_lvl:I

    const/16 v6, 0x20

    if-ge v4, v6, :cond_1

    iget-object v4, p0, Landroid/app/ActivityThreadSocExtImpl;->ux_perf:Landroid/util/BoostFramework;

    iget v4, v4, Landroid/util/BoostFramework;->board_api_lvl:I

    if-ge v4, v6, :cond_1

    .line 75
    iget-object v4, p0, Landroid/app/ActivityThreadSocExtImpl;->ux_perf:Landroid/util/BoostFramework;

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v7, v3

    move v8, v2

    move-object v9, v10

    invoke-virtual/range {v4 .. v9}, Landroid/util/BoostFramework;->perfUXEngine_events(IILjava/lang/String;ILjava/lang/String;)I

    goto :goto_1

    .line 80
    :cond_1
    iget-object v4, p0, Landroid/app/ActivityThreadSocExtImpl;->ux_perf:Landroid/util/BoostFramework;

    const/16 v6, 0x10a0

    const/4 v7, 0x2

    new-array v8, v7, [I

    aput v2, v8, v5

    const/4 v9, 0x1

    aput v5, v8, v9

    invoke-virtual {v4, v6, v3, v7, v8}, Landroid/util/BoostFramework;->perfEvent(ILjava/lang/String;I[I)V

    .line 83
    .end local v10    # "pkgDir":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void
.end method

.method public whitelist setOverrideDensity(Landroid/content/pm/ApplicationInfo;)V
    .locals 3
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 34
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->getOverrideDensity()I

    move-result v0

    .line 35
    .local v0, "overrideDensity":I
    if-eqz v0, :cond_0

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "override app density from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityThreadSocExtImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v1, p0, Landroid/app/ActivityThreadSocExtImpl;->mActivityThread:Landroid/app/ActivityThread;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/app/ActivityThread;->mDensityCompatMode:Z

    .line 38
    invoke-static {v0}, Landroid/graphics/Bitmap;->setDefaultDensity(I)V

    .line 40
    :cond_0
    return-void
.end method
