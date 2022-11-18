.class Landroid/bluetooth/BluetoothSap$2;
.super Landroid/os/IpcDataCache$QueryHandler;
.source "BluetoothSap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothSap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/IpcDataCache$QueryHandler<",
        "Landroid/util/Pair<",
        "Landroid/bluetooth/IBluetoothSap;",
        "Landroid/bluetooth/BluetoothDevice;",
        ">;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/bluetooth/BluetoothSap;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothSap;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothSap;

    .line 384
    iput-object p1, p0, Landroid/bluetooth/BluetoothSap$2;->this$0:Landroid/bluetooth/BluetoothSap;

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
            "Landroid/bluetooth/IBluetoothSap;",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 390
    .local p1, "pairQuery":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/bluetooth/IBluetoothSap;Landroid/bluetooth/BluetoothDevice;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConnectionState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") uncached"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothSap;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 393
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 395
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothSap;

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Landroid/bluetooth/BluetoothSap$2;->this$0:Landroid/bluetooth/BluetoothSap;

    invoke-static {v3}, Landroid/bluetooth/BluetoothSap;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothSap;)Landroid/content/AttributionSource;

    move-result-object v3

    .line 396
    invoke-interface {v1, v2, v3, v0}, Landroid/bluetooth/IBluetoothSap;->getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 397
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v1

    const/4 v2, 0x0

    .line 398
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    return-object v1

    .line 399
    :catch_0
    move-exception v1

    .line 400
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public bridge synthetic blacklist apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 384
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothSap$2;->apply(Landroid/util/Pair;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
