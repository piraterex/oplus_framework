.class public abstract Landroid/bluetooth/IBluetoothManager$Stub;
.super Landroid/os/Binder;
.source "IBluetoothManager.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothManager"

.field static final blacklist TRANSACTION_bindBluetoothProfileService:I = 0xa

.field static final blacklist TRANSACTION_disable:I = 0x7

.field static final blacklist TRANSACTION_disableBle:I = 0x11

.field static final blacklist TRANSACTION_enable:I = 0x5

.field static final blacklist TRANSACTION_enableBle:I = 0x10

.field static final blacklist TRANSACTION_enableNoAutoConnect:I = 0x6

.field static final blacklist TRANSACTION_factoryReset:I = 0x13

.field static final blacklist TRANSACTION_getAddress:I = 0xc

.field static final blacklist TRANSACTION_getBluetoothGatt:I = 0x9

.field static final blacklist TRANSACTION_getName:I = 0xd

.field static final blacklist TRANSACTION_getState:I = 0x8

.field static final blacklist TRANSACTION_isBleAppPresent:I = 0x12

.field static final blacklist TRANSACTION_isBleScanAlwaysAvailable:I = 0xf

.field static final blacklist TRANSACTION_isHearingAidProfileSupported:I = 0x14

.field static final blacklist TRANSACTION_onFactoryReset:I = 0xe

.field static final blacklist TRANSACTION_registerAdapter:I = 0x1

.field static final blacklist TRANSACTION_registerStateChangeCallback:I = 0x3

.field static final blacklist TRANSACTION_unbindBluetoothProfileService:I = 0xb

.field static final blacklist TRANSACTION_unregisterAdapter:I = 0x2

.field static final blacklist TRANSACTION_unregisterStateChangeCallback:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 101
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 102
    const-string v0, "android.bluetooth.IBluetoothManager"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 110
    if-nez p0, :cond_0

    .line 111
    const/4 v0, 0x0

    return-object v0

    .line 113
    :cond_0
    const-string v0, "android.bluetooth.IBluetoothManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 114
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothManager;

    if-eqz v1, :cond_1

    .line 115
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetoothManager;

    return-object v1

    .line 117
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 126
    packed-switch p0, :pswitch_data_0

    .line 210
    const/4 v0, 0x0

    return-object v0

    .line 206
    :pswitch_0
    const-string v0, "isHearingAidProfileSupported"

    return-object v0

    .line 202
    :pswitch_1
    const-string v0, "factoryReset"

    return-object v0

    .line 198
    :pswitch_2
    const-string v0, "isBleAppPresent"

    return-object v0

    .line 194
    :pswitch_3
    const-string v0, "disableBle"

    return-object v0

    .line 190
    :pswitch_4
    const-string v0, "enableBle"

    return-object v0

    .line 186
    :pswitch_5
    const-string v0, "isBleScanAlwaysAvailable"

    return-object v0

    .line 182
    :pswitch_6
    const-string/jumbo v0, "onFactoryReset"

    return-object v0

    .line 178
    :pswitch_7
    const-string v0, "getName"

    return-object v0

    .line 174
    :pswitch_8
    const-string v0, "getAddress"

    return-object v0

    .line 170
    :pswitch_9
    const-string/jumbo v0, "unbindBluetoothProfileService"

    return-object v0

    .line 166
    :pswitch_a
    const-string v0, "bindBluetoothProfileService"

    return-object v0

    .line 162
    :pswitch_b
    const-string v0, "getBluetoothGatt"

    return-object v0

    .line 158
    :pswitch_c
    const-string v0, "getState"

    return-object v0

    .line 154
    :pswitch_d
    const-string v0, "disable"

    return-object v0

    .line 150
    :pswitch_e
    const-string v0, "enableNoAutoConnect"

    return-object v0

    .line 146
    :pswitch_f
    const-string v0, "enable"

    return-object v0

    .line 142
    :pswitch_10
    const-string/jumbo v0, "unregisterStateChangeCallback"

    return-object v0

    .line 138
    :pswitch_11
    const-string/jumbo v0, "registerStateChangeCallback"

    return-object v0

    .line 134
    :pswitch_12
    const-string/jumbo v0, "unregisterAdapter"

    return-object v0

    .line 130
    :pswitch_13
    const-string/jumbo v0, "registerAdapter"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 121
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 817
    const/16 v0, 0x13

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 217
    invoke-static {p1}, Landroid/bluetooth/IBluetoothManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 221
    const-string v0, "android.bluetooth.IBluetoothManager"

    .line 222
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 223
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 233
    packed-switch p1, :pswitch_data_1

    .line 425
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 229
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    return v1

    .line 418
    :pswitch_1
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothManager$Stub;->isHearingAidProfileSupported()Z

    move-result v2

    .line 419
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 421
    goto/16 :goto_0

    .line 411
    .end local v2    # "_result":Z
    :pswitch_2
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothManager$Stub;->factoryReset()Z

    move-result v2

    .line 412
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 414
    goto/16 :goto_0

    .line 404
    .end local v2    # "_result":Z
    :pswitch_3
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothManager$Stub;->isBleAppPresent()Z

    move-result v2

    .line 405
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 407
    goto/16 :goto_0

    .line 393
    .end local v2    # "_result":Z
    :pswitch_4
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 395
    .local v2, "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 396
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 397
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothManager$Stub;->disableBle(Landroid/content/AttributionSource;Landroid/os/IBinder;)Z

    move-result v4

    .line 398
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 400
    goto/16 :goto_0

    .line 381
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v4    # "_result":Z
    :pswitch_5
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 383
    .restart local v2    # "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 384
    .restart local v3    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 385
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothManager$Stub;->enableBle(Landroid/content/AttributionSource;Landroid/os/IBinder;)Z

    move-result v4

    .line 386
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 388
    goto/16 :goto_0

    .line 373
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v4    # "_result":Z
    :pswitch_6
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothManager$Stub;->isBleScanAlwaysAvailable()Z

    move-result v2

    .line 374
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 376
    goto/16 :goto_0

    .line 364
    .end local v2    # "_result":Z
    :pswitch_7
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 365
    .local v2, "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 366
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothManager$Stub;->onFactoryReset(Landroid/content/AttributionSource;)Z

    move-result v3

    .line 367
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 369
    goto/16 :goto_0

    .line 354
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_result":Z
    :pswitch_8
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 355
    .restart local v2    # "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 356
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothManager$Stub;->getName(Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v3

    .line 357
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 359
    goto/16 :goto_0

    .line 344
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_9
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 345
    .restart local v2    # "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 346
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothManager$Stub;->getAddress(Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v3

    .line 347
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 349
    goto/16 :goto_0

    .line 333
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 335
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/IBluetoothProfileServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothProfileServiceConnection;

    move-result-object v3

    .line 336
    .local v3, "_arg1":Landroid/bluetooth/IBluetoothProfileServiceConnection;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 337
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothManager$Stub;->unbindBluetoothProfileService(ILandroid/bluetooth/IBluetoothProfileServiceConnection;)V

    .line 338
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    goto/16 :goto_0

    .line 321
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/bluetooth/IBluetoothProfileServiceConnection;
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 323
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/IBluetoothProfileServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothProfileServiceConnection;

    move-result-object v3

    .line 324
    .restart local v3    # "_arg1":Landroid/bluetooth/IBluetoothProfileServiceConnection;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 325
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothManager$Stub;->bindBluetoothProfileService(ILandroid/bluetooth/IBluetoothProfileServiceConnection;)Z

    move-result v4

    .line 326
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 328
    goto/16 :goto_0

    .line 313
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/bluetooth/IBluetoothProfileServiceConnection;
    .end local v4    # "_result":Z
    :pswitch_c
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothManager$Stub;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v2

    .line 314
    .local v2, "_result":Landroid/bluetooth/IBluetoothGatt;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 316
    goto/16 :goto_0

    .line 306
    .end local v2    # "_result":Landroid/bluetooth/IBluetoothGatt;
    :pswitch_d
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothManager$Stub;->getState()I

    move-result v2

    .line 307
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    goto/16 :goto_0

    .line 295
    .end local v2    # "_result":I
    :pswitch_e
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 297
    .local v2, "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 298
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 299
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothManager$Stub;->disable(Landroid/content/AttributionSource;Z)Z

    move-result v4

    .line 300
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 302
    goto/16 :goto_0

    .line 285
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_f
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 286
    .restart local v2    # "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 287
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothManager$Stub;->enableNoAutoConnect(Landroid/content/AttributionSource;)Z

    move-result v3

    .line 288
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 290
    goto :goto_0

    .line 275
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_result":Z
    :pswitch_10
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 276
    .restart local v2    # "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 277
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothManager$Stub;->enable(Landroid/content/AttributionSource;)Z

    move-result v3

    .line 278
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 280
    goto :goto_0

    .line 266
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_result":Z
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothStateChangeCallback;

    move-result-object v2

    .line 267
    .local v2, "_arg0":Landroid/bluetooth/IBluetoothStateChangeCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 268
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothManager$Stub;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V

    .line 269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    goto :goto_0

    .line 257
    .end local v2    # "_arg0":Landroid/bluetooth/IBluetoothStateChangeCallback;
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothStateChangeCallback;

    move-result-object v2

    .line 258
    .restart local v2    # "_arg0":Landroid/bluetooth/IBluetoothStateChangeCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothManager$Stub;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    goto :goto_0

    .line 248
    .end local v2    # "_arg0":Landroid/bluetooth/IBluetoothStateChangeCallback;
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManagerCallback;

    move-result-object v2

    .line 249
    .local v2, "_arg0":Landroid/bluetooth/IBluetoothManagerCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 250
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothManager$Stub;->unregisterAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)V

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    goto :goto_0

    .line 238
    .end local v2    # "_arg0":Landroid/bluetooth/IBluetoothManagerCallback;
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManagerCallback;

    move-result-object v2

    .line 239
    .restart local v2    # "_arg0":Landroid/bluetooth/IBluetoothManagerCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothManager$Stub;->registerAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    .line 241
    .local v3, "_result":Landroid/bluetooth/IBluetooth;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 243
    nop

    .line 428
    .end local v2    # "_arg0":Landroid/bluetooth/IBluetoothManagerCallback;
    .end local v3    # "_result":Landroid/bluetooth/IBluetooth;
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
