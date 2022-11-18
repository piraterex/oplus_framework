.class public abstract Landroid/app/job/JobService;
.super Landroid/app/Service;
.source "JobService.java"


# static fields
.field public static final whitelist PERMISSION_BIND:Ljava/lang/String; = "android.permission.BIND_JOB_SERVICE"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "JobService"


# instance fields
.field private greylist-max-o mEngine:Landroid/app/job/JobServiceEngine;


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist jobFinished(Landroid/app/job/JobParameters;Z)V
    .locals 1
    .param p1, "params"    # Landroid/app/job/JobParameters;
    .param p2, "wantsReschedule"    # Z

    .line 116
    iget-object v0, p0, Landroid/app/job/JobService;->mEngine:Landroid/app/job/JobServiceEngine;

    invoke-virtual {v0, p1, p2}, Landroid/app/job/JobServiceEngine;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 117
    return-void
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 67
    iget-object v0, p0, Landroid/app/job/JobService;->mEngine:Landroid/app/job/JobServiceEngine;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Landroid/app/job/JobService$1;

    invoke-direct {v0, p0, p0}, Landroid/app/job/JobService$1;-><init>(Landroid/app/job/JobService;Landroid/app/Service;)V

    iput-object v0, p0, Landroid/app/job/JobService;->mEngine:Landroid/app/job/JobServiceEngine;

    .line 88
    :cond_0
    iget-object v0, p0, Landroid/app/job/JobService;->mEngine:Landroid/app/job/JobServiceEngine;

    invoke-virtual {v0}, Landroid/app/job/JobServiceEngine;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist onStartJob(Landroid/app/job/JobParameters;)Z
.end method

.method public abstract whitelist onStopJob(Landroid/app/job/JobParameters;)Z
.end method

.method public whitelist onUpdateJobParameters(Landroid/app/job/JobParameters;)Z
    .locals 1
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 189
    const/4 v0, 0x0

    return v0
.end method
