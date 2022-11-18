.class Landroid/bluetooth/BluetoothLeBroadcast$3;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
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

    .line 175
    iput-object p1, p0, Landroid/bluetooth/BluetoothLeBroadcast$3;->this$0:Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onBluetoothStateChange(Z)V
    .locals 5
    .param p1, "up"    # Z

    .line 177
    const-string v0, "BluetoothLeBroadcast"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBluetoothStateChange: up="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    if-eqz p1, :cond_2

    .line 180
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast$3;->this$0:Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcast;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeBroadcast;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 181
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcast$3;->this$0:Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeBroadcast;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeBroadcast;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 183
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcast$3;->this$0:Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeBroadcast;->-$$Nest$mgetService(Landroid/bluetooth/BluetoothLeBroadcast;)Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v1

    .line 184
    .local v1, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-eqz v1, :cond_0

    .line 186
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v2

    .line 187
    .local v2, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    iget-object v3, p0, Landroid/bluetooth/BluetoothLeBroadcast$3;->this$0:Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-static {v3}, Landroid/bluetooth/BluetoothLeBroadcast;->-$$Nest$fgetmCallback(Landroid/bluetooth/BluetoothLeBroadcast;)Landroid/bluetooth/IBluetoothLeBroadcastCallback;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothLeBroadcast$3;->this$0:Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-static {v4}, Landroid/bluetooth/BluetoothLeBroadcast;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothLeBroadcast;)Landroid/content/AttributionSource;

    move-result-object v4

    invoke-interface {v1, v3, v4, v2}, Landroid/bluetooth/IBluetoothLeAudio;->registerLeBroadcastCallback(Landroid/bluetooth/IBluetoothLeBroadcastCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 189
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v3

    const/4 v4, 0x0

    .line 190
    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    .end local v1    # "service":Landroid/bluetooth/IBluetoothLeAudio;
    .end local v2    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    :cond_0
    goto :goto_0

    .line 195
    :catch_0
    move-exception v1

    .line 196
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcast$3;
    .end local p1    # "up":Z
    throw v2

    .line 192
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcast$3;
    .restart local p1    # "up":Z
    :catch_1
    move-exception v1

    .line 193
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    const-string v2, "BluetoothLeBroadcast"

    const-string/jumbo v3, "onBluetoothServiceUp: Failed to register Le Broadcaster callback"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    nop

    .line 199
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 201
    :cond_2
    :goto_1
    return-void
.end method
