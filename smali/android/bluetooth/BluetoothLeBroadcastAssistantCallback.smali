.class public Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;
.super Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback$Stub;
.source "BluetoothLeBroadcastAssistantCallback.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field blacklist mAdapter:Landroid/bluetooth/IBluetoothLeBroadcastAssistant;

.field private final blacklist mCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsRegistered:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 33
    const-class v0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/bluetooth/IBluetoothLeBroadcastAssistant;)V
    .locals 1
    .param p1, "adapter"    # Landroid/bluetooth/IBluetoothLeBroadcastAssistant;

    .line 39
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback$Stub;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mIsRegistered:Z

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    .line 40
    iput-object p1, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mAdapter:Landroid/bluetooth/IBluetoothLeBroadcastAssistant;

    .line 41
    return-void
.end method

.method static synthetic blacklist lambda$onReceiveStateChanged$11(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothLeBroadcastReceiveState;)V
    .locals 0
    .param p0, "cb"    # Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "sourceId"    # I
    .param p3, "state"    # Landroid/bluetooth/BluetoothLeBroadcastReceiveState;

    .line 278
    invoke-interface {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;->onReceiveStateChanged(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothLeBroadcastReceiveState;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSearchStartFailed$1(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;I)V
    .locals 0
    .param p0, "cb"    # Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .param p1, "reason"    # I

    .line 126
    invoke-interface {p0, p1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;->onSearchStartFailed(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onSearchStarted$0(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;I)V
    .locals 0
    .param p0, "cb"    # Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .param p1, "reason"    # I

    .line 111
    invoke-interface {p0, p1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;->onSearchStarted(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onSearchStopFailed$3(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;I)V
    .locals 0
    .param p0, "cb"    # Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .param p1, "reason"    # I

    .line 156
    invoke-interface {p0, p1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;->onSearchStopFailed(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onSearchStopped$2(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;I)V
    .locals 0
    .param p0, "cb"    # Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .param p1, "reason"    # I

    .line 141
    invoke-interface {p0, p1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;->onSearchStopped(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onSourceAddFailed$6(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothLeBroadcastMetadata;I)V
    .locals 0
    .param p0, "cb"    # Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "source"    # Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    .param p3, "reason"    # I

    .line 202
    invoke-interface {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;->onSourceAddFailed(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothLeBroadcastMetadata;I)V

    return-void
.end method

.method static synthetic blacklist lambda$onSourceAdded$5(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .param p0, "cb"    # Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "sourceId"    # I
    .param p3, "reason"    # I

    .line 186
    invoke-interface {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;->onSourceAdded(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic blacklist lambda$onSourceFound$4(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .locals 0
    .param p0, "cb"    # Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .param p1, "source"    # Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    .line 171
    invoke-interface {p0, p1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;->onSourceFound(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSourceModified$7(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .param p0, "cb"    # Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "sourceId"    # I
    .param p3, "reason"    # I

    .line 217
    invoke-interface {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;->onSourceModified(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic blacklist lambda$onSourceModifyFailed$8(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .param p0, "cb"    # Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "sourceId"    # I
    .param p3, "reason"    # I

    .line 232
    invoke-interface {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;->onSourceModifyFailed(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic blacklist lambda$onSourceRemoveFailed$10(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .param p0, "cb"    # Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "sourceId"    # I
    .param p3, "reason"    # I

    .line 262
    invoke-interface {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;->onSourceRemoveFailed(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic blacklist lambda$onSourceRemoved$9(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .param p0, "cb"    # Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "sourceId"    # I
    .param p3, "reason"    # I

    .line 247
    invoke-interface {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;->onSourceRemoved(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method


# virtual methods
.method public blacklist isAtLeastOneCallbackRegistered()Z
    .locals 1

    .line 99
    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist onReceiveStateChanged(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothLeBroadcastReceiveState;)V
    .locals 6
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "sourceId"    # I
    .param p3, "state"    # Landroid/bluetooth/BluetoothLeBroadcastReceiveState;

    .line 273
    monitor-enter p0

    .line 274
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    .line 275
    .local v1, "cb":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    .line 276
    .local v2, "executor":Ljava/util/concurrent/Executor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 278
    .local v3, "identity":J
    :try_start_1
    new-instance v5, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda2;

    invoke-direct {v5, v1, p1, p2, p3}, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda2;-><init>(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothLeBroadcastReceiveState;)V

    invoke-interface {v2, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 281
    nop

    .line 282
    .end local v1    # "cb":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .end local v3    # "identity":J
    goto :goto_0

    .line 280
    .restart local v1    # "cb":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .restart local v2    # "executor":Ljava/util/concurrent/Executor;
    .restart local v3    # "identity":J
    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 281
    nop

    .end local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;
    .end local p1    # "sink":Landroid/bluetooth/BluetoothDevice;
    .end local p2    # "sourceId":I
    .end local p3    # "state":Landroid/bluetooth/BluetoothLeBroadcastReceiveState;
    throw v0

    .line 283
    .end local v1    # "cb":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .end local v3    # "identity":J
    .restart local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;
    .restart local p1    # "sink":Landroid/bluetooth/BluetoothDevice;
    .restart local p2    # "sourceId":I
    .restart local p3    # "state":Landroid/bluetooth/BluetoothLeBroadcastReceiveState;
    :cond_0
    monitor-exit p0

    .line 284
    return-void

    .line 283
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public blacklist onSearchStartFailed(I)V
    .locals 6
    .param p1, "reason"    # I

    .line 121
    monitor-enter p0

    .line 122
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    .line 123
    .local v1, "cb":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    .line 124
    .local v2, "executor":Ljava/util/concurrent/Executor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 126
    .local v3, "identity":J
    :try_start_1
    new-instance v5, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda9;

    invoke-direct {v5, v1, p1}, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda9;-><init>(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;I)V

    invoke-interface {v2, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 129
    nop

    .line 130
    .end local v1    # "cb":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .end local v3    # "identity":J
    goto :goto_0

    .line 128
    .restart local v1    # "cb":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .restart local v2    # "executor":Ljava/util/concurrent/Executor;
    .restart local v3    # "identity":J
    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 129
    nop

    .end local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;
    .end local p1    # "reason":I
    throw v0

    .line 131
    .end local v1    # "cb":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .end local v3    # "identity":J
    .restart local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;
    .restart local p1    # "reason":I
    :cond_0
    monitor-exit p0

    .line 132
    return-void

    .line 131
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public blacklist onSearchStarted(I)V
    .locals 6
    .param p1, "reason"    # I

    .line 106
    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    .line 108
    .local v1, "cb":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    .line 109
    .local v2, "executor":Ljava/util/concurrent/Executor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 111
    .local v3, "identity":J
    :try_start_1
    new-instance v5, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda6;

    invoke-direct {v5, v1, p1}, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda6;-><init>(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;I)V

    invoke-interface {v2, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 114
    nop

    .line 115
    .end local v1    # "cb":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .end local v3    # "identity":J
    goto :goto_0

    .line 113
    .restart local v1    # "cb":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .restart local v2    # "executor":Ljava/util/concurrent/Executor;
    .restart local v3    # "identity":J
    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 114
    nop

    .end local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;
    .end local p1    # "reason":I
    throw v0

    .line 116
    .end local v1    # "cb":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .end local v3    # "identity":J
    .restart local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;
    .restart local p1    # "reason":I
    :cond_0
    monitor-exit p0

    .line 117
    return-void

    .line 116
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public blacklist onSearchStopFailed(I)V
    .locals 6
    .param p1, "reason"    # I

    .line 151
    monitor-enter p0

    .line 152
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    .line 153
    .local v1, "cb":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    .line 154
    .local v2, "executor":Ljava/util/concurrent/Executor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 156
    .local v3, "identity":J
    :try_start_1
    new-instance v5, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda1;

    invoke-direct {v5, v1, p1}, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda1;-><init>(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;I)V

    invoke-interface {v2, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 159
    nop

    .line 160
    .end local v1    # "cb":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .end local v3    # "identity":J
    goto :goto_0

    .line 158
    .restart local v1    # "cb":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .restart local v2    # "executor":Ljava/util/concurrent/Executor;
    .restart local v3    # "identity":J
    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 159
    nop

    .end local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;
    .end local p1    # "reason":I
    throw v0

    .line 161
    .end local v1    # "cb":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .end local v3    # "identity":J
    .restart local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;
    .restart local p1    # "reason":I
    :cond_0
    monitor-exit p0

    .line 162
    return-void

    .line 161
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public blacklist onSearchStopped(I)V
    .locals 6
    .param p1, "reason"    # I

    .line 136
    monitor-enter p0

    .line 137
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    .line 138
    .local v1, "cb":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    .line 139
    .local v2, "executor":Ljava/util/concurrent/Executor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 141
    .local v3, "identity":J
    :try_start_1
    new-instance v5, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda5;

    invoke-direct {v5, v1, p1}, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda5;-><init>(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;I)V

    invoke-interface {v2, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 144
    nop

    .line 145
    .end local v1    # "cb":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .end local v3    # "identity":J
    goto :goto_0

    .line 143
    .restart local v1    # "cb":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .restart local v2    # "executor":Ljava/util/concurrent/Executor;
    .restart local v3    # "identity":J
    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 144
    nop

    .end local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;
    .end local p1    # "reason":I
    throw v0

    .line 146
    .end local v1    # "cb":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .end local v3    # "identity":J
    .restart local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;
    .restart local p1    # "reason":I
    :cond_0
    monitor-exit p0

    .line 147
    return-void

    .line 146
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public blacklist onSourceAddFailed(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothLeBroadcastMetadata;I)V
    .locals 6
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "source"    # Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    .param p3, "reason"    # I

    .line 197
    monitor-enter p0

    .line 198
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    .line 199
    .local v1, "cb":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    .line 200
    .local v2, "executor":Ljava/util/concurrent/Executor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 202
    .local v3, "identity":J
    :try_start_1
    new-instance v5, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda7;

    invoke-direct {v5, v1, p1, p2, p3}, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda7;-><init>(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothLeBroadcastMetadata;I)V

    invoke-interface {v2, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 205
    nop

    .line 206
    .end local v1    # "cb":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .end local v3    # "identity":J
    goto :goto_0

    .line 204
    .restart local v1    # "cb":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .restart local v2    # "executor":Ljava/util/concurrent/Executor;
    .restart local v3    # "identity":J
    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 205
    nop

    .end local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;
    .end local p1    # "sink":Landroid/bluetooth/BluetoothDevice;
    .end local p2    # "source":Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    .end local p3    # "reason":I
    throw v0

    .line 207
    .end local v1    # "cb":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .end local v3    # "identity":J
    .restart local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;
    .restart local p1    # "sink":Landroid/bluetooth/BluetoothDevice;
    .restart local p2    # "source":Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    .restart local p3    # "reason":I
    :cond_0
    monitor-exit p0

    .line 208
    return-void

    .line 207
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public blacklist onSourceAdded(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 6
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "sourceId"    # I
    .param p3, "reason"    # I

    .line 181
    monitor-enter p0

    .line 182
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    .line 183
    .local v1, "cb":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    .line 184
    .local v2, "executor":Ljava/util/concurrent/Executor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 186
    .local v3, "identity":J
    :try_start_1
    new-instance v5, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda3;

    invoke-direct {v5, v1, p1, p2, p3}, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda3;-><init>(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothDevice;II)V

    invoke-interface {v2, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 189
    nop

    .line 190
    .end local v1    # "cb":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .end local v3    # "identity":J
    goto :goto_0

    .line 188
    .restart local v1    # "cb":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .restart local v2    # "executor":Ljava/util/concurrent/Executor;
    .restart local v3    # "identity":J
    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 189
    nop

    .end local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;
    .end local p1    # "sink":Landroid/bluetooth/BluetoothDevice;
    .end local p2    # "sourceId":I
    .end local p3    # "reason":I
    throw v0

    .line 191
    .end local v1    # "cb":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .end local v3    # "identity":J
    .restart local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;
    .restart local p1    # "sink":Landroid/bluetooth/BluetoothDevice;
    .restart local p2    # "sourceId":I
    .restart local p3    # "reason":I
    :cond_0
    monitor-exit p0

    .line 192
    return-void

    .line 191
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public blacklist onSourceFound(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .locals 6
    .param p1, "source"    # Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    .line 166
    monitor-enter p0

    .line 167
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    .line 168
    .local v1, "cb":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    .line 169
    .local v2, "executor":Ljava/util/concurrent/Executor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 171
    .local v3, "identity":J
    :try_start_1
    new-instance v5, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda0;

    invoke-direct {v5, v1, p1}, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    invoke-interface {v2, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 174
    nop

    .line 175
    .end local v1    # "cb":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .end local v3    # "identity":J
    goto :goto_0

    .line 173
    .restart local v1    # "cb":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .restart local v2    # "executor":Ljava/util/concurrent/Executor;
    .restart local v3    # "identity":J
    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 174
    nop

    .end local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;
    .end local p1    # "source":Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    throw v0

    .line 176
    .end local v1    # "cb":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .end local v3    # "identity":J
    .restart local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;
    .restart local p1    # "source":Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    :cond_0
    monitor-exit p0

    .line 177
    return-void

    .line 176
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public blacklist onSourceModified(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 6
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "sourceId"    # I
    .param p3, "reason"    # I

    .line 212
    monitor-enter p0

    .line 213
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    .line 214
    .local v1, "cb":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    .line 215
    .local v2, "executor":Ljava/util/concurrent/Executor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 217
    .local v3, "identity":J
    :try_start_1
    new-instance v5, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda4;

    invoke-direct {v5, v1, p1, p2, p3}, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda4;-><init>(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothDevice;II)V

    invoke-interface {v2, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 220
    nop

    .line 221
    .end local v1    # "cb":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .end local v3    # "identity":J
    goto :goto_0

    .line 219
    .restart local v1    # "cb":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .restart local v2    # "executor":Ljava/util/concurrent/Executor;
    .restart local v3    # "identity":J
    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 220
    nop

    .end local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;
    .end local p1    # "sink":Landroid/bluetooth/BluetoothDevice;
    .end local p2    # "sourceId":I
    .end local p3    # "reason":I
    throw v0

    .line 222
    .end local v1    # "cb":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .end local v3    # "identity":J
    .restart local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;
    .restart local p1    # "sink":Landroid/bluetooth/BluetoothDevice;
    .restart local p2    # "sourceId":I
    .restart local p3    # "reason":I
    :cond_0
    monitor-exit p0

    .line 223
    return-void

    .line 222
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public blacklist onSourceModifyFailed(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 6
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "sourceId"    # I
    .param p3, "reason"    # I

    .line 227
    monitor-enter p0

    .line 228
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    .line 229
    .local v1, "cb":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    .line 230
    .local v2, "executor":Ljava/util/concurrent/Executor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 232
    .local v3, "identity":J
    :try_start_1
    new-instance v5, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda8;

    invoke-direct {v5, v1, p1, p2, p3}, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda8;-><init>(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothDevice;II)V

    invoke-interface {v2, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 235
    nop

    .line 236
    .end local v1    # "cb":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .end local v3    # "identity":J
    goto :goto_0

    .line 234
    .restart local v1    # "cb":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .restart local v2    # "executor":Ljava/util/concurrent/Executor;
    .restart local v3    # "identity":J
    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 235
    nop

    .end local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;
    .end local p1    # "sink":Landroid/bluetooth/BluetoothDevice;
    .end local p2    # "sourceId":I
    .end local p3    # "reason":I
    throw v0

    .line 237
    .end local v1    # "cb":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .end local v3    # "identity":J
    .restart local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;
    .restart local p1    # "sink":Landroid/bluetooth/BluetoothDevice;
    .restart local p2    # "sourceId":I
    .restart local p3    # "reason":I
    :cond_0
    monitor-exit p0

    .line 238
    return-void

    .line 237
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public blacklist onSourceRemoveFailed(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 6
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "sourceId"    # I
    .param p3, "reason"    # I

    .line 257
    monitor-enter p0

    .line 258
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    .line 259
    .local v1, "cb":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    .line 260
    .local v2, "executor":Ljava/util/concurrent/Executor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 262
    .local v3, "identity":J
    :try_start_1
    new-instance v5, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda11;

    invoke-direct {v5, v1, p1, p2, p3}, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda11;-><init>(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothDevice;II)V

    invoke-interface {v2, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 265
    nop

    .line 266
    .end local v1    # "cb":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .end local v3    # "identity":J
    goto :goto_0

    .line 264
    .restart local v1    # "cb":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .restart local v2    # "executor":Ljava/util/concurrent/Executor;
    .restart local v3    # "identity":J
    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 265
    nop

    .end local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;
    .end local p1    # "sink":Landroid/bluetooth/BluetoothDevice;
    .end local p2    # "sourceId":I
    .end local p3    # "reason":I
    throw v0

    .line 267
    .end local v1    # "cb":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .end local v3    # "identity":J
    .restart local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;
    .restart local p1    # "sink":Landroid/bluetooth/BluetoothDevice;
    .restart local p2    # "sourceId":I
    .restart local p3    # "reason":I
    :cond_0
    monitor-exit p0

    .line 268
    return-void

    .line 267
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public blacklist onSourceRemoved(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 6
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "sourceId"    # I
    .param p3, "reason"    # I

    .line 242
    monitor-enter p0

    .line 243
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    .line 244
    .local v1, "cb":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    .line 245
    .local v2, "executor":Ljava/util/concurrent/Executor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 247
    .local v3, "identity":J
    :try_start_1
    new-instance v5, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda10;

    invoke-direct {v5, v1, p1, p2, p3}, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda10;-><init>(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothDevice;II)V

    invoke-interface {v2, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 250
    nop

    .line 251
    .end local v1    # "cb":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .end local v3    # "identity":J
    goto :goto_0

    .line 249
    .restart local v1    # "cb":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .restart local v2    # "executor":Ljava/util/concurrent/Executor;
    .restart local v3    # "identity":J
    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 250
    nop

    .end local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;
    .end local p1    # "sink":Landroid/bluetooth/BluetoothDevice;
    .end local p2    # "sourceId":I
    .end local p3    # "reason":I
    throw v0

    .line 252
    .end local v1    # "cb":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .end local v3    # "identity":J
    .restart local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;
    .restart local p1    # "sink":Landroid/bluetooth/BluetoothDevice;
    .restart local p2    # "sourceId":I
    .restart local p3    # "reason":I
    :cond_0
    monitor-exit p0

    .line 253
    return-void

    .line 252
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public blacklist register(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;)V
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    .line 51
    monitor-enter p0

    .line 52
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mIsRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 59
    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mAdapter:Landroid/bluetooth/IBluetoothLeBroadcastAssistant;

    invoke-interface {v0, p0}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant;->registerCallback(Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback;)V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mIsRegistered:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    sget-object v1, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->TAG:Ljava/lang/String;

    const-string v2, "Failed to register broadcast assistant callback"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    monitor-exit p0

    .line 67
    return-void

    .line 53
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback is already registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    throw v0

    .line 66
    .restart local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public blacklist unregister(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;)V
    .locals 3
    .param p1, "callback"    # Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    .line 75
    monitor-enter p0

    .line 76
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mIsRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 82
    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mAdapter:Landroid/bluetooth/IBluetoothLeBroadcastAssistant;

    invoke-interface {v0, p0}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant;->unregisterCallback(Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback;)V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mIsRegistered:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    sget-object v1, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->TAG:Ljava/lang/String;

    const-string v2, "Failed to unregister callback with service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    monitor-exit p0

    .line 90
    return-void

    .line 77
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback was not registered before"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;
    .end local p1    # "callback":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    throw v0

    .line 89
    .restart local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;
    .restart local p1    # "callback":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
