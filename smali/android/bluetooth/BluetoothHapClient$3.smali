.class Landroid/bluetooth/BluetoothHapClient$3;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothHapClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHapClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/bluetooth/BluetoothHapClient;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothHapClient;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothHapClient;

    .line 437
    iput-object p1, p0, Landroid/bluetooth/BluetoothHapClient$3;->this$0:Landroid/bluetooth/BluetoothHapClient;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onBluetoothStateChange(Z)V
    .locals 5
    .param p1, "up"    # Z

    .line 440
    if-eqz p1, :cond_2

    .line 442
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient$3;->this$0:Landroid/bluetooth/BluetoothHapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHapClient;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothHapClient;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 443
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHapClient$3;->this$0:Landroid/bluetooth/BluetoothHapClient;

    invoke-static {v1}, Landroid/bluetooth/BluetoothHapClient;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothHapClient;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 446
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothHapClient$3;->this$0:Landroid/bluetooth/BluetoothHapClient;

    invoke-static {v1}, Landroid/bluetooth/BluetoothHapClient;->-$$Nest$mgetService(Landroid/bluetooth/BluetoothHapClient;)Landroid/bluetooth/IBluetoothHapClient;

    move-result-object v1

    .line 447
    .local v1, "service":Landroid/bluetooth/IBluetoothHapClient;
    if-eqz v1, :cond_1

    .line 449
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v2

    .line 450
    .local v2, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    iget-object v3, p0, Landroid/bluetooth/BluetoothHapClient$3;->this$0:Landroid/bluetooth/BluetoothHapClient;

    invoke-static {v3}, Landroid/bluetooth/BluetoothHapClient;->-$$Nest$fgetmCallback(Landroid/bluetooth/BluetoothHapClient;)Landroid/bluetooth/IBluetoothHapClientCallback;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothHapClient$3;->this$0:Landroid/bluetooth/BluetoothHapClient;

    invoke-static {v4}, Landroid/bluetooth/BluetoothHapClient;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothHapClient;)Landroid/content/AttributionSource;

    move-result-object v4

    invoke-interface {v1, v3, v4, v2}, Landroid/bluetooth/IBluetoothHapClient;->registerCallback(Landroid/bluetooth/IBluetoothHapClientCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 451
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 458
    .end local v1    # "service":Landroid/bluetooth/IBluetoothHapClient;
    .end local v2    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    :cond_1
    goto :goto_0

    .line 456
    :catch_0
    move-exception v1

    .line 457
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/bluetooth/BluetoothHapClient$3;
    .end local p1    # "up":Z
    throw v2

    .line 453
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/bluetooth/BluetoothHapClient$3;
    .restart local p1    # "up":Z
    :catch_1
    move-exception v1

    .line 454
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    const-string v2, "BluetoothHapClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    .line 455
    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 454
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    nop

    .line 459
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 461
    :cond_2
    :goto_1
    return-void
.end method
