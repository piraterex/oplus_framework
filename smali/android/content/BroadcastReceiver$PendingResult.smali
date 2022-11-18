.class public Landroid/content/BroadcastReceiver$PendingResult;
.super Ljava/lang/Object;
.source "BroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingResult"
.end annotation


# static fields
.field public static final greylist-max-o TYPE_COMPONENT:I = 0x0

.field public static final greylist-max-o TYPE_REGISTERED:I = 0x1

.field public static final greylist-max-o TYPE_UNREGISTERED:I = 0x2


# instance fields
.field greylist mAbortBroadcast:Z

.field greylist mFinished:Z

.field final greylist-max-p mFlags:I

.field final greylist mInitialStickyHint:Z

.field final greylist mOrderedHint:Z

.field public blacklist mPendingResultExt:Landroid/content/IPendingResultExt;

.field blacklist mReceiverClassName:Ljava/lang/String;

.field greylist-max-p mResultCode:I

.field greylist-max-p mResultData:Ljava/lang/String;

.field greylist mResultExtras:Landroid/os/Bundle;

.field final greylist mSendingUser:I

.field final greylist-max-p mToken:Landroid/os/IBinder;

.field final greylist-max-p mType:I


# direct methods
.method public constructor greylist-max-p <init>(ILjava/lang/String;Landroid/os/Bundle;IZZLandroid/os/IBinder;II)V
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Ljava/lang/String;
    .param p3, "resultExtras"    # Landroid/os/Bundle;
    .param p4, "type"    # I
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "token"    # Landroid/os/IBinder;
    .param p8, "userId"    # I
    .param p9, "flags"    # I

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const-class v0, Landroid/content/IPendingResultExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IPendingResultExt;

    iput-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mPendingResultExt:Landroid/content/IPendingResultExt;

    .line 121
    iput p1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultCode:I

    .line 122
    iput-object p2, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultData:Ljava/lang/String;

    .line 123
    iput-object p3, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    .line 124
    iput p4, p0, Landroid/content/BroadcastReceiver$PendingResult;->mType:I

    .line 125
    iput-boolean p5, p0, Landroid/content/BroadcastReceiver$PendingResult;->mOrderedHint:Z

    .line 128
    invoke-interface {v0, p5}, Landroid/content/IPendingResultExt;->setOrder(Z)V

    .line 130
    iput-boolean p6, p0, Landroid/content/BroadcastReceiver$PendingResult;->mInitialStickyHint:Z

    .line 131
    iput-object p7, p0, Landroid/content/BroadcastReceiver$PendingResult;->mToken:Landroid/os/IBinder;

    .line 132
    iput p8, p0, Landroid/content/BroadcastReceiver$PendingResult;->mSendingUser:I

    .line 133
    iput p9, p0, Landroid/content/BroadcastReceiver$PendingResult;->mFlags:I

    .line 134
    return-void
.end method


# virtual methods
.method public final whitelist abortBroadcast()V
    .locals 1

    .line 223
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->checkSynchronousHint()V

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mAbortBroadcast:Z

    .line 225
    return-void
.end method

.method greylist-max-o checkSynchronousHint()V
    .locals 3

    .line 341
    iget-boolean v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mOrderedHint:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mInitialStickyHint:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 344
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BroadcastReceiver trying to return result during a non-ordered broadcast"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 346
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 347
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BroadcastReceiver"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 348
    return-void

    .line 342
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void
.end method

.method public final whitelist clearAbortBroadcast()V
    .locals 1

    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mAbortBroadcast:Z

    .line 234
    return-void
.end method

.method public final whitelist finish()V
    .locals 4

    .line 241
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PendingResult#finish#ClassName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/BroadcastReceiver$PendingResult;->mReceiverClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 249
    :cond_0
    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_BROADCAST:Z

    const-string v1, "ActivityThread"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finishing broadcast to mType "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/content/BroadcastReceiver$PendingResult;->mType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_1
    iget v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mType:I

    if-nez v0, :cond_4

    .line 253
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 254
    .local v0, "mgr":Landroid/app/IActivityManager;
    invoke-static {}, Landroid/app/QueuedWork;->hasPendingWork()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 265
    new-instance v1, Landroid/content/BroadcastReceiver$PendingResult$1;

    invoke-direct {v1, p0, v0}, Landroid/content/BroadcastReceiver$PendingResult$1;-><init>(Landroid/content/BroadcastReceiver$PendingResult;Landroid/app/IActivityManager;)V

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/app/QueuedWork;->queue(Ljava/lang/Runnable;Z)V

    goto :goto_0

    .line 273
    :cond_2
    sget-boolean v2, Landroid/app/ActivityThread;->DEBUG_BROADCAST:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finishing broadcast to component "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/BroadcastReceiver$PendingResult;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_3
    invoke-virtual {p0, v0}, Landroid/content/BroadcastReceiver$PendingResult;->sendFinished(Landroid/app/IActivityManager;)V

    goto :goto_0

    .line 277
    .end local v0    # "mgr":Landroid/app/IActivityManager;
    :cond_4
    iget-boolean v2, p0, Landroid/content/BroadcastReceiver$PendingResult;->mOrderedHint:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6

    .line 278
    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finishing broadcast to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/content/BroadcastReceiver$PendingResult;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_5
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 281
    .restart local v0    # "mgr":Landroid/app/IActivityManager;
    invoke-virtual {p0, v0}, Landroid/content/BroadcastReceiver$PendingResult;->sendFinished(Landroid/app/IActivityManager;)V

    goto :goto_1

    .line 277
    .end local v0    # "mgr":Landroid/app/IActivityManager;
    :cond_6
    :goto_0
    nop

    .line 283
    :goto_1
    return-void
.end method

.method public final whitelist getAbortBroadcast()Z
    .locals 1

    .line 214
    iget-boolean v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mAbortBroadcast:Z

    return v0
.end method

.method public final whitelist getResultCode()I
    .locals 1

    .line 152
    iget v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultCode:I

    return v0
.end method

.method public final whitelist getResultData()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultData:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist getResultExtras(Z)Landroid/os/Bundle;
    .locals 2
    .param p1, "makeMap"    # Z

    .line 190
    iget-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    .line 191
    .local v0, "e":Landroid/os/Bundle;
    if-nez p1, :cond_0

    return-object v0

    .line 192
    :cond_0
    if-nez v0, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    .line 193
    :cond_1
    return-object v0
.end method

.method public greylist-max-o getSendingUserId()I
    .locals 1

    .line 334
    iget v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mSendingUser:I

    return v0
.end method

.method public greylist-max-o sendFinished(Landroid/app/IActivityManager;)V
    .locals 10
    .param p1, "am"    # Landroid/app/IActivityManager;

    .line 294
    monitor-enter p0

    .line 295
    :try_start_0
    iget-boolean v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mFinished:Z

    if-nez v0, :cond_2

    .line 298
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    :try_start_1
    iget-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setAllowFds(Z)Z

    .line 304
    :cond_0
    iget-boolean v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mOrderedHint:Z

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mPendingResultExt:Landroid/content/IPendingResultExt;

    iget v2, p0, Landroid/content/BroadcastReceiver$PendingResult;->mFlags:I

    invoke-interface {v0, v2, v1}, Landroid/content/IPendingResultExt;->setBroadcastState(II)V

    .line 309
    iget-object v4, p0, Landroid/content/BroadcastReceiver$PendingResult;->mToken:Landroid/os/IBinder;

    iget v5, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultCode:I

    iget-object v6, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultData:Ljava/lang/String;

    iget-object v7, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    iget-boolean v8, p0, Landroid/content/BroadcastReceiver$PendingResult;->mAbortBroadcast:Z

    iget v9, p0, Landroid/content/BroadcastReceiver$PendingResult;->mFlags:I

    move-object v3, p1

    invoke-interface/range {v3 .. v9}, Landroid/app/IActivityManager;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;ZI)V

    goto :goto_0

    .line 320
    :cond_1
    iget-object v1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mPendingResultExt:Landroid/content/IPendingResultExt;

    iget-object v2, p0, Landroid/content/BroadcastReceiver$PendingResult;->mToken:Landroid/os/IBinder;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Landroid/content/IPendingResultExt;->finishNotOrderReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 328
    :goto_0
    goto :goto_1

    .line 323
    :catch_0
    move-exception v0

    .line 326
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    const-string v1, "ActivityThread"

    const-string/jumbo v2, "sendFinished RemoteException:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 329
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1
    monitor-exit p0

    .line 330
    return-void

    .line 296
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Broadcast already finished"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/content/BroadcastReceiver$PendingResult;
    .end local p1    # "am":Landroid/app/IActivityManager;
    throw v0

    .line 329
    .restart local p0    # "this":Landroid/content/BroadcastReceiver$PendingResult;
    .restart local p1    # "am":Landroid/app/IActivityManager;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public greylist-max-o setExtrasClassLoader(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "cl"    # Ljava/lang/ClassLoader;

    .line 287
    iget-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 290
    :cond_0
    return-void
.end method

.method public final whitelist setResult(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 202
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->checkSynchronousHint()V

    .line 203
    iput p1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultCode:I

    .line 204
    iput-object p2, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultData:Ljava/lang/String;

    .line 205
    iput-object p3, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    .line 206
    return-void
.end method

.method public final whitelist setResultCode(I)V
    .locals 0
    .param p1, "code"    # I

    .line 142
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->checkSynchronousHint()V

    .line 143
    iput p1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultCode:I

    .line 144
    return-void
.end method

.method public final whitelist setResultData(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 161
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->checkSynchronousHint()V

    .line 162
    iput-object p1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultData:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public final whitelist setResultExtras(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 180
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->checkSynchronousHint()V

    .line 181
    iput-object p1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    .line 182
    return-void
.end method
