.class public Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;
.super Landroid/hardware/camera2/CameraInjectionSession;
.source "CameraInjectionSessionImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$CameraInjectionCallback;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "CameraInjectionSessionImpl"


# instance fields
.field private final blacklist mCallback:Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$CameraInjectionCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mInjectionSession:Landroid/hardware/camera2/ICameraInjectionSession;

.field private final blacklist mInjectionStatusCallback:Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;

.field private final blacklist mInterfaceLock:Ljava/lang/Object;


# direct methods
.method public static synthetic blacklist $r8$lambda$rS7LgMn0Lln0LD7SkXkB2FaVZZI(Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->notifyError(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInjectionStatusCallback(Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;)Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mInjectionStatusCallback:Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 45
    invoke-direct {p0}, Landroid/hardware/camera2/CameraInjectionSession;-><init>()V

    .line 39
    new-instance v0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$CameraInjectionCallback;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$CameraInjectionCallback;-><init>(Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mCallback:Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$CameraInjectionCallback;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    .line 46
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mInjectionStatusCallback:Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;

    .line 47
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 48
    return-void
.end method

.method private blacklist notifyError(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .line 198
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mInjectionSession:Landroid/hardware/camera2/ICameraInjectionSession;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mInjectionStatusCallback:Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;->onInjectionError(I)V

    .line 201
    :cond_0
    return-void
.end method

.method private blacklist scheduleNotifyError(I)V
    .locals 5
    .param p1, "errorCode"    # I

    .line 187
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 189
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$$ExternalSyntheticLambda0;-><init>()V

    .line 191
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 189
    invoke-static {v3, p0, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    .line 191
    invoke-interface {v3}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    .line 189
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 194
    nop

    .line 195
    return-void

    .line 193
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 194
    throw v2
.end method


# virtual methods
.method public whitelist binderDied()V
    .locals 5

    .line 76
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_0
    const-string v1, "CameraInjectionSessionImpl"

    const-string v2, "CameraInjectionSessionImpl died unexpectedly"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mInjectionSession:Landroid/hardware/camera2/ICameraInjectionSession;

    if-nez v1, :cond_0

    .line 80
    monitor-exit v0

    return-void

    .line 83
    :cond_0
    new-instance v1, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$1;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$1;-><init>(Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;)V

    .line 90
    .local v1, "r":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 92
    .local v2, "ident":J
    :try_start_1
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v4, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 95
    nop

    .line 96
    .end local v1    # "r":Ljava/lang/Runnable;
    .end local v2    # "ident":J
    monitor-exit v0

    .line 97
    return-void

    .line 94
    .restart local v1    # "r":Ljava/lang/Runnable;
    .restart local v2    # "ident":J
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 95
    nop

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;
    throw v4

    .line 96
    .end local v1    # "r":Ljava/lang/Runnable;
    .end local v2    # "ident":J
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public whitelist test-api close()V
    .locals 3

    .line 52
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 54
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mInjectionSession:Landroid/hardware/camera2/ICameraInjectionSession;

    if-eqz v1, :cond_0

    .line 55
    invoke-interface {v1}, Landroid/hardware/camera2/ICameraInjectionSession;->stopInjection()V

    .line 56
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mInjectionSession:Landroid/hardware/camera2/ICameraInjectionSession;

    invoke-interface {v1}, Landroid/hardware/camera2/ICameraInjectionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 57
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mInjectionSession:Landroid/hardware/camera2/ICameraInjectionSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_0
    goto :goto_0

    .line 62
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 59
    :catch_0
    move-exception v1

    .line 62
    :goto_0
    :try_start_1
    monitor-exit v0

    .line 63
    return-void

    .line 62
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 68
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 71
    nop

    .line 72
    return-void

    .line 70
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 71
    throw v0
.end method

.method public blacklist getCallback()Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$CameraInjectionCallback;
    .locals 1

    .line 100
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mCallback:Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$CameraInjectionCallback;

    return-object v0
.end method

.method public blacklist onInjectionError(I)V
    .locals 6
    .param p1, "errorCode"    # I

    .line 156
    const-string v0, "CameraInjectionSessionImpl"

    const-string v1, "Injection session error received, code %d"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 157
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 156
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mInjectionSession:Landroid/hardware/camera2/ICameraInjectionSession;

    if-nez v1, :cond_0

    .line 161
    monitor-exit v0

    return-void

    .line 164
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 179
    const-string v1, "CameraInjectionSessionImpl"

    goto :goto_0

    .line 174
    :pswitch_0
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->scheduleNotifyError(I)V

    .line 177
    goto :goto_1

    .line 170
    :pswitch_1
    invoke-direct {p0, v2}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->scheduleNotifyError(I)V

    .line 172
    goto :goto_1

    .line 166
    :pswitch_2
    invoke-direct {p0, v5}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->scheduleNotifyError(I)V

    .line 168
    goto :goto_1

    .line 179
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown error from injection session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-direct {p0, v2}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->scheduleNotifyError(I)V

    .line 183
    :goto_1
    monitor-exit v0

    .line 184
    return-void

    .line 183
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setRemoteInjectionSession(Landroid/hardware/camera2/ICameraInjectionSession;)V
    .locals 7
    .param p1, "injectionSession"    # Landroid/hardware/camera2/ICameraInjectionSession;

    .line 110
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 111
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 112
    :try_start_0
    const-string v2, "CameraInjectionSessionImpl"

    const-string v3, "The camera injection session has encountered a serious error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->scheduleNotifyError(I)V

    .line 115
    monitor-exit v0

    return-void

    .line 118
    :cond_0
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mInjectionSession:Landroid/hardware/camera2/ICameraInjectionSession;

    .line 120
    invoke-interface {p1}, Landroid/hardware/camera2/ICameraInjectionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 121
    .local v2, "remoteSessionBinder":Landroid/os/IBinder;
    if-nez v2, :cond_1

    .line 122
    const-string v3, "CameraInjectionSessionImpl"

    const-string v4, "The camera injection session has encountered a serious error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->scheduleNotifyError(I)V

    .line 125
    monitor-exit v0

    return-void

    .line 128
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 130
    .local v3, "ident":J
    :try_start_1
    invoke-interface {v2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 131
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$2;

    invoke-direct {v6, p0}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$2;-><init>(Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 138
    :catch_0
    move-exception v5

    .line 139
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->scheduleNotifyError(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 142
    .end local v5    # "e":Landroid/os/RemoteException;
    :try_start_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 143
    :goto_0
    nop

    .line 144
    .end local v2    # "remoteSessionBinder":Landroid/os/IBinder;
    .end local v3    # "ident":J
    monitor-exit v0

    .line 145
    return-void

    .line 142
    .restart local v2    # "remoteSessionBinder":Landroid/os/IBinder;
    .restart local v3    # "ident":J
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 143
    nop

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;
    .end local p1    # "injectionSession":Landroid/hardware/camera2/ICameraInjectionSession;
    throw v1

    .line 144
    .end local v2    # "remoteSessionBinder":Landroid/os/IBinder;
    .end local v3    # "ident":J
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;
    .restart local p1    # "injectionSession":Landroid/hardware/camera2/ICameraInjectionSession;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method
