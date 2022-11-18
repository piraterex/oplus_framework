.class Landroid/app/backup/RestoreSession$RestoreObserverWrapper;
.super Landroid/app/backup/IRestoreObserver$Stub;
.source "RestoreSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/RestoreSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreObserverWrapper"
.end annotation


# static fields
.field static final greylist-max-o MSG_RESTORE_FINISHED:I = 0x3

.field static final greylist-max-o MSG_RESTORE_SETS_AVAILABLE:I = 0x4

.field static final greylist-max-o MSG_RESTORE_STARTING:I = 0x1

.field static final greylist-max-o MSG_UPDATE:I = 0x2


# instance fields
.field final greylist-max-o mAppObserver:Landroid/app/backup/RestoreObserver;

.field final greylist-max-o mHandler:Landroid/os/Handler;

.field final synthetic blacklist this$0:Landroid/app/backup/RestoreSession;


# direct methods
.method constructor blacklist <init>(Landroid/app/backup/RestoreSession;Landroid/content/Context;Landroid/app/backup/RestoreObserver;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "appObserver"    # Landroid/app/backup/RestoreObserver;

    .line 352
    iput-object p1, p0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;->this$0:Landroid/app/backup/RestoreSession;

    invoke-direct {p0}, Landroid/app/backup/IRestoreObserver$Stub;-><init>()V

    .line 353
    new-instance v0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper$1;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroid/app/backup/RestoreSession$RestoreObserverWrapper$1;-><init>(Landroid/app/backup/RestoreSession$RestoreObserverWrapper;Landroid/os/Looper;Landroid/app/backup/RestoreSession;)V

    iput-object v0, p0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;->mHandler:Landroid/os/Handler;

    .line 372
    iput-object p3, p0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;->mAppObserver:Landroid/app/backup/RestoreObserver;

    .line 373
    return-void
.end method


# virtual methods
.method public greylist-max-o onUpdate(ILjava/lang/String;)V
    .locals 3
    .param p1, "nowBeingRestored"    # I
    .param p2, "currentPackage"    # Ljava/lang/String;

    .line 387
    iget-object v0, p0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;->mHandler:Landroid/os/Handler;

    .line 388
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 387
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 389
    return-void
.end method

.method public greylist-max-o restoreFinished(I)V
    .locals 3
    .param p1, "error"    # I

    .line 392
    iget-object v0, p0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;->mHandler:Landroid/os/Handler;

    .line 393
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 392
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 394
    return-void
.end method

.method public greylist-max-o restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    .locals 2
    .param p1, "result"    # [Landroid/app/backup/RestoreSet;

    .line 377
    iget-object v0, p0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;->mHandler:Landroid/os/Handler;

    .line 378
    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 377
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 379
    return-void
.end method

.method public greylist-max-o restoreStarting(I)V
    .locals 3
    .param p1, "numPackages"    # I

    .line 382
    iget-object v0, p0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;->mHandler:Landroid/os/Handler;

    .line 383
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 382
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 384
    return-void
.end method
