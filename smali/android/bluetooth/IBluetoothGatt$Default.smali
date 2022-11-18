.class public Landroid/bluetooth/IBluetoothGatt$Default;
.super Ljava/lang/Object;
.source "IBluetoothGatt.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothGatt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothGatt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addService(ILandroid/bluetooth/BluetoothGattService;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "serverIf"    # I
    .param p2, "service"    # Landroid/bluetooth/BluetoothGattService;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 163
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 193
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist beginReliableWrite(ILjava/lang/String;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    return-void
.end method

.method public blacklist clearServices(ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "serverIf"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    return-void
.end method

.method public blacklist clientConnect(ILjava/lang/String;ZIZILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "isDirect"    # Z
    .param p4, "transport"    # I
    .param p5, "opportunistic"    # Z
    .param p6, "phy"    # I
    .param p7, "attributionSource"    # Landroid/content/AttributionSource;
    .param p8, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    return-void
.end method

.method public blacklist clientDisconnect(ILjava/lang/String;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    return-void
.end method

.method public blacklist clientReadPhy(ILjava/lang/String;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "clientIf"    # I
    .param p2, "addres"    # Ljava/lang/String;
    .param p3, "attributionSources"    # Landroid/content/AttributionSource;
    .param p4, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    return-void
.end method

.method public blacklist clientSetPreferredPhy(ILjava/lang/String;IIILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "txPhy"    # I
    .param p4, "rxPhy"    # I
    .param p5, "phyOptions"    # I
    .param p6, "attributionSource"    # Landroid/content/AttributionSource;
    .param p7, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    return-void
.end method

.method public blacklist configureMTU(ILjava/lang/String;ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "mtu"    # I
    .param p4, "attributionSource"    # Landroid/content/AttributionSource;
    .param p5, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    return-void
.end method

.method public blacklist connectionParameterUpdate(ILjava/lang/String;ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "connectionPriority"    # I
    .param p4, "attributionSource"    # Landroid/content/AttributionSource;
    .param p5, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    return-void
.end method

.method public blacklist disconnectAll(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 178
    return-void
.end method

.method public blacklist discoverServiceByUuid(ILjava/lang/String;Landroid/os/ParcelUuid;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "uuid"    # Landroid/os/ParcelUuid;
    .param p4, "attributionSource"    # Landroid/content/AttributionSource;
    .param p5, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    return-void
.end method

.method public blacklist discoverServices(ILjava/lang/String;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    return-void
.end method

.method public blacklist enableAdvertisingSet(IZIILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "advertiserId"    # I
    .param p2, "enable"    # Z
    .param p3, "duration"    # I
    .param p4, "maxExtAdvEvents"    # I
    .param p5, "attributionSource"    # Landroid/content/AttributionSource;
    .param p6, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    return-void
.end method

.method public blacklist endReliableWrite(ILjava/lang/String;ZLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "execute"    # Z
    .param p4, "attributionSource"    # Landroid/content/AttributionSource;
    .param p5, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    return-void
.end method

.method public blacklist flushPendingBatchResults(ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "scannerId"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public blacklist getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "states"    # [I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public blacklist getOwnAddress(ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "advertiserId"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public blacklist leConnectionUpdate(ILjava/lang/String;IIIIIILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "minInterval"    # I
    .param p4, "maxInterval"    # I
    .param p5, "peripheralLatency"    # I
    .param p6, "supervisionTimeout"    # I
    .param p7, "minConnectionEventLen"    # I
    .param p8, "maxConnectionEventLen"    # I
    .param p9, "attributionSource"    # Landroid/content/AttributionSource;
    .param p10, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    return-void
.end method

.method public blacklist leSubrateRequest(ILjava/lang/String;IIIIILandroid/content/AttributionSource;)V
    .locals 0
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "subrateMin"    # I
    .param p4, "subrateMax"    # I
    .param p5, "maxLatency"    # I
    .param p6, "contNumber"    # I
    .param p7, "supervisionTimeout"    # I
    .param p8, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    return-void
.end method

.method public blacklist numHwTrackFiltersAvailable(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 184
    return-void
.end method

.method public blacklist readCharacteristic(ILjava/lang/String;IILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "handle"    # I
    .param p4, "authReq"    # I
    .param p5, "attributionSource"    # Landroid/content/AttributionSource;
    .param p6, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    return-void
.end method

.method public blacklist readDescriptor(ILjava/lang/String;IILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "handle"    # I
    .param p4, "authReq"    # I
    .param p5, "attributionSource"    # Landroid/content/AttributionSource;
    .param p6, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    return-void
.end method

.method public blacklist readRemoteRssi(ILjava/lang/String;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    return-void
.end method

.method public blacklist readUsingCharacteristicUuid(ILjava/lang/String;Landroid/os/ParcelUuid;IIILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "uuid"    # Landroid/os/ParcelUuid;
    .param p4, "startHandle"    # I
    .param p5, "endHandle"    # I
    .param p6, "authReq"    # I
    .param p7, "attributionSource"    # Landroid/content/AttributionSource;
    .param p8, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    return-void
.end method

.method public blacklist refreshDevice(ILjava/lang/String;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    return-void
.end method

.method public blacklist registerClient(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattCallback;ZLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "appId"    # Landroid/os/ParcelUuid;
    .param p2, "callback"    # Landroid/bluetooth/IBluetoothGattCallback;
    .param p3, "eatt_support"    # Z
    .param p4, "attributionSource"    # Landroid/content/AttributionSource;
    .param p5, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    return-void
.end method

.method public blacklist registerForNotification(ILjava/lang/String;IZLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "handle"    # I
    .param p4, "enable"    # Z
    .param p5, "attributionSource"    # Landroid/content/AttributionSource;
    .param p6, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    return-void
.end method

.method public blacklist registerScanner(Landroid/bluetooth/le/IScannerCallback;Landroid/os/WorkSource;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "callback"    # Landroid/bluetooth/le/IScannerCallback;
    .param p2, "workSource"    # Landroid/os/WorkSource;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public blacklist registerServer(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattServerCallback;ZLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "appId"    # Landroid/os/ParcelUuid;
    .param p2, "callback"    # Landroid/bluetooth/IBluetoothGattServerCallback;
    .param p3, "eatt_support"    # Z
    .param p4, "attributionSource"    # Landroid/content/AttributionSource;
    .param p5, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 145
    return-void
.end method

.method public blacklist registerSync(Landroid/bluetooth/le/ScanResult;IILandroid/bluetooth/le/IPeriodicAdvertisingCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "scanResult"    # Landroid/bluetooth/le/ScanResult;
    .param p2, "skip"    # I
    .param p3, "timeout"    # I
    .param p4, "callback"    # Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    .param p5, "attributionSource"    # Landroid/content/AttributionSource;
    .param p6, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    return-void
.end method

.method public blacklist removeService(IILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "serverIf"    # I
    .param p2, "handle"    # I
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    return-void
.end method

.method public blacklist sendNotification(ILjava/lang/String;IZ[BLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "serverIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "handle"    # I
    .param p4, "confirm"    # Z
    .param p5, "value"    # [B
    .param p6, "attributionSource"    # Landroid/content/AttributionSource;
    .param p7, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 175
    return-void
.end method

.method public blacklist sendResponse(ILjava/lang/String;III[BLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "serverIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "requestId"    # I
    .param p4, "status"    # I
    .param p5, "offset"    # I
    .param p6, "value"    # [B
    .param p7, "attributionSource"    # Landroid/content/AttributionSource;
    .param p8, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 172
    return-void
.end method

.method public blacklist serverConnect(ILjava/lang/String;ZILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "serverIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "isDirect"    # Z
    .param p4, "transport"    # I
    .param p5, "attributionSource"    # Landroid/content/AttributionSource;
    .param p6, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    return-void
.end method

.method public blacklist serverDisconnect(ILjava/lang/String;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "serverIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    return-void
.end method

.method public blacklist serverReadPhy(ILjava/lang/String;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 160
    return-void
.end method

.method public blacklist serverSetPreferredPhy(ILjava/lang/String;IIILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "txPhy"    # I
    .param p4, "rxPhy"    # I
    .param p5, "phyOptions"    # I
    .param p6, "attributionSource"    # Landroid/content/AttributionSource;
    .param p7, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    return-void
.end method

.method public blacklist setAdvertisingData(ILandroid/bluetooth/le/AdvertiseData;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "advertiserId"    # I
    .param p2, "data"    # Landroid/bluetooth/le/AdvertiseData;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    return-void
.end method

.method public blacklist setAdvertisingParameters(ILandroid/bluetooth/le/AdvertisingSetParameters;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "advertiserId"    # I
    .param p2, "parameters"    # Landroid/bluetooth/le/AdvertisingSetParameters;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    return-void
.end method

.method public blacklist setPeriodicAdvertisingData(ILandroid/bluetooth/le/AdvertiseData;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "advertiserId"    # I
    .param p2, "data"    # Landroid/bluetooth/le/AdvertiseData;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    return-void
.end method

.method public blacklist setPeriodicAdvertisingEnable(IZLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "advertiserId"    # I
    .param p2, "enable"    # Z
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    return-void
.end method

.method public blacklist setPeriodicAdvertisingParameters(ILandroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "advertiserId"    # I
    .param p2, "parameters"    # Landroid/bluetooth/le/PeriodicAdvertisingParameters;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    return-void
.end method

.method public blacklist setScanResponseData(ILandroid/bluetooth/le/AdvertiseData;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "advertiserId"    # I
    .param p2, "data"    # Landroid/bluetooth/le/AdvertiseData;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    return-void
.end method

.method public blacklist startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/IAdvertisingSetCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "parameters"    # Landroid/bluetooth/le/AdvertisingSetParameters;
    .param p2, "advertiseData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p3, "scanResponse"    # Landroid/bluetooth/le/AdvertiseData;
    .param p4, "periodicParameters"    # Landroid/bluetooth/le/PeriodicAdvertisingParameters;
    .param p5, "periodicData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p6, "duration"    # I
    .param p7, "maxExtAdvEvents"    # I
    .param p8, "callback"    # Landroid/bluetooth/le/IAdvertisingSetCallback;
    .param p9, "attributionSource"    # Landroid/content/AttributionSource;
    .param p10, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    return-void
.end method

.method public blacklist startScan(ILandroid/bluetooth/le/ScanSettings;Ljava/util/List;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "scannerId"    # I
    .param p2, "settings"    # Landroid/bluetooth/le/ScanSettings;
    .param p4, "attributionSource"    # Landroid/content/AttributionSource;
    .param p5, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/bluetooth/le/ScanSettings;",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Landroid/content/AttributionSource;",
            "Lcom/android/modules/utils/SynchronousResultReceiver;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    .local p3, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    return-void
.end method

.method public blacklist startScanForIntent(Landroid/app/PendingIntent;Landroid/bluetooth/le/ScanSettings;Ljava/util/List;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "settings"    # Landroid/bluetooth/le/ScanSettings;
    .param p4, "attributionSource"    # Landroid/content/AttributionSource;
    .param p5, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/PendingIntent;",
            "Landroid/bluetooth/le/ScanSettings;",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Landroid/content/AttributionSource;",
            "Lcom/android/modules/utils/SynchronousResultReceiver;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    .local p3, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    return-void
.end method

.method public blacklist stopAdvertisingSet(Landroid/bluetooth/le/IAdvertisingSetCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "callback"    # Landroid/bluetooth/le/IAdvertisingSetCallback;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    return-void
.end method

.method public blacklist stopScan(ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "scannerId"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public blacklist stopScanForIntent(Landroid/app/PendingIntent;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public blacklist subrateModeRequest(ILjava/lang/String;ILandroid/content/AttributionSource;)V
    .locals 0
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "subrateMode"    # I
    .param p4, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 190
    return-void
.end method

.method public blacklist transferSetInfo(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/le/IPeriodicAdvertisingCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "bda"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "serviceData"    # I
    .param p3, "advertisingHandle"    # I
    .param p4, "callback"    # Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    .param p5, "attributionSource"    # Landroid/content/AttributionSource;
    .param p6, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    return-void
.end method

.method public blacklist transferSync(Landroid/bluetooth/BluetoothDevice;IILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "bda"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "serviceData"    # I
    .param p3, "syncHandle"    # I
    .param p4, "attributionSource"    # Landroid/content/AttributionSource;
    .param p5, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    return-void
.end method

.method public blacklist unregAll(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    return-void
.end method

.method public blacklist unregisterClient(ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "clientIf"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    return-void
.end method

.method public blacklist unregisterScanner(ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "scannerId"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist unregisterServer(ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "serverIf"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    return-void
.end method

.method public blacklist unregisterSync(Landroid/bluetooth/le/IPeriodicAdvertisingCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "callback"    # Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    return-void
.end method

.method public blacklist writeCharacteristic(ILjava/lang/String;III[BLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "handle"    # I
    .param p4, "writeType"    # I
    .param p5, "authReq"    # I
    .param p6, "value"    # [B
    .param p7, "attributionSource"    # Landroid/content/AttributionSource;
    .param p8, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    return-void
.end method

.method public blacklist writeDescriptor(ILjava/lang/String;II[BLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "handle"    # I
    .param p4, "authReq"    # I
    .param p5, "value"    # [B
    .param p6, "attributionSource"    # Landroid/content/AttributionSource;
    .param p7, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    return-void
.end method
