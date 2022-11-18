.class Landroid/bluetooth/BluetoothAdapter$7;
.super Landroid/bluetooth/IBluetoothManagerCallback$Stub;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothAdapter;

    .line 4162
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onBluetoothServiceUp$0$android-bluetooth-BluetoothAdapter$7(Landroid/bluetooth/BluetoothDevice;Ljava/util/List;)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "pair"    # Ljava/util/List;

    .line 4175
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 4176
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmService(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v2}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmBluetoothMetadataListener(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetoothMetadataListener;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothAdapter;)Landroid/content/AttributionSource;

    move-result-object v3

    invoke-interface {v1, v2, p1, v3, v0}, Landroid/bluetooth/IBluetooth;->registerMetadataListener(Landroid/bluetooth/IBluetoothMetadataListener;Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 4178
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4183
    nop

    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    goto :goto_0

    .line 4179
    :catch_0
    move-exception v0

    .line 4180
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BluetoothAdapter"

    const-string v2, "Failed to register metadata listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    .line 4182
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4181
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4184
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist onBluetoothServiceDown()V
    .locals 3

    .line 4205
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmServiceLock(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    .line 4206
    .local v0, "l":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4208
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fputmService(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/IBluetooth;)V

    .line 4209
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmLeScanClients(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4210
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmLeScanClients(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 4212
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmBluetoothLeAdvertiser(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4213
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmBluetoothLeAdvertiser(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->cleanup()V

    .line 4215
    :cond_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmBluetoothLeScanner(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4216
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmBluetoothLeScanner(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/le/BluetoothLeScanner;->cleanup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4219
    :cond_2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 4220
    nop

    .line 4221
    return-void

    .line 4219
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 4220
    throw v1
.end method

.method public blacklist onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V
    .locals 6
    .param p1, "bluetoothService"    # Landroid/bluetooth/IBluetooth;

    .line 4164
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmServiceLock(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    .line 4165
    .local v0, "l":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4167
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fputmService(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/IBluetooth;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4169
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 4170
    nop

    .line 4171
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmMetadataListeners(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 4172
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v2}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmMetadataListeners(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;

    move-result-object v2

    new-instance v3, Landroid/bluetooth/BluetoothAdapter$7$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Landroid/bluetooth/BluetoothAdapter$7$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothAdapter$7;)V

    invoke-interface {v2, v3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 4185
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4186
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmBluetoothConnectionCallbackExecutorMap(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    .line 4187
    :try_start_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmBluetoothConnectionCallbackExecutorMap(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_1

    .line 4190
    :try_start_3
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v1

    .line 4191
    .local v1, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmService(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4192
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmService(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v4}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmConnectionCallback(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetoothConnectionCallback;

    move-result-object v4

    iget-object v5, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v5}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothAdapter;)Landroid/content/AttributionSource;

    move-result-object v5

    invoke-interface {v3, v4, v5, v1}, Landroid/bluetooth/IBluetooth;->registerBluetoothConnectionCallback(Landroid/bluetooth/IBluetoothConnectionCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 4195
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4199
    .end local v1    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    goto :goto_0

    .line 4196
    :catch_0
    move-exception v1

    .line 4197
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v3, "BluetoothAdapter"

    const-string/jumbo v4, "onBluetoothServiceUp: Failed to register bluetoothconnection callback"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4201
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    monitor-exit v2

    .line 4202
    return-void

    .line 4201
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 4185
    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2

    .line 4169
    :catchall_2
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 4170
    throw v1
.end method

.method public blacklist onBrEdrDown()V
    .locals 0

    .line 4224
    return-void
.end method
