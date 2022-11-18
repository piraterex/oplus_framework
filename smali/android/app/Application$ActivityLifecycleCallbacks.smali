.class public interface abstract Landroid/app/Application$ActivityLifecycleCallbacks;
.super Ljava/lang/Object;
.source "Application.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Application;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActivityLifecycleCallbacks"
.end annotation


# virtual methods
.method public blacklist onActivityConfigurationChanged(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 226
    return-void
.end method

.method public abstract whitelist onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
.end method

.method public abstract whitelist onActivityDestroyed(Landroid/app/Activity;)V
.end method

.method public abstract whitelist onActivityPaused(Landroid/app/Activity;)V
.end method

.method public whitelist onActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 102
    return-void
.end method

.method public whitelist onActivityPostDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 219
    return-void
.end method

.method public whitelist onActivityPostPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 159
    return-void
.end method

.method public whitelist onActivityPostResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 140
    return-void
.end method

.method public whitelist onActivityPostSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 200
    return-void
.end method

.method public whitelist onActivityPostStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 121
    return-void
.end method

.method public whitelist onActivityPostStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 178
    return-void
.end method

.method public whitelist onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 89
    return-void
.end method

.method public whitelist onActivityPreDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 207
    return-void
.end method

.method public whitelist onActivityPrePaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 147
    return-void
.end method

.method public whitelist onActivityPreResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 128
    return-void
.end method

.method public whitelist onActivityPreSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 186
    return-void
.end method

.method public whitelist onActivityPreStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 109
    return-void
.end method

.method public whitelist onActivityPreStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 166
    return-void
.end method

.method public abstract whitelist onActivityResumed(Landroid/app/Activity;)V
.end method

.method public abstract whitelist onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
.end method

.method public abstract whitelist onActivityStarted(Landroid/app/Activity;)V
.end method

.method public abstract whitelist onActivityStopped(Landroid/app/Activity;)V
.end method
