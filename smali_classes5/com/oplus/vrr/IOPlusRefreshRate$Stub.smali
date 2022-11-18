.class public abstract Lcom/oplus/vrr/IOPlusRefreshRate$Stub;
.super Landroid/os/Binder;
.source "IOPlusRefreshRate.java"

# interfaces
.implements Lcom/oplus/vrr/IOPlusRefreshRate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/vrr/IOPlusRefreshRate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/vrr/IOPlusRefreshRate$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_findDisplayModeIdByPolicy:I = 0x3

.field static final blacklist TRANSACTION_getList:I = 0x12

.field static final blacklist TRANSACTION_getModeType:I = 0xa

.field static final blacklist TRANSACTION_getPreferredFrameRate:I = 0xc

.field static final blacklist TRANSACTION_getRefreshRatePolicy:I = 0x8

.field static final blacklist TRANSACTION_hasFlickerRisk:I = 0xd

.field static final blacklist TRANSACTION_isGameAccelerationScene:I = 0x10

.field static final blacklist TRANSACTION_isWhiteListGame:I = 0x11

.field static final blacklist TRANSACTION_notifyBrightnessChange:I = 0x6

.field static final blacklist TRANSACTION_notifyNitsChange:I = 0x5

.field static final blacklist TRANSACTION_screenStateChange:I = 0x4

.field static final blacklist TRANSACTION_screenStateChangeWarning:I = 0x17

.field static final blacklist TRANSACTION_setDisplayFrameRateControl:I = 0x15

.field static final blacklist TRANSACTION_setExternalRefreshRateStatus:I = 0x1

.field static final blacklist TRANSACTION_setFrameRate:I = 0x13

.field static final blacklist TRANSACTION_setFrameRateTargetControl:I = 0x14

.field static final blacklist TRANSACTION_setLowFreqVideo:I = 0xb

.field static final blacklist TRANSACTION_setRefreshRatePolicy:I = 0x7

.field static final blacklist TRANSACTION_setSystemFrameRateControl:I = 0x16

.field static final blacklist TRANSACTION_setTgpaGameData:I = 0xf

.field static final blacklist TRANSACTION_setVsyncConfig:I = 0x9

.field static final blacklist TRANSACTION_updateAccelerationPkgName:I = 0xe

.field static final blacklist TRANSACTION_updateDisplayModes:I = 0x2


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 102
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 103
    const-string v0, "com.oplus.vrr.IOPlusRefreshRate"

    invoke-virtual {p0, p0, v0}, Lcom/oplus/vrr/IOPlusRefreshRate$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public static whitelist asInterface(Landroid/os/IBinder;)Lcom/oplus/vrr/IOPlusRefreshRate;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 111
    if-nez p0, :cond_0

    .line 112
    const/4 v0, 0x0

    return-object v0

    .line 114
    :cond_0
    const-string v0, "com.oplus.vrr.IOPlusRefreshRate"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 115
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oplus/vrr/IOPlusRefreshRate;

    if-eqz v1, :cond_1

    .line 116
    move-object v1, v0

    check-cast v1, Lcom/oplus/vrr/IOPlusRefreshRate;

    return-object v1

    .line 118
    :cond_1
    new-instance v1, Lcom/oplus/vrr/IOPlusRefreshRate$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/oplus/vrr/IOPlusRefreshRate$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 127
    packed-switch p0, :pswitch_data_0

    .line 223
    const/4 v0, 0x0

    return-object v0

    .line 219
    :pswitch_0
    const-string v0, "screenStateChangeWarning"

    return-object v0

    .line 215
    :pswitch_1
    const-string v0, "setSystemFrameRateControl"

    return-object v0

    .line 211
    :pswitch_2
    const-string v0, "setDisplayFrameRateControl"

    return-object v0

    .line 207
    :pswitch_3
    const-string v0, "setFrameRateTargetControl"

    return-object v0

    .line 203
    :pswitch_4
    const-string v0, "setFrameRate"

    return-object v0

    .line 199
    :pswitch_5
    const-string v0, "getList"

    return-object v0

    .line 195
    :pswitch_6
    const-string v0, "isWhiteListGame"

    return-object v0

    .line 191
    :pswitch_7
    const-string v0, "isGameAccelerationScene"

    return-object v0

    .line 187
    :pswitch_8
    const-string v0, "setTgpaGameData"

    return-object v0

    .line 183
    :pswitch_9
    const-string v0, "updateAccelerationPkgName"

    return-object v0

    .line 179
    :pswitch_a
    const-string v0, "hasFlickerRisk"

    return-object v0

    .line 175
    :pswitch_b
    const-string v0, "getPreferredFrameRate"

    return-object v0

    .line 171
    :pswitch_c
    const-string v0, "setLowFreqVideo"

    return-object v0

    .line 167
    :pswitch_d
    const-string v0, "getModeType"

    return-object v0

    .line 163
    :pswitch_e
    const-string v0, "setVsyncConfig"

    return-object v0

    .line 159
    :pswitch_f
    const-string v0, "getRefreshRatePolicy"

    return-object v0

    .line 155
    :pswitch_10
    const-string v0, "setRefreshRatePolicy"

    return-object v0

    .line 151
    :pswitch_11
    const-string v0, "notifyBrightnessChange"

    return-object v0

    .line 147
    :pswitch_12
    const-string v0, "notifyNitsChange"

    return-object v0

    .line 143
    :pswitch_13
    const-string v0, "screenStateChange"

    return-object v0

    .line 139
    :pswitch_14
    const-string v0, "findDisplayModeIdByPolicy"

    return-object v0

    .line 135
    :pswitch_15
    const-string v0, "updateDisplayModes"

    return-object v0

    .line 131
    :pswitch_16
    const-string v0, "setExternalRefreshRateStatus"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 122
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 956
    const/16 v0, 0x16

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 230
    invoke-static {p1}, Lcom/oplus/vrr/IOPlusRefreshRate$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 234
    const-string v0, "com.oplus.vrr.IOPlusRefreshRate"

    .line 235
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 236
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 246
    packed-switch p1, :pswitch_data_1

    .line 506
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 242
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    return v1

    .line 498
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 499
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 500
    invoke-virtual {p0, v2}, Lcom/oplus/vrr/IOPlusRefreshRate$Stub;->screenStateChangeWarning(I)V

    .line 501
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    goto/16 :goto_0

    .line 486
    .end local v2    # "_arg0":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 488
    .local v2, "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 489
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 490
    invoke-virtual {p0, v2, v3}, Lcom/oplus/vrr/IOPlusRefreshRate$Stub;->setSystemFrameRateControl(FLjava/lang/String;)Z

    move-result v4

    .line 491
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 493
    goto/16 :goto_0

    .line 470
    .end local v2    # "_arg0":F
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 472
    .restart local v2    # "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 474
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 476
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 477
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 478
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/oplus/vrr/IOPlusRefreshRate$Stub;->setDisplayFrameRateControl(FLjava/lang/String;II)Z

    move-result v6

    .line 479
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 481
    goto/16 :goto_0

    .line 454
    .end local v2    # "_arg0":F
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_result":Z
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 456
    .restart local v2    # "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 458
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 460
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 461
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 462
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/oplus/vrr/IOPlusRefreshRate$Stub;->setFrameRateTargetControl(FLjava/lang/String;ZLjava/lang/String;)Z

    move-result v6

    .line 463
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 465
    goto/16 :goto_0

    .line 438
    .end local v2    # "_arg0":F
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v6    # "_result":Z
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 440
    .restart local v2    # "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 442
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 444
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 445
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 446
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/oplus/vrr/IOPlusRefreshRate$Stub;->setFrameRate(FLjava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    .line 447
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 449
    goto/16 :goto_0

    .line 428
    .end local v2    # "_arg0":F
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":I
    .end local v6    # "_result":Z
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 429
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 430
    invoke-virtual {p0, v2}, Lcom/oplus/vrr/IOPlusRefreshRate$Stub;->getList(I)Ljava/util/List;

    move-result-object v3

    .line 431
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 433
    goto/16 :goto_0

    .line 418
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 419
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 420
    invoke-virtual {p0, v2}, Lcom/oplus/vrr/IOPlusRefreshRate$Stub;->isWhiteListGame(Ljava/lang/String;)Z

    move-result v3

    .line 421
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 423
    goto/16 :goto_0

    .line 410
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_8
    invoke-virtual {p0}, Lcom/oplus/vrr/IOPlusRefreshRate$Stub;->isGameAccelerationScene()Z

    move-result v2

    .line 411
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 413
    goto/16 :goto_0

    .line 402
    .end local v2    # "_result":Z
    :pswitch_9
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 403
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 404
    invoke-virtual {p0, v2}, Lcom/oplus/vrr/IOPlusRefreshRate$Stub;->setTgpaGameData(Landroid/os/Bundle;)V

    .line 405
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    goto/16 :goto_0

    .line 389
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 391
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 393
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 394
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 395
    invoke-virtual {p0, v2, v3, v4}, Lcom/oplus/vrr/IOPlusRefreshRate$Stub;->updateAccelerationPkgName(Ljava/lang/String;II)V

    .line 396
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    goto/16 :goto_0

    .line 381
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_b
    invoke-virtual {p0}, Lcom/oplus/vrr/IOPlusRefreshRate$Stub;->hasFlickerRisk()Z

    move-result v2

    .line 382
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 384
    goto/16 :goto_0

    .line 370
    .end local v2    # "_result":Z
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 372
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 373
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 374
    invoke-virtual {p0, v2, v3}, Lcom/oplus/vrr/IOPlusRefreshRate$Stub;->getPreferredFrameRate(Ljava/lang/String;Ljava/lang/String;)F

    move-result v4

    .line 375
    .local v4, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeFloat(F)V

    .line 377
    goto/16 :goto_0

    .line 361
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":F
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 362
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 363
    invoke-virtual {p0, v2}, Lcom/oplus/vrr/IOPlusRefreshRate$Stub;->setLowFreqVideo(Z)V

    .line 364
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    goto/16 :goto_0

    .line 351
    .end local v2    # "_arg0":Z
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 352
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 353
    invoke-virtual {p0, v2}, Lcom/oplus/vrr/IOPlusRefreshRate$Stub;->getModeType(I)I

    move-result v3

    .line 354
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    goto/16 :goto_0

    .line 335
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 337
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 339
    .local v3, "_arg1":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 341
    .local v4, "_arg2":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 342
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 343
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/oplus/vrr/IOPlusRefreshRate$Stub;->setVsyncConfig(IFFLjava/lang/String;)Z

    move-result v6

    .line 344
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 346
    goto/16 :goto_0

    .line 325
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":F
    .end local v4    # "_arg2":F
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v6    # "_result":Z
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 326
    .local v2, "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 327
    invoke-virtual {p0, v2}, Lcom/oplus/vrr/IOPlusRefreshRate$Stub;->getRefreshRatePolicy(F)I

    move-result v3

    .line 328
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    goto/16 :goto_0

    .line 310
    .end local v2    # "_arg0":F
    .end local v3    # "_result":I
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 312
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 314
    .local v3, "_arg1":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 316
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 317
    .local v5, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 318
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/oplus/vrr/IOPlusRefreshRate$Stub;->setRefreshRatePolicy(IFIZ)V

    .line 319
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    goto :goto_0

    .line 301
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":F
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Z
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 302
    .local v2, "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 303
    invoke-virtual {p0, v2}, Lcom/oplus/vrr/IOPlusRefreshRate$Stub;->notifyBrightnessChange(F)V

    .line 304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    goto :goto_0

    .line 292
    .end local v2    # "_arg0":F
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 293
    .restart local v2    # "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 294
    invoke-virtual {p0, v2}, Lcom/oplus/vrr/IOPlusRefreshRate$Stub;->notifyNitsChange(F)V

    .line 295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    goto :goto_0

    .line 283
    .end local v2    # "_arg0":F
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 284
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 285
    invoke-virtual {p0, v2}, Lcom/oplus/vrr/IOPlusRefreshRate$Stub;->screenStateChange(I)V

    .line 286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    goto :goto_0

    .line 269
    .end local v2    # "_arg0":I
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 271
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 273
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 274
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 275
    invoke-virtual {p0, v2, v3, v4}, Lcom/oplus/vrr/IOPlusRefreshRate$Stub;->findDisplayModeIdByPolicy(III)I

    move-result v5

    .line 276
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    goto :goto_0

    .line 260
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":I
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 261
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 262
    invoke-virtual {p0, v2, v3}, Lcom/oplus/vrr/IOPlusRefreshRate$Stub;->updateDisplayModes(J)V

    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    goto :goto_0

    .line 251
    .end local v2    # "_arg0":J
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 252
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 253
    invoke-virtual {p0, v2}, Lcom/oplus/vrr/IOPlusRefreshRate$Stub;->setExternalRefreshRateStatus(I)V

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    nop

    .line 509
    .end local v2    # "_arg0":I
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
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
