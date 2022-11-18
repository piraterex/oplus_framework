.class public interface abstract Landroid/app/IActivityThreadExt;
.super Ljava/lang/Object;
.source "IActivityThreadExt.java"


# virtual methods
.method public blacklist asyncReportFrames(J)V
    .locals 0
    .param p1, "skippedFrames"    # J

    .line 134
    return-void
.end method

.method public blacklist changeToSpecialModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 43
    return-void
.end method

.method public blacklist checkOplusExSystemService(ZLandroid/content/Intent;)Z
    .locals 1
    .param p1, "systemThread"    # Z
    .param p2, "intent"    # Landroid/content/Intent;

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist checkOplusExSystemService(ZLjava/lang/String;)Z
    .locals 1
    .param p1, "systemThread"    # Z
    .param p2, "className"    # Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableDoFrameOpt(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 66
    return-void
.end method

.method public blacklist enableDynamicalLogIfNeed()V
    .locals 0

    .line 83
    return-void
.end method

.method public blacklist excludeExtConfigDiff(I)V
    .locals 0
    .param p1, "diff"    # I

    .line 162
    return-void
.end method

.method public blacklist getShouldCallActivityConfigChangeState(Z)Z
    .locals 0
    .param p1, "shouldReportChange"    # Z

    .line 54
    return p1
.end method

.method public blacklist handleLaunchActivity()V
    .locals 0

    .line 73
    return-void
.end method

.method public blacklist handlePauseActivity()V
    .locals 0

    .line 147
    return-void
.end method

.method public blacklist handleResumeActivity()V
    .locals 0

    .line 146
    return-void
.end method

.method public blacklist hasImportMessage()Z
    .locals 1

    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hookHandleBindApplication(Landroid/app/ActivityThread$AppBindData;)V
    .locals 0
    .param p1, "data"    # Landroid/app/ActivityThread$AppBindData;

    .line 178
    return-void
.end method

.method public blacklist hookPerformLaunchActivity(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 174
    return-void
.end method

.method public blacklist initCompactApplicationInfo(Landroid/content/pm/ApplicationInfo;)V
    .locals 0
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 141
    return-void
.end method

.method public blacklist initDisplayCompat(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V
    .locals 0
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;

    .line 95
    return-void
.end method

.method public blacklist isTopApp()Z
    .locals 1

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isWindowModeChanged(II)Z
    .locals 1
    .param p1, "currentMode"    # I
    .param p2, "newMode"    # I

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onDisplayChanged(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 99
    return-void
.end method

.method public blacklist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist reportBindApplicationFinishedInActivityThread(Landroid/app/Application;Landroid/content/pm/ApplicationInfo;)V
    .locals 0
    .param p1, "app"    # Landroid/app/Application;
    .param p2, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 76
    return-void
.end method

.method public blacklist resetOptState()V
    .locals 0

    .line 128
    return-void
.end method

.method public blacklist setDynamicalLogConfig(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 87
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist setDynamicalLogEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 79
    return-void
.end method

.method public blacklist setImportMessage(Z)V
    .locals 0
    .param p1, "isFirstFrame"    # Z

    .line 120
    return-void
.end method

.method public blacklist setLifecycleState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 145
    return-void
.end method

.method public blacklist setTopApp(Z)V
    .locals 0
    .param p1, "topApp"    # Z

    .line 107
    return-void
.end method

.method public blacklist shouldConfigChangeByMultiSystem(ZIILjava/lang/String;)Z
    .locals 1
    .param p1, "change"    # Z
    .param p2, "realConfigChange"    # I
    .param p3, "diff"    # I
    .param p4, "pkgName"    # Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist shouldInterceptConfigForSplit(Landroid/os/IBinder;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;ZLjava/lang/Boolean;)Z
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "config"    # Landroid/content/res/Configuration;
    .param p3, "newConfig"    # Landroid/content/res/Configuration;
    .param p4, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p5, "displayChanged"    # Z
    .param p6, "configChanged"    # Ljava/lang/Boolean;

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist shouldInterceptConfigRelaunch(ILandroid/content/res/Configuration;)V
    .locals 0
    .param p1, "diff"    # I
    .param p2, "configuration"    # Landroid/content/res/Configuration;

    .line 35
    return-void
.end method

.method public blacklist shouldReportExtraConfig(Landroid/content/pm/ActivityInfo;Landroid/content/pm/IPackageManager;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Z)Z
    .locals 0
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "pm"    # Landroid/content/pm/IPackageManager;
    .param p3, "currentConfig"    # Landroid/content/res/Configuration;
    .param p4, "newConfig"    # Landroid/content/res/Configuration;
    .param p5, "shouldReportChange"    # Z

    .line 39
    return p5
.end method

.method public blacklist shouldSendConfigration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p2, "newconfig"    # Landroid/content/res/Configuration;
    .param p3, "token"    # Landroid/os/IBinder;

    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist updateCurrentActivity(Ljava/lang/String;)V
    .locals 0
    .param p1, "activityName"    # Ljava/lang/String;

    .line 126
    return-void
.end method
