.class Landroid/bluetooth/BluetoothAdapter$5;
.super Landroid/os/IpcDataCache$QueryHandler;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter;
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
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothAdapter;

    .line 3172
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$5;->this$0:Landroid/bluetooth/BluetoothAdapter;

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
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 3176
    .local p1, "pairQuery":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/bluetooth/IBluetooth;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 3179
    .local v0, "defaultValue":I
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v1

    .line 3180
    .local v1, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetooth;

    iget-object v3, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3, v1}, Landroid/bluetooth/IBluetooth;->getProfileConnectionState(ILcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 3181
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 3182
    .end local v1    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v1

    .line 3183
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public bridge synthetic blacklist apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3172
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter$5;->apply(Landroid/util/Pair;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
