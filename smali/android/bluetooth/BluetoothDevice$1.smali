.class Landroid/bluetooth/BluetoothDevice$1;
.super Landroid/bluetooth/IBluetoothManagerCallback$Stub;
.source "BluetoothDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 1457
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onBluetoothServiceDown()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1471
    const-class v0, Landroid/bluetooth/BluetoothDevice;

    monitor-enter v0

    .line 1472
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Landroid/bluetooth/BluetoothDevice;->-$$Nest$sfputsService(Landroid/bluetooth/IBluetooth;)V

    .line 1473
    monitor-exit v0

    .line 1474
    return-void

    .line 1473
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V
    .locals 3
    .param p1, "bluetoothService"    # Landroid/bluetooth/IBluetooth;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1461
    const-class v0, Landroid/bluetooth/BluetoothDevice;

    monitor-enter v0

    .line 1462
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->-$$Nest$sfgetsService()Landroid/bluetooth/IBluetooth;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1463
    const-string v1, "BluetoothDevice"

    const-string/jumbo v2, "sService is not NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    :cond_0
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->-$$Nest$sfputsService(Landroid/bluetooth/IBluetooth;)V

    .line 1466
    monitor-exit v0

    .line 1467
    return-void

    .line 1466
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onBrEdrDown()V
    .locals 0

    .line 1478
    return-void
.end method

.method public blacklist onOobData(ILandroid/bluetooth/OobData;)V
    .locals 0
    .param p1, "transport"    # I
    .param p2, "oobData"    # Landroid/bluetooth/OobData;

    .line 1482
    return-void
.end method
