.class public abstract Landroid/app/job/JobServiceEngine;
.super Ljava/lang/Object;
.source "JobServiceEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/JobServiceEngine$JobHandler;,
        Landroid/app/job/JobServiceEngine$JobInterface;
    }
.end annotation


# static fields
.field private static final greylist-max-o MSG_EXECUTE_JOB:I = 0x0

.field private static final greylist-max-o MSG_JOB_FINISHED:I = 0x2

.field private static final greylist-max-o MSG_STOP_JOB:I = 0x1

.field private static final blacklist MSG_UPDATE_OPLUS_JOB:I = 0x3e9

.field private static final greylist-max-o TAG:Ljava/lang/String; = "JobServiceEngine"


# instance fields
.field private final greylist-max-o mBinder:Landroid/app/job/IJobService;

.field greylist-max-o mHandler:Landroid/app/job/JobServiceEngine$JobHandler;


# direct methods
.method public constructor whitelist <init>(Landroid/app/Service;)V
    .locals 2
    .param p1, "service"    # Landroid/app/Service;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    new-instance v0, Landroid/app/job/JobServiceEngine$JobInterface;

    invoke-direct {v0, p0}, Landroid/app/job/JobServiceEngine$JobInterface;-><init>(Landroid/app/job/JobServiceEngine;)V

    iput-object v0, p0, Landroid/app/job/JobServiceEngine;->mBinder:Landroid/app/job/IJobService;

    .line 220
    new-instance v0, Landroid/app/job/JobServiceEngine$JobHandler;

    invoke-virtual {p1}, Landroid/app/Service;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/app/job/JobServiceEngine$JobHandler;-><init>(Landroid/app/job/JobServiceEngine;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/job/JobServiceEngine;->mHandler:Landroid/app/job/JobServiceEngine$JobHandler;

    .line 221
    return-void
.end method


# virtual methods
.method public final whitelist getBinder()Landroid/os/IBinder;
    .locals 1

    .line 228
    iget-object v0, p0, Landroid/app/job/JobServiceEngine;->mBinder:Landroid/app/job/IJobService;

    invoke-interface {v0}, Landroid/app/job/IJobService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist jobFinished(Landroid/app/job/JobParameters;Z)V
    .locals 2
    .param p1, "params"    # Landroid/app/job/JobParameters;
    .param p2, "needsReschedule"    # Z

    .line 248
    if-eqz p1, :cond_0

    .line 251
    iget-object v0, p0, Landroid/app/job/JobServiceEngine;->mHandler:Landroid/app/job/JobServiceEngine$JobHandler;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 252
    .local v0, "m":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 253
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 254
    return-void

    .line 249
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "params"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist onStartJob(Landroid/app/job/JobParameters;)Z
.end method

.method public abstract whitelist onStopJob(Landroid/app/job/JobParameters;)Z
.end method

.method public whitelist onUpdateJobParameters(Landroid/app/job/JobParameters;)Z
    .locals 1
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 259
    const/4 v0, 0x0

    return v0
.end method
