.class Landroid/bluetooth/BluetoothVolumeControl$3;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothVolumeControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothVolumeControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/bluetooth/BluetoothVolumeControl;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothVolumeControl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothVolumeControl;

    .line 147
    iput-object p1, p0, Landroid/bluetooth/BluetoothVolumeControl$3;->this$0:Landroid/bluetooth/BluetoothVolumeControl;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onBluetoothStateChange(Z)V
    .locals 5
    .param p1, "up"    # Z

    .line 149
    const-string v0, "BluetoothVolumeControl"

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

    .line 150
    if-nez p1, :cond_0

    .line 151
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothVolumeControl$3;->this$0:Landroid/bluetooth/BluetoothVolumeControl;

    invoke-static {v0}, Landroid/bluetooth/BluetoothVolumeControl;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothVolumeControl;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 155
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothVolumeControl$3;->this$0:Landroid/bluetooth/BluetoothVolumeControl;

    invoke-static {v1}, Landroid/bluetooth/BluetoothVolumeControl;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothVolumeControl;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 157
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothVolumeControl$3;->this$0:Landroid/bluetooth/BluetoothVolumeControl;

    invoke-static {v1}, Landroid/bluetooth/BluetoothVolumeControl;->-$$Nest$mgetService(Landroid/bluetooth/BluetoothVolumeControl;)Landroid/bluetooth/IBluetoothVolumeControl;

    move-result-object v1

    .line 158
    .local v1, "service":Landroid/bluetooth/IBluetoothVolumeControl;
    if-eqz v1, :cond_1

    .line 160
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v2

    .line 161
    .local v2, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    iget-object v3, p0, Landroid/bluetooth/BluetoothVolumeControl$3;->this$0:Landroid/bluetooth/BluetoothVolumeControl;

    invoke-static {v3}, Landroid/bluetooth/BluetoothVolumeControl;->-$$Nest$fgetmCallback(Landroid/bluetooth/BluetoothVolumeControl;)Landroid/bluetooth/IBluetoothVolumeControlCallback;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothVolumeControl$3;->this$0:Landroid/bluetooth/BluetoothVolumeControl;

    invoke-static {v4}, Landroid/bluetooth/BluetoothVolumeControl;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothVolumeControl;)Landroid/content/AttributionSource;

    move-result-object v4

    invoke-interface {v1, v3, v4, v2}, Landroid/bluetooth/IBluetoothVolumeControl;->registerCallback(Landroid/bluetooth/IBluetoothVolumeControlCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 162
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    .end local v1    # "service":Landroid/bluetooth/IBluetoothVolumeControl;
    .end local v2    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    :cond_1
    goto :goto_0

    .line 167
    :catch_0
    move-exception v1

    .line 168
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    :try_start_2
    const-string v2, "BluetoothVolumeControl"

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

    .line 169
    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 168
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 164
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v1

    .line 165
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothVolumeControl"

    const-string/jumbo v3, "onBluetoothServiceUp: Failed to registerVolume Control callback"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    nop

    .line 172
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    monitor-exit v0

    .line 173
    return-void

    .line 172
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
