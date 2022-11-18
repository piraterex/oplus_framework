.class Landroid/bluetooth/BluetoothLeBroadcast$2;
.super Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub;
.source "BluetoothLeBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeBroadcast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/bluetooth/BluetoothLeBroadcast;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothLeBroadcast;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothLeBroadcast;

    .line 80
    iput-object p1, p0, Landroid/bluetooth/BluetoothLeBroadcast$2;->this$0:Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onBroadcastMetadataChanged$8(Landroid/bluetooth/BluetoothLeBroadcast$Callback;ILandroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .locals 0
    .param p0, "callback"    # Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    .param p1, "broadcastId"    # I
    .param p2, "metadata"    # Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    .line 168
    invoke-interface {p0, p1, p2}, Landroid/bluetooth/BluetoothLeBroadcast$Callback;->onBroadcastMetadataChanged(ILandroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    return-void
.end method

.method static synthetic blacklist lambda$onBroadcastStartFailed$1(Landroid/bluetooth/BluetoothLeBroadcast$Callback;I)V
    .locals 0
    .param p0, "callback"    # Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    .param p1, "reason"    # I

    .line 97
    invoke-interface {p0, p1}, Landroid/bluetooth/BluetoothLeBroadcast$Callback;->onBroadcastStartFailed(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onBroadcastStarted$0(Landroid/bluetooth/BluetoothLeBroadcast$Callback;II)V
    .locals 0
    .param p0, "callback"    # Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    .param p1, "reason"    # I
    .param p2, "broadcastId"    # I

    .line 87
    invoke-interface {p0, p1, p2}, Landroid/bluetooth/BluetoothLeBroadcast$Callback;->onBroadcastStarted(II)V

    return-void
.end method

.method static synthetic blacklist lambda$onBroadcastStopFailed$3(Landroid/bluetooth/BluetoothLeBroadcast$Callback;I)V
    .locals 0
    .param p0, "callback"    # Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    .param p1, "reason"    # I

    .line 117
    invoke-interface {p0, p1}, Landroid/bluetooth/BluetoothLeBroadcast$Callback;->onBroadcastStopFailed(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onBroadcastStopped$2(Landroid/bluetooth/BluetoothLeBroadcast$Callback;II)V
    .locals 0
    .param p0, "callback"    # Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    .param p1, "reason"    # I
    .param p2, "broadcastId"    # I

    .line 107
    invoke-interface {p0, p1, p2}, Landroid/bluetooth/BluetoothLeBroadcast$Callback;->onBroadcastStopped(II)V

    return-void
.end method

.method static synthetic blacklist lambda$onBroadcastUpdateFailed$7(Landroid/bluetooth/BluetoothLeBroadcast$Callback;II)V
    .locals 0
    .param p0, "callback"    # Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    .param p1, "reason"    # I
    .param p2, "broadcastId"    # I

    .line 157
    invoke-interface {p0, p1, p2}, Landroid/bluetooth/BluetoothLeBroadcast$Callback;->onBroadcastUpdateFailed(II)V

    return-void
.end method

.method static synthetic blacklist lambda$onBroadcastUpdated$6(Landroid/bluetooth/BluetoothLeBroadcast$Callback;II)V
    .locals 0
    .param p0, "callback"    # Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    .param p1, "reason"    # I
    .param p2, "broadcastId"    # I

    .line 147
    invoke-interface {p0, p1, p2}, Landroid/bluetooth/BluetoothLeBroadcast$Callback;->onBroadcastUpdated(II)V

    return-void
.end method

.method static synthetic blacklist lambda$onPlaybackStarted$4(Landroid/bluetooth/BluetoothLeBroadcast$Callback;II)V
    .locals 0
    .param p0, "callback"    # Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    .param p1, "reason"    # I
    .param p2, "broadcastId"    # I

    .line 127
    invoke-interface {p0, p1, p2}, Landroid/bluetooth/BluetoothLeBroadcast$Callback;->onPlaybackStarted(II)V

    return-void
.end method

.method static synthetic blacklist lambda$onPlaybackStopped$5(Landroid/bluetooth/BluetoothLeBroadcast$Callback;II)V
    .locals 0
    .param p0, "callback"    # Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    .param p1, "reason"    # I
    .param p2, "broadcastId"    # I

    .line 137
    invoke-interface {p0, p1, p2}, Landroid/bluetooth/BluetoothLeBroadcast$Callback;->onPlaybackStopped(II)V

    return-void
.end method


# virtual methods
.method public blacklist onBroadcastMetadataChanged(ILandroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .locals 5
    .param p1, "broadcastId"    # I
    .param p2, "metadata"    # Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    .line 165
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast$2;->this$0:Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcast;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeBroadcast;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 166
    .local v1, "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcast$Callback;Ljava/util/concurrent/Executor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    .line 167
    .local v2, "callback":Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 168
    .local v3, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Landroid/bluetooth/BluetoothLeBroadcast$2$$ExternalSyntheticLambda8;

    invoke-direct {v4, v2, p1, p2}, Landroid/bluetooth/BluetoothLeBroadcast$2$$ExternalSyntheticLambda8;-><init>(Landroid/bluetooth/BluetoothLeBroadcast$Callback;ILandroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 169
    .end local v1    # "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcast$Callback;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "callback":Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_0

    .line 170
    :cond_0
    return-void
.end method

.method public blacklist onBroadcastStartFailed(I)V
    .locals 5
    .param p1, "reason"    # I

    .line 94
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast$2;->this$0:Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcast;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeBroadcast;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 95
    .local v1, "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcast$Callback;Ljava/util/concurrent/Executor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    .line 96
    .local v2, "callback":Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 97
    .local v3, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Landroid/bluetooth/BluetoothLeBroadcast$2$$ExternalSyntheticLambda4;

    invoke-direct {v4, v2, p1}, Landroid/bluetooth/BluetoothLeBroadcast$2$$ExternalSyntheticLambda4;-><init>(Landroid/bluetooth/BluetoothLeBroadcast$Callback;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 98
    .end local v1    # "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcast$Callback;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "callback":Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_0

    .line 99
    :cond_0
    return-void
.end method

.method public blacklist onBroadcastStarted(II)V
    .locals 5
    .param p1, "reason"    # I
    .param p2, "broadcastId"    # I

    .line 84
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast$2;->this$0:Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcast;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeBroadcast;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 85
    .local v1, "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcast$Callback;Ljava/util/concurrent/Executor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    .line 86
    .local v2, "callback":Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 87
    .local v3, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Landroid/bluetooth/BluetoothLeBroadcast$2$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, p1, p2}, Landroid/bluetooth/BluetoothLeBroadcast$2$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothLeBroadcast$Callback;II)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 88
    .end local v1    # "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcast$Callback;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "callback":Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_0

    .line 89
    :cond_0
    return-void
.end method

.method public blacklist onBroadcastStopFailed(I)V
    .locals 5
    .param p1, "reason"    # I

    .line 114
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast$2;->this$0:Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcast;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeBroadcast;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 115
    .local v1, "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcast$Callback;Ljava/util/concurrent/Executor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    .line 116
    .local v2, "callback":Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 117
    .local v3, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Landroid/bluetooth/BluetoothLeBroadcast$2$$ExternalSyntheticLambda3;

    invoke-direct {v4, v2, p1}, Landroid/bluetooth/BluetoothLeBroadcast$2$$ExternalSyntheticLambda3;-><init>(Landroid/bluetooth/BluetoothLeBroadcast$Callback;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 118
    .end local v1    # "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcast$Callback;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "callback":Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_0

    .line 119
    :cond_0
    return-void
.end method

.method public blacklist onBroadcastStopped(II)V
    .locals 5
    .param p1, "reason"    # I
    .param p2, "broadcastId"    # I

    .line 104
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast$2;->this$0:Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcast;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeBroadcast;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 105
    .local v1, "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcast$Callback;Ljava/util/concurrent/Executor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    .line 106
    .local v2, "callback":Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 107
    .local v3, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Landroid/bluetooth/BluetoothLeBroadcast$2$$ExternalSyntheticLambda7;

    invoke-direct {v4, v2, p1, p2}, Landroid/bluetooth/BluetoothLeBroadcast$2$$ExternalSyntheticLambda7;-><init>(Landroid/bluetooth/BluetoothLeBroadcast$Callback;II)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 108
    .end local v1    # "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcast$Callback;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "callback":Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_0

    .line 109
    :cond_0
    return-void
.end method

.method public blacklist onBroadcastUpdateFailed(II)V
    .locals 5
    .param p1, "reason"    # I
    .param p2, "broadcastId"    # I

    .line 154
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast$2;->this$0:Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcast;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeBroadcast;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 155
    .local v1, "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcast$Callback;Ljava/util/concurrent/Executor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    .line 156
    .local v2, "callback":Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 157
    .local v3, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Landroid/bluetooth/BluetoothLeBroadcast$2$$ExternalSyntheticLambda5;

    invoke-direct {v4, v2, p1, p2}, Landroid/bluetooth/BluetoothLeBroadcast$2$$ExternalSyntheticLambda5;-><init>(Landroid/bluetooth/BluetoothLeBroadcast$Callback;II)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 158
    .end local v1    # "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcast$Callback;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "callback":Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_0

    .line 159
    :cond_0
    return-void
.end method

.method public blacklist onBroadcastUpdated(II)V
    .locals 5
    .param p1, "reason"    # I
    .param p2, "broadcastId"    # I

    .line 144
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast$2;->this$0:Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcast;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeBroadcast;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 145
    .local v1, "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcast$Callback;Ljava/util/concurrent/Executor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    .line 146
    .local v2, "callback":Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 147
    .local v3, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Landroid/bluetooth/BluetoothLeBroadcast$2$$ExternalSyntheticLambda1;

    invoke-direct {v4, v2, p1, p2}, Landroid/bluetooth/BluetoothLeBroadcast$2$$ExternalSyntheticLambda1;-><init>(Landroid/bluetooth/BluetoothLeBroadcast$Callback;II)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 148
    .end local v1    # "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcast$Callback;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "callback":Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_0

    .line 149
    :cond_0
    return-void
.end method

.method public blacklist onPlaybackStarted(II)V
    .locals 5
    .param p1, "reason"    # I
    .param p2, "broadcastId"    # I

    .line 124
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast$2;->this$0:Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcast;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeBroadcast;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 125
    .local v1, "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcast$Callback;Ljava/util/concurrent/Executor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    .line 126
    .local v2, "callback":Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 127
    .local v3, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Landroid/bluetooth/BluetoothLeBroadcast$2$$ExternalSyntheticLambda6;

    invoke-direct {v4, v2, p1, p2}, Landroid/bluetooth/BluetoothLeBroadcast$2$$ExternalSyntheticLambda6;-><init>(Landroid/bluetooth/BluetoothLeBroadcast$Callback;II)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 128
    .end local v1    # "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcast$Callback;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "callback":Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_0

    .line 129
    :cond_0
    return-void
.end method

.method public blacklist onPlaybackStopped(II)V
    .locals 5
    .param p1, "reason"    # I
    .param p2, "broadcastId"    # I

    .line 134
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast$2;->this$0:Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcast;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeBroadcast;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 135
    .local v1, "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcast$Callback;Ljava/util/concurrent/Executor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    .line 136
    .local v2, "callback":Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 137
    .local v3, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Landroid/bluetooth/BluetoothLeBroadcast$2$$ExternalSyntheticLambda2;

    invoke-direct {v4, v2, p1, p2}, Landroid/bluetooth/BluetoothLeBroadcast$2$$ExternalSyntheticLambda2;-><init>(Landroid/bluetooth/BluetoothLeBroadcast$Callback;II)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 138
    .end local v1    # "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcast$Callback;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "callback":Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_0

    .line 139
    :cond_0
    return-void
.end method
