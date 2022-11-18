.class public abstract Landroid/bluetooth/BluetoothGattCallback;
.super Ljava/lang/Object;
.source "BluetoothGattCallback.java"


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 180
    return-void
.end method

.method public whitelist onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "value"    # [B

    .line 194
    invoke-virtual {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 195
    return-void
.end method

.method public whitelist onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 129
    return-void
.end method

.method public whitelist onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "value"    # [B
    .param p4, "status"    # I

    .line 143
    invoke-virtual {p0, p1, p2, p4}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 144
    return-void
.end method

.method public whitelist onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .line 165
    return-void
.end method

.method public whitelist onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I
    .param p3, "newState"    # I

    .line 102
    return-void
.end method

.method public blacklist onConnectionUpdated(Landroid/bluetooth/BluetoothGatt;IIII)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "interval"    # I
    .param p3, "latency"    # I
    .param p4, "timeout"    # I
    .param p5, "status"    # I

    .line 292
    return-void
.end method

.method public whitelist onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 211
    return-void
.end method

.method public whitelist onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I[B)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I
    .param p4, "value"    # [B

    .line 224
    invoke-virtual {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 225
    return-void
.end method

.method public whitelist onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .line 237
    return-void
.end method

.method public whitelist onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "mtu"    # I
    .param p3, "status"    # I

    .line 274
    return-void
.end method

.method public whitelist onPhyRead(Landroid/bluetooth/BluetoothGatt;III)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "txPhy"    # I
    .param p3, "rxPhy"    # I
    .param p4, "status"    # I

    .line 88
    return-void
.end method

.method public whitelist onPhyUpdate(Landroid/bluetooth/BluetoothGatt;III)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "txPhy"    # I
    .param p3, "rxPhy"    # I
    .param p4, "status"    # I

    .line 74
    return-void
.end method

.method public whitelist onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "rssi"    # I
    .param p3, "status"    # I

    .line 260
    return-void
.end method

.method public whitelist onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .line 247
    return-void
.end method

.method public whitelist onServiceChanged(Landroid/bluetooth/BluetoothGatt;)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .line 304
    return-void
.end method

.method public whitelist onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .line 113
    return-void
.end method

.method public blacklist onSubrateChange(Landroid/bluetooth/BluetoothGatt;IIIII)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "subrateFactor"    # I
    .param p3, "latency"    # I
    .param p4, "contNum"    # I
    .param p5, "timeout"    # I
    .param p6, "status"    # I

    .line 322
    return-void
.end method
