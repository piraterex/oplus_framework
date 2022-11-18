.class Landroid/bluetooth/BluetoothDevice$3;
.super Landroid/os/IpcDataCache$QueryHandler;
.source "BluetoothDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/IpcDataCache$QueryHandler<",
        "Landroid/util/Pair<",
        "Landroid/bluetooth/IBluetooth;",
        "Landroid/bluetooth/BluetoothDevice;",
        ">;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothDevice;

    .line 2114
    iput-object p1, p0, Landroid/bluetooth/BluetoothDevice$3;->this$0:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0}, Landroid/os/IpcDataCache$QueryHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/util/Pair;)Ljava/lang/Integer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/bluetooth/IBluetooth;",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 2126
    .local p1, "pairQuery":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/bluetooth/IBluetooth;Landroid/bluetooth/BluetoothDevice;>;"
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 2127
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetooth;

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Landroid/bluetooth/BluetoothDevice$3;->this$0:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v3}, Landroid/bluetooth/BluetoothDevice;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothDevice;)Landroid/content/AttributionSource;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Landroid/bluetooth/IBluetooth;->getBondState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 2128
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2129
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 2130
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic blacklist apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2114
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice$3;->apply(Landroid/util/Pair;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
