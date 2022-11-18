.class final Landroid/app/job/JobServiceEngine$JobInterface;
.super Landroid/app/job/IJobService$Stub;
.source "JobServiceEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/JobServiceEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JobInterface"
.end annotation


# instance fields
.field final greylist-max-o mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/job/JobServiceEngine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Landroid/app/job/JobServiceEngine;)V
    .locals 1
    .param p1, "service"    # Landroid/app/job/JobServiceEngine;

    .line 77
    invoke-direct {p0}, Landroid/app/job/IJobService$Stub;-><init>()V

    .line 78
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/app/job/JobServiceEngine$JobInterface;->mService:Ljava/lang/ref/WeakReference;

    .line 79
    return-void
.end method


# virtual methods
.method public greylist-max-o startJob(Landroid/app/job/JobParameters;)V
    .locals 3
    .param p1, "jobParams"    # Landroid/app/job/JobParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Landroid/app/job/JobServiceEngine$JobInterface;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobServiceEngine;

    .line 84
    .local v0, "service":Landroid/app/job/JobServiceEngine;
    if-eqz v0, :cond_0

    .line 85
    iget-object v1, v0, Landroid/app/job/JobServiceEngine;->mHandler:Landroid/app/job/JobServiceEngine$JobHandler;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 86
    .local v1, "m":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 88
    .end local v1    # "m":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public greylist-max-o stopJob(Landroid/app/job/JobParameters;)V
    .locals 3
    .param p1, "jobParams"    # Landroid/app/job/JobParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Landroid/app/job/JobServiceEngine$JobInterface;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobServiceEngine;

    .line 93
    .local v0, "service":Landroid/app/job/JobServiceEngine;
    if-eqz v0, :cond_0

    .line 94
    iget-object v1, v0, Landroid/app/job/JobServiceEngine;->mHandler:Landroid/app/job/JobServiceEngine$JobHandler;

    const/4 v2, 0x1

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 95
    .local v1, "m":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 97
    .end local v1    # "m":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public blacklist updateJobParameters(Landroid/app/job/JobParameters;)V
    .locals 3
    .param p1, "jobParams"    # Landroid/app/job/JobParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Landroid/app/job/JobServiceEngine$JobInterface;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobServiceEngine;

    .line 107
    .local v0, "service":Landroid/app/job/JobServiceEngine;
    if-eqz v0, :cond_0

    .line 109
    iget-object v1, v0, Landroid/app/job/JobServiceEngine;->mHandler:Landroid/app/job/JobServiceEngine$JobHandler;

    const/16 v2, 0x3e9

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 110
    .local v1, "m":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 112
    .end local v1    # "m":Landroid/os/Message;
    :cond_0
    return-void
.end method
