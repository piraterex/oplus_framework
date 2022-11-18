.class Landroid/bluetooth/BluetoothLeAudio$1;
.super Landroid/bluetooth/IBluetoothLeAudioCallback$Stub;
.source "BluetoothLeAudio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeAudio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/bluetooth/BluetoothLeAudio;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothLeAudio;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothLeAudio;

    .line 141
    iput-object p1, p0, Landroid/bluetooth/BluetoothLeAudio$1;->this$0:Landroid/bluetooth/BluetoothLeAudio;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothLeAudioCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onCodecConfigChanged$0(Landroid/bluetooth/BluetoothLeAudio$Callback;ILandroid/bluetooth/BluetoothLeAudioCodecStatus;)V
    .locals 0
    .param p0, "callback"    # Landroid/bluetooth/BluetoothLeAudio$Callback;
    .param p1, "groupId"    # I
    .param p2, "status"    # Landroid/bluetooth/BluetoothLeAudioCodecStatus;

    .line 149
    invoke-interface {p0, p1, p2}, Landroid/bluetooth/BluetoothLeAudio$Callback;->onCodecConfigChanged(ILandroid/bluetooth/BluetoothLeAudioCodecStatus;)V

    return-void
.end method

.method static synthetic blacklist lambda$onGroupNodeAdded$1(Landroid/bluetooth/BluetoothLeAudio$Callback;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p0, "callback"    # Landroid/bluetooth/BluetoothLeAudio$Callback;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "groupId"    # I

    .line 160
    invoke-interface {p0, p1, p2}, Landroid/bluetooth/BluetoothLeAudio$Callback;->onGroupNodeAdded(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic blacklist lambda$onGroupNodeRemoved$2(Landroid/bluetooth/BluetoothLeAudio$Callback;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p0, "callback"    # Landroid/bluetooth/BluetoothLeAudio$Callback;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "groupId"    # I

    .line 171
    invoke-interface {p0, p1, p2}, Landroid/bluetooth/BluetoothLeAudio$Callback;->onGroupNodeRemoved(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic blacklist lambda$onGroupStatusChanged$3(Landroid/bluetooth/BluetoothLeAudio$Callback;II)V
    .locals 0
    .param p0, "callback"    # Landroid/bluetooth/BluetoothLeAudio$Callback;
    .param p1, "groupId"    # I
    .param p2, "groupStatus"    # I

    .line 181
    invoke-interface {p0, p1, p2}, Landroid/bluetooth/BluetoothLeAudio$Callback;->onGroupStatusChanged(II)V

    return-void
.end method


# virtual methods
.method public blacklist onCodecConfigChanged(ILandroid/bluetooth/BluetoothLeAudioCodecStatus;)V
    .locals 5
    .param p1, "groupId"    # I
    .param p2, "status"    # Landroid/bluetooth/BluetoothLeAudioCodecStatus;

    .line 146
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudio$1;->this$0:Landroid/bluetooth/BluetoothLeAudio;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeAudio;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeAudio;)Ljava/util/Map;

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

    .line 147
    .local v1, "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeAudio$Callback;Ljava/util/concurrent/Executor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeAudio$Callback;

    .line 148
    .local v2, "callback":Landroid/bluetooth/BluetoothLeAudio$Callback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 149
    .local v3, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Landroid/bluetooth/BluetoothLeAudio$1$$ExternalSyntheticLambda1;

    invoke-direct {v4, v2, p1, p2}, Landroid/bluetooth/BluetoothLeAudio$1$$ExternalSyntheticLambda1;-><init>(Landroid/bluetooth/BluetoothLeAudio$Callback;ILandroid/bluetooth/BluetoothLeAudioCodecStatus;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 150
    .end local v1    # "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeAudio$Callback;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "callback":Landroid/bluetooth/BluetoothLeAudio$Callback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_0

    .line 151
    :cond_0
    return-void
.end method

.method public blacklist onGroupNodeAdded(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "groupId"    # I

    .line 155
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudio$1;->this$0:Landroid/bluetooth/BluetoothLeAudio;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeAudio;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothLeAudio;)Landroid/content/AttributionSource;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    .line 157
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudio$1;->this$0:Landroid/bluetooth/BluetoothLeAudio;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeAudio;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeAudio;)Ljava/util/Map;

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

    .line 158
    .local v1, "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeAudio$Callback;Ljava/util/concurrent/Executor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeAudio$Callback;

    .line 159
    .local v2, "callback":Landroid/bluetooth/BluetoothLeAudio$Callback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 160
    .local v3, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Landroid/bluetooth/BluetoothLeAudio$1$$ExternalSyntheticLambda2;

    invoke-direct {v4, v2, p1, p2}, Landroid/bluetooth/BluetoothLeAudio$1$$ExternalSyntheticLambda2;-><init>(Landroid/bluetooth/BluetoothLeAudio$Callback;Landroid/bluetooth/BluetoothDevice;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 161
    .end local v1    # "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeAudio$Callback;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "callback":Landroid/bluetooth/BluetoothLeAudio$Callback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_0

    .line 162
    :cond_0
    return-void
.end method

.method public blacklist onGroupNodeRemoved(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "groupId"    # I

    .line 166
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudio$1;->this$0:Landroid/bluetooth/BluetoothLeAudio;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeAudio;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothLeAudio;)Landroid/content/AttributionSource;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    .line 168
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudio$1;->this$0:Landroid/bluetooth/BluetoothLeAudio;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeAudio;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeAudio;)Ljava/util/Map;

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

    .line 169
    .local v1, "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeAudio$Callback;Ljava/util/concurrent/Executor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeAudio$Callback;

    .line 170
    .local v2, "callback":Landroid/bluetooth/BluetoothLeAudio$Callback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 171
    .local v3, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Landroid/bluetooth/BluetoothLeAudio$1$$ExternalSyntheticLambda3;

    invoke-direct {v4, v2, p1, p2}, Landroid/bluetooth/BluetoothLeAudio$1$$ExternalSyntheticLambda3;-><init>(Landroid/bluetooth/BluetoothLeAudio$Callback;Landroid/bluetooth/BluetoothDevice;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 172
    .end local v1    # "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeAudio$Callback;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "callback":Landroid/bluetooth/BluetoothLeAudio$Callback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_0

    .line 173
    :cond_0
    return-void
.end method

.method public blacklist onGroupStatusChanged(II)V
    .locals 5
    .param p1, "groupId"    # I
    .param p2, "groupStatus"    # I

    .line 178
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudio$1;->this$0:Landroid/bluetooth/BluetoothLeAudio;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeAudio;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeAudio;)Ljava/util/Map;

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

    .line 179
    .local v1, "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeAudio$Callback;Ljava/util/concurrent/Executor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeAudio$Callback;

    .line 180
    .local v2, "callback":Landroid/bluetooth/BluetoothLeAudio$Callback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 181
    .local v3, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Landroid/bluetooth/BluetoothLeAudio$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, p1, p2}, Landroid/bluetooth/BluetoothLeAudio$1$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothLeAudio$Callback;II)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 182
    .end local v1    # "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeAudio$Callback;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "callback":Landroid/bluetooth/BluetoothLeAudio$Callback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_0

    .line 183
    :cond_0
    return-void
.end method
