.class public abstract Landroid/os/renderacc/IRenderAcceleratingService$Stub;
.super Landroid/os/Binder;
.source "IRenderAcceleratingService.java"

# interfaces
.implements Landroid/os/renderacc/IRenderAcceleratingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/renderacc/IRenderAcceleratingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/renderacc/IRenderAcceleratingService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getDeviceCapability:I = 0x2

.field static final blacklist TRANSACTION_getDeviceType:I = 0x1

.field static final blacklist TRANSACTION_getDeviceWorkMode:I = 0x3

.field static final blacklist TRANSACTION_isGameInPqEnhanceList:I = 0x8

.field static final blacklist TRANSACTION_isSupportGameFrc:I = 0x7

.field static final blacklist TRANSACTION_isSupportSuperResolution:I = 0xc

.field static final blacklist TRANSACTION_registerListener:I = 0xf

.field static final blacklist TRANSACTION_setDeviceCommand:I = 0x4

.field static final blacklist TRANSACTION_setGameFps:I = 0x9

.field static final blacklist TRANSACTION_setPqEnhanceListMode:I = 0x5

.field static final blacklist TRANSACTION_turnOffGameFrc:I = 0xb

.field static final blacklist TRANSACTION_turnOffSuperResolution:I = 0xe

.field static final blacklist TRANSACTION_turnOnGameFrc:I = 0xa

.field static final blacklist TRANSACTION_turnOnSuperResolution:I = 0xd

.field static final blacklist TRANSACTION_unregisterListener:I = 0x10

.field static final blacklist TRANSACTION_updatePqEnhanceList:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 242
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 243
    const-string v0, "android.os.renderacc.IRenderAcceleratingService"

    invoke-virtual {p0, p0, v0}, Landroid/os/renderacc/IRenderAcceleratingService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/renderacc/IRenderAcceleratingService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 251
    if-nez p0, :cond_0

    .line 252
    const/4 v0, 0x0

    return-object v0

    .line 254
    :cond_0
    const-string v0, "android.os.renderacc.IRenderAcceleratingService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 255
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/renderacc/IRenderAcceleratingService;

    if-eqz v1, :cond_1

    .line 256
    move-object v1, v0

    check-cast v1, Landroid/os/renderacc/IRenderAcceleratingService;

    return-object v1

    .line 258
    :cond_1
    new-instance v1, Landroid/os/renderacc/IRenderAcceleratingService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/renderacc/IRenderAcceleratingService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 267
    packed-switch p0, :pswitch_data_0

    .line 335
    const/4 v0, 0x0

    return-object v0

    .line 331
    :pswitch_0
    const-string/jumbo v0, "unregisterListener"

    return-object v0

    .line 327
    :pswitch_1
    const-string/jumbo v0, "registerListener"

    return-object v0

    .line 323
    :pswitch_2
    const-string/jumbo v0, "turnOffSuperResolution"

    return-object v0

    .line 319
    :pswitch_3
    const-string/jumbo v0, "turnOnSuperResolution"

    return-object v0

    .line 315
    :pswitch_4
    const-string/jumbo v0, "isSupportSuperResolution"

    return-object v0

    .line 311
    :pswitch_5
    const-string/jumbo v0, "turnOffGameFrc"

    return-object v0

    .line 307
    :pswitch_6
    const-string/jumbo v0, "turnOnGameFrc"

    return-object v0

    .line 303
    :pswitch_7
    const-string/jumbo v0, "setGameFps"

    return-object v0

    .line 299
    :pswitch_8
    const-string/jumbo v0, "isGameInPqEnhanceList"

    return-object v0

    .line 295
    :pswitch_9
    const-string/jumbo v0, "isSupportGameFrc"

    return-object v0

    .line 291
    :pswitch_a
    const-string/jumbo v0, "updatePqEnhanceList"

    return-object v0

    .line 287
    :pswitch_b
    const-string/jumbo v0, "setPqEnhanceListMode"

    return-object v0

    .line 283
    :pswitch_c
    const-string/jumbo v0, "setDeviceCommand"

    return-object v0

    .line 279
    :pswitch_d
    const-string v0, "getDeviceWorkMode"

    return-object v0

    .line 275
    :pswitch_e
    const-string v0, "getDeviceCapability"

    return-object v0

    .line 271
    :pswitch_f
    const-string v0, "getDeviceType"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 262
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 969
    const/16 v0, 0xf

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 342
    invoke-static {p1}, Landroid/os/renderacc/IRenderAcceleratingService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 346
    const-string v0, "android.os.renderacc.IRenderAcceleratingService"

    .line 347
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 348
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 358
    packed-switch p1, :pswitch_data_1

    .line 499
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 354
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 355
    return v1

    .line 490
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/renderacc/IRenderAcceleratingStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/renderacc/IRenderAcceleratingStateListener;

    move-result-object v2

    .line 491
    .local v2, "_arg0":Landroid/os/renderacc/IRenderAcceleratingStateListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 492
    invoke-virtual {p0, v2}, Landroid/os/renderacc/IRenderAcceleratingService$Stub;->unregisterListener(Landroid/os/renderacc/IRenderAcceleratingStateListener;)I

    move-result v3

    .line 493
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 495
    goto/16 :goto_0

    .line 480
    .end local v2    # "_arg0":Landroid/os/renderacc/IRenderAcceleratingStateListener;
    .end local v3    # "_result":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/renderacc/IRenderAcceleratingStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/renderacc/IRenderAcceleratingStateListener;

    move-result-object v2

    .line 481
    .restart local v2    # "_arg0":Landroid/os/renderacc/IRenderAcceleratingStateListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 482
    invoke-virtual {p0, v2}, Landroid/os/renderacc/IRenderAcceleratingService$Stub;->registerListener(Landroid/os/renderacc/IRenderAcceleratingStateListener;)I

    move-result v3

    .line 483
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 485
    goto/16 :goto_0

    .line 472
    .end local v2    # "_arg0":Landroid/os/renderacc/IRenderAcceleratingStateListener;
    .end local v3    # "_result":I
    :pswitch_3
    invoke-virtual {p0}, Landroid/os/renderacc/IRenderAcceleratingService$Stub;->turnOffSuperResolution()I

    move-result v2

    .line 473
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 474
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 475
    goto/16 :goto_0

    .line 465
    .end local v2    # "_result":I
    :pswitch_4
    invoke-virtual {p0}, Landroid/os/renderacc/IRenderAcceleratingService$Stub;->turnOnSuperResolution()I

    move-result v2

    .line 466
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 468
    goto/16 :goto_0

    .line 458
    .end local v2    # "_result":I
    :pswitch_5
    invoke-virtual {p0}, Landroid/os/renderacc/IRenderAcceleratingService$Stub;->isSupportSuperResolution()I

    move-result v2

    .line 459
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 461
    goto/16 :goto_0

    .line 451
    .end local v2    # "_result":I
    :pswitch_6
    invoke-virtual {p0}, Landroid/os/renderacc/IRenderAcceleratingService$Stub;->turnOffGameFrc()I

    move-result v2

    .line 452
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 454
    goto/16 :goto_0

    .line 440
    .end local v2    # "_result":I
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 442
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 443
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 444
    invoke-virtual {p0, v2, v3}, Landroid/os/renderacc/IRenderAcceleratingService$Stub;->turnOnGameFrc(II)I

    move-result v4

    .line 445
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    goto/16 :goto_0

    .line 430
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 431
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 432
    invoke-virtual {p0, v2}, Landroid/os/renderacc/IRenderAcceleratingService$Stub;->setGameFps(I)I

    move-result v3

    .line 433
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    goto :goto_0

    .line 420
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 421
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 422
    invoke-virtual {p0, v2}, Landroid/os/renderacc/IRenderAcceleratingService$Stub;->isGameInPqEnhanceList(Ljava/lang/String;)I

    move-result v3

    .line 423
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    goto :goto_0

    .line 412
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_a
    invoke-virtual {p0}, Landroid/os/renderacc/IRenderAcceleratingService$Stub;->isSupportGameFrc()I

    move-result v2

    .line 413
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    goto :goto_0

    .line 402
    .end local v2    # "_result":I
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 404
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 405
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 406
    invoke-virtual {p0, v2, v3}, Landroid/os/renderacc/IRenderAcceleratingService$Stub;->updatePqEnhanceList(Ljava/lang/String;Ljava/util/List;)V

    .line 407
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    goto :goto_0

    .line 393
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 394
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 395
    invoke-virtual {p0, v2}, Landroid/os/renderacc/IRenderAcceleratingService$Stub;->setPqEnhanceListMode(I)V

    .line 396
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    goto :goto_0

    .line 384
    .end local v2    # "_arg0":I
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 385
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 386
    invoke-virtual {p0, v2}, Landroid/os/renderacc/IRenderAcceleratingService$Stub;->setDeviceCommand(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    goto :goto_0

    .line 376
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_e
    invoke-virtual {p0}, Landroid/os/renderacc/IRenderAcceleratingService$Stub;->getDeviceWorkMode()I

    move-result v2

    .line 377
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    goto :goto_0

    .line 369
    .end local v2    # "_result":I
    :pswitch_f
    invoke-virtual {p0}, Landroid/os/renderacc/IRenderAcceleratingService$Stub;->getDeviceCapability()I

    move-result v2

    .line 370
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    goto :goto_0

    .line 362
    .end local v2    # "_result":I
    :pswitch_10
    invoke-virtual {p0}, Landroid/os/renderacc/IRenderAcceleratingService$Stub;->getDeviceType()I

    move-result v2

    .line 363
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    nop

    .line 502
    .end local v2    # "_result":I
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
