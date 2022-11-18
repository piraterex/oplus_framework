.class public final Landroid/bluetooth/le/AdvertisingSet;
.super Ljava/lang/Object;
.source "AdvertisingSet.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AdvertisingSet"


# instance fields
.field private blacklist mAdvertiserId:I

.field private blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private final blacklist mGatt:Landroid/bluetooth/IBluetoothGatt;


# direct methods
.method constructor blacklist <init>(ILandroid/bluetooth/IBluetoothManager;Landroid/content/AttributionSource;)V
    .locals 3
    .param p1, "advertiserId"    # I
    .param p2, "bluetoothManager"    # Landroid/bluetooth/IBluetoothManager;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    .line 54
    iput-object p3, p0, Landroid/bluetooth/le/AdvertisingSet;->mAttributionSource:Landroid/content/AttributionSource;

    .line 56
    :try_start_0
    invoke-interface {p2}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/le/AdvertisingSet;->mGatt:Landroid/bluetooth/IBluetoothGatt;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    nop

    .line 61
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AdvertisingSet"

    const-string v2, "Failed to get Bluetooth gatt - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to get Bluetooth"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist enableAdvertising(ZII)V
    .locals 8
    .param p1, "enable"    # Z
    .param p2, "duration"    # I
    .param p3, "maxExtendedAdvertisingEvents"    # I

    .line 84
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 85
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v1, p0, Landroid/bluetooth/le/AdvertisingSet;->mGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    iget-object v6, p0, Landroid/bluetooth/le/AdvertisingSet;->mAttributionSource:Landroid/content/AttributionSource;

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v7, v0

    invoke-interface/range {v1 .. v7}, Landroid/bluetooth/IBluetoothGatt;->enableAdvertisingSet(IZIILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 87
    invoke-static {}, Landroid/bluetooth/le/BluetoothLeUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    nop

    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AdvertisingSet"

    const-string/jumbo v2, "remote exception - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist getAdvertiserId()I
    .locals 1

    .line 251
    iget v0, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    return v0
.end method

.method public blacklist getOwnAddress()V
    .locals 4

    .line 236
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 237
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v1, p0, Landroid/bluetooth/le/AdvertisingSet;->mGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    iget-object v3, p0, Landroid/bluetooth/le/AdvertisingSet;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v2, v3, v0}, Landroid/bluetooth/IBluetoothGatt;->getOwnAddress(ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 238
    invoke-static {}, Landroid/bluetooth/le/BluetoothLeUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    nop

    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AdvertisingSet"

    const-string/jumbo v2, "remote exception - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method blacklist setAdvertiserId(I)V
    .locals 0
    .param p1, "advertiserId"    # I

    .line 64
    iput p1, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    .line 65
    return-void
.end method

.method public whitelist setAdvertisingData(Landroid/bluetooth/le/AdvertiseData;)V
    .locals 4
    .param p1, "advertiseData"    # Landroid/bluetooth/le/AdvertiseData;

    .line 110
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 111
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v1, p0, Landroid/bluetooth/le/AdvertisingSet;->mGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    iget-object v3, p0, Landroid/bluetooth/le/AdvertisingSet;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v2, p1, v3, v0}, Landroid/bluetooth/IBluetoothGatt;->setAdvertisingData(ILandroid/bluetooth/le/AdvertiseData;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 112
    invoke-static {}, Landroid/bluetooth/le/BluetoothLeUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    nop

    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AdvertisingSet"

    const-string/jumbo v2, "remote exception - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist setAdvertisingParameters(Landroid/bluetooth/le/AdvertisingSetParameters;)V
    .locals 4
    .param p1, "parameters"    # Landroid/bluetooth/le/AdvertisingSetParameters;

    .line 152
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 153
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v1, p0, Landroid/bluetooth/le/AdvertisingSet;->mGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    iget-object v3, p0, Landroid/bluetooth/le/AdvertisingSet;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v2, p1, v3, v0}, Landroid/bluetooth/IBluetoothGatt;->setAdvertisingParameters(ILandroid/bluetooth/le/AdvertisingSetParameters;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 154
    invoke-static {}, Landroid/bluetooth/le/BluetoothLeUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    nop

    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AdvertisingSet"

    const-string/jumbo v2, "remote exception - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist setPeriodicAdvertisingData(Landroid/bluetooth/le/AdvertiseData;)V
    .locals 4
    .param p1, "periodicData"    # Landroid/bluetooth/le/AdvertiseData;

    .line 194
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 195
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v1, p0, Landroid/bluetooth/le/AdvertisingSet;->mGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    iget-object v3, p0, Landroid/bluetooth/le/AdvertisingSet;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v2, p1, v3, v0}, Landroid/bluetooth/IBluetoothGatt;->setPeriodicAdvertisingData(ILandroid/bluetooth/le/AdvertiseData;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 196
    invoke-static {}, Landroid/bluetooth/le/BluetoothLeUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    nop

    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AdvertisingSet"

    const-string/jumbo v2, "remote exception - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist setPeriodicAdvertisingEnabled(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .line 214
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 215
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v1, p0, Landroid/bluetooth/le/AdvertisingSet;->mGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    iget-object v3, p0, Landroid/bluetooth/le/AdvertisingSet;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v2, p1, v3, v0}, Landroid/bluetooth/IBluetoothGatt;->setPeriodicAdvertisingEnable(IZLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 216
    invoke-static {}, Landroid/bluetooth/le/BluetoothLeUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    nop

    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AdvertisingSet"

    const-string/jumbo v2, "remote exception - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 220
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist setPeriodicAdvertisingParameters(Landroid/bluetooth/le/PeriodicAdvertisingParameters;)V
    .locals 4
    .param p1, "parameters"    # Landroid/bluetooth/le/PeriodicAdvertisingParameters;

    .line 170
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 171
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v1, p0, Landroid/bluetooth/le/AdvertisingSet;->mGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    iget-object v3, p0, Landroid/bluetooth/le/AdvertisingSet;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v2, p1, v3, v0}, Landroid/bluetooth/IBluetoothGatt;->setPeriodicAdvertisingParameters(ILandroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 173
    invoke-static {}, Landroid/bluetooth/le/BluetoothLeUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    nop

    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AdvertisingSet"

    const-string/jumbo v2, "remote exception - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist setScanResponseData(Landroid/bluetooth/le/AdvertiseData;)V
    .locals 4
    .param p1, "scanResponse"    # Landroid/bluetooth/le/AdvertiseData;

    .line 132
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 133
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v1, p0, Landroid/bluetooth/le/AdvertisingSet;->mGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    iget-object v3, p0, Landroid/bluetooth/le/AdvertisingSet;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v2, p1, v3, v0}, Landroid/bluetooth/IBluetoothGatt;->setScanResponseData(ILandroid/bluetooth/le/AdvertiseData;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 134
    invoke-static {}, Landroid/bluetooth/le/BluetoothLeUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    nop

    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AdvertisingSet"

    const-string/jumbo v2, "remote exception - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
