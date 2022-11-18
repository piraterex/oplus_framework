.class Landroid/bluetooth/BluetoothLeAudio$3;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
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

    .line 643
    iput-object p1, p0, Landroid/bluetooth/BluetoothLeAudio$3;->this$0:Landroid/bluetooth/BluetoothLeAudio;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onBluetoothStateChange(Z)V
    .locals 5
    .param p1, "up"    # Z

    .line 645
    const-string v0, "BluetoothLeAudio"

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

    .line 646
    if-eqz p1, :cond_2

    .line 648
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudio$3;->this$0:Landroid/bluetooth/BluetoothLeAudio;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeAudio;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeAudio;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 649
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio$3;->this$0:Landroid/bluetooth/BluetoothLeAudio;

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeAudio;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeAudio;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 651
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio$3;->this$0:Landroid/bluetooth/BluetoothLeAudio;

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeAudio;->-$$Nest$mgetService(Landroid/bluetooth/BluetoothLeAudio;)Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v1

    .line 652
    .local v1, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-eqz v1, :cond_0

    .line 654
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v2

    .line 655
    .local v2, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    iget-object v3, p0, Landroid/bluetooth/BluetoothLeAudio$3;->this$0:Landroid/bluetooth/BluetoothLeAudio;

    invoke-static {v3}, Landroid/bluetooth/BluetoothLeAudio;->-$$Nest$fgetmCallback(Landroid/bluetooth/BluetoothLeAudio;)Landroid/bluetooth/IBluetoothLeAudioCallback;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothLeAudio$3;->this$0:Landroid/bluetooth/BluetoothLeAudio;

    invoke-static {v4}, Landroid/bluetooth/BluetoothLeAudio;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothLeAudio;)Landroid/content/AttributionSource;

    move-result-object v4

    invoke-interface {v1, v3, v4, v2}, Landroid/bluetooth/IBluetoothLeAudio;->registerCallback(Landroid/bluetooth/IBluetoothLeAudioCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 657
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v3

    const/4 v4, 0x0

    .line 658
    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 664
    .end local v1    # "service":Landroid/bluetooth/IBluetoothLeAudio;
    .end local v2    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    :cond_0
    goto :goto_0

    .line 662
    :catch_0
    move-exception v1

    .line 663
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/bluetooth/BluetoothLeAudio$3;
    .end local p1    # "up":Z
    throw v2

    .line 660
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/bluetooth/BluetoothLeAudio$3;
    .restart local p1    # "up":Z
    :catch_1
    move-exception v1

    .line 661
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    const-string v2, "BluetoothLeAudio"

    const-string v3, "Failed to register callback"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 664
    nop

    .line 666
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

    .line 668
    :cond_2
    :goto_1
    return-void
.end method
