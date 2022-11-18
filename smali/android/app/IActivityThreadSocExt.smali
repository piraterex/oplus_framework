.class public interface abstract Landroid/app/IActivityThreadSocExt;
.super Ljava/lang/Object;
.source "IActivityThreadSocExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IActivityThreadSocExt$IStaticExt;
    }
.end annotation


# virtual methods
.method public whitelist createBoostFramework(Landroid/content/Context;)V
    .locals 0
    .param p1, "appContext"    # Landroid/content/Context;

    .line 17
    return-void
.end method

.method public whitelist dumpMessage(Z)V
    .locals 0
    .param p1, "dumpAll"    # Z

    .line 29
    return-void
.end method

.method public whitelist enableActivityThreadLog()V
    .locals 0

    .line 37
    return-void
.end method

.method public whitelist enableActivityThreadLog(Z)V
    .locals 0
    .param p1, "isEnable"    # Z

    .line 25
    return-void
.end method

.method public whitelist enableProcessMainThreadLooperLog()V
    .locals 0

    .line 33
    return-void
.end method

.method public whitelist hintBoostFWKActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 45
    return-void
.end method

.method public whitelist initializeBindApp()V
    .locals 0

    .line 9
    return-void
.end method

.method public whitelist perfUXEngineEvents(Landroid/content/Context;)V
    .locals 0
    .param p1, "appContext"    # Landroid/content/Context;

    .line 21
    return-void
.end method

.method public whitelist setMessageLogger()V
    .locals 0

    .line 41
    return-void
.end method

.method public whitelist setOverrideDensity(Landroid/content/pm/ApplicationInfo;)V
    .locals 0
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 13
    return-void
.end method
