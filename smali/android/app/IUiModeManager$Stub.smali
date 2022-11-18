.class public abstract Landroid/app/IUiModeManager$Stub;
.super Landroid/os/Binder;
.source "IUiModeManager.java"

# interfaces
.implements Landroid/app/IUiModeManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IUiModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IUiModeManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.IUiModeManager"

.field static final blacklist TRANSACTION_addOnProjectionStateChangedListener:I = 0x14

.field static final greylist-max-o TRANSACTION_disableCarMode:I = 0x2

.field static final blacklist TRANSACTION_disableCarModeByCallingPackage:I = 0x3

.field static final greylist-max-o TRANSACTION_enableCarMode:I = 0x1

.field static final blacklist TRANSACTION_getActiveProjectionTypes:I = 0x17

.field static final greylist-max-o TRANSACTION_getCurrentModeType:I = 0x4

.field static final blacklist TRANSACTION_getCustomNightModeEnd:I = 0x10

.field static final blacklist TRANSACTION_getCustomNightModeStart:I = 0xe

.field static final greylist-max-o TRANSACTION_getNightMode:I = 0x6

.field static final blacklist TRANSACTION_getNightModeCustomType:I = 0x8

.field static final blacklist TRANSACTION_getProjectingPackages:I = 0x16

.field static final greylist-max-o TRANSACTION_isNightModeLocked:I = 0xb

.field static final greylist-max-o TRANSACTION_isUiModeLocked:I = 0xa

.field static final blacklist TRANSACTION_releaseProjection:I = 0x13

.field static final blacklist TRANSACTION_removeOnProjectionStateChangedListener:I = 0x15

.field static final blacklist TRANSACTION_requestProjection:I = 0x12

.field static final blacklist TRANSACTION_setApplicationNightMode:I = 0x9

.field static final blacklist TRANSACTION_setCustomNightModeEnd:I = 0x11

.field static final blacklist TRANSACTION_setCustomNightModeStart:I = 0xf

.field static final greylist-max-o TRANSACTION_setNightMode:I = 0x5

.field static final blacklist TRANSACTION_setNightModeActivated:I = 0xd

.field static final blacklist TRANSACTION_setNightModeActivatedForCustomMode:I = 0xc

.field static final blacklist TRANSACTION_setNightModeCustomType:I = 0x7


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 179
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 180
    const-string v0, "android.app.IUiModeManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IUiModeManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public static greylist-max-p asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 188
    if-nez p0, :cond_0

    .line 189
    const/4 v0, 0x0

    return-object v0

    .line 191
    :cond_0
    const-string v0, "android.app.IUiModeManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 192
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IUiModeManager;

    if-eqz v1, :cond_1

    .line 193
    move-object v1, v0

    check-cast v1, Landroid/app/IUiModeManager;

    return-object v1

    .line 195
    :cond_1
    new-instance v1, Landroid/app/IUiModeManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IUiModeManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 204
    packed-switch p0, :pswitch_data_0

    .line 300
    const/4 v0, 0x0

    return-object v0

    .line 296
    :pswitch_0
    const-string v0, "getActiveProjectionTypes"

    return-object v0

    .line 292
    :pswitch_1
    const-string v0, "getProjectingPackages"

    return-object v0

    .line 288
    :pswitch_2
    const-string/jumbo v0, "removeOnProjectionStateChangedListener"

    return-object v0

    .line 284
    :pswitch_3
    const-string v0, "addOnProjectionStateChangedListener"

    return-object v0

    .line 280
    :pswitch_4
    const-string/jumbo v0, "releaseProjection"

    return-object v0

    .line 276
    :pswitch_5
    const-string/jumbo v0, "requestProjection"

    return-object v0

    .line 272
    :pswitch_6
    const-string/jumbo v0, "setCustomNightModeEnd"

    return-object v0

    .line 268
    :pswitch_7
    const-string v0, "getCustomNightModeEnd"

    return-object v0

    .line 264
    :pswitch_8
    const-string/jumbo v0, "setCustomNightModeStart"

    return-object v0

    .line 260
    :pswitch_9
    const-string v0, "getCustomNightModeStart"

    return-object v0

    .line 256
    :pswitch_a
    const-string/jumbo v0, "setNightModeActivated"

    return-object v0

    .line 252
    :pswitch_b
    const-string/jumbo v0, "setNightModeActivatedForCustomMode"

    return-object v0

    .line 248
    :pswitch_c
    const-string v0, "isNightModeLocked"

    return-object v0

    .line 244
    :pswitch_d
    const-string v0, "isUiModeLocked"

    return-object v0

    .line 240
    :pswitch_e
    const-string/jumbo v0, "setApplicationNightMode"

    return-object v0

    .line 236
    :pswitch_f
    const-string v0, "getNightModeCustomType"

    return-object v0

    .line 232
    :pswitch_10
    const-string/jumbo v0, "setNightModeCustomType"

    return-object v0

    .line 228
    :pswitch_11
    const-string v0, "getNightMode"

    return-object v0

    .line 224
    :pswitch_12
    const-string/jumbo v0, "setNightMode"

    return-object v0

    .line 220
    :pswitch_13
    const-string v0, "getCurrentModeType"

    return-object v0

    .line 216
    :pswitch_14
    const-string v0, "disableCarModeByCallingPackage"

    return-object v0

    .line 212
    :pswitch_15
    const-string v0, "disableCarMode"

    return-object v0

    .line 208
    :pswitch_16
    const-string v0, "enableCarMode"

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

    .line 199
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1044
    const/16 v0, 0x16

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 307
    invoke-static {p1}, Landroid/app/IUiModeManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 311
    const-string v0, "android.app.IUiModeManager"

    .line 312
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 313
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 323
    packed-switch p1, :pswitch_data_1

    .line 539
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 319
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 320
    return v1

    .line 532
    :pswitch_1
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getActiveProjectionTypes()I

    move-result v2

    .line 533
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 535
    goto/16 :goto_0

    .line 523
    .end local v2    # "_result":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 524
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 525
    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->getProjectingPackages(I)Ljava/util/List;

    move-result-object v3

    .line 526
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 528
    goto/16 :goto_0

    .line 514
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IOnProjectionStateChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IOnProjectionStateChangedListener;

    move-result-object v2

    .line 515
    .local v2, "_arg0":Landroid/app/IOnProjectionStateChangedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 516
    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->removeOnProjectionStateChangedListener(Landroid/app/IOnProjectionStateChangedListener;)V

    .line 517
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    goto/16 :goto_0

    .line 503
    .end local v2    # "_arg0":Landroid/app/IOnProjectionStateChangedListener;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IOnProjectionStateChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IOnProjectionStateChangedListener;

    move-result-object v2

    .line 505
    .restart local v2    # "_arg0":Landroid/app/IOnProjectionStateChangedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 506
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 507
    invoke-virtual {p0, v2, v3}, Landroid/app/IUiModeManager$Stub;->addOnProjectionStateChangedListener(Landroid/app/IOnProjectionStateChangedListener;I)V

    .line 508
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    goto/16 :goto_0

    .line 491
    .end local v2    # "_arg0":Landroid/app/IOnProjectionStateChangedListener;
    .end local v3    # "_arg1":I
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 493
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 494
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 495
    invoke-virtual {p0, v2, v3}, Landroid/app/IUiModeManager$Stub;->releaseProjection(ILjava/lang/String;)Z

    move-result v4

    .line 496
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 498
    goto/16 :goto_0

    .line 477
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 479
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 481
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 482
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 483
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IUiModeManager$Stub;->requestProjection(Landroid/os/IBinder;ILjava/lang/String;)Z

    move-result v5

    .line 484
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 486
    goto/16 :goto_0

    .line 468
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 469
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 470
    invoke-virtual {p0, v2, v3}, Landroid/app/IUiModeManager$Stub;->setCustomNightModeEnd(J)V

    .line 471
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    goto/16 :goto_0

    .line 460
    .end local v2    # "_arg0":J
    :pswitch_8
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getCustomNightModeEnd()J

    move-result-wide v2

    .line 461
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 463
    goto/16 :goto_0

    .line 452
    .end local v2    # "_result":J
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 453
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 454
    invoke-virtual {p0, v2, v3}, Landroid/app/IUiModeManager$Stub;->setCustomNightModeStart(J)V

    .line 455
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    goto/16 :goto_0

    .line 444
    .end local v2    # "_arg0":J
    :pswitch_a
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getCustomNightModeStart()J

    move-result-wide v2

    .line 445
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 447
    goto/16 :goto_0

    .line 435
    .end local v2    # "_result":J
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 436
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 437
    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->setNightModeActivated(Z)Z

    move-result v3

    .line 438
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 440
    goto/16 :goto_0

    .line 423
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 425
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 426
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 427
    invoke-virtual {p0, v2, v3}, Landroid/app/IUiModeManager$Stub;->setNightModeActivatedForCustomMode(IZ)Z

    move-result v4

    .line 428
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 430
    goto/16 :goto_0

    .line 415
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_d
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->isNightModeLocked()Z

    move-result v2

    .line 416
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 418
    goto/16 :goto_0

    .line 408
    .end local v2    # "_result":Z
    :pswitch_e
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->isUiModeLocked()Z

    move-result v2

    .line 409
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 411
    goto/16 :goto_0

    .line 400
    .end local v2    # "_result":Z
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 401
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 402
    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->setApplicationNightMode(I)V

    .line 403
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    goto/16 :goto_0

    .line 392
    .end local v2    # "_arg0":I
    :pswitch_10
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getNightModeCustomType()I

    move-result v2

    .line 393
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    goto :goto_0

    .line 384
    .end local v2    # "_result":I
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 385
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 386
    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->setNightModeCustomType(I)V

    .line 387
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    goto :goto_0

    .line 376
    .end local v2    # "_arg0":I
    :pswitch_12
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getNightMode()I

    move-result v2

    .line 377
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    goto :goto_0

    .line 368
    .end local v2    # "_result":I
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 369
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 370
    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->setNightMode(I)V

    .line 371
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    goto :goto_0

    .line 360
    .end local v2    # "_arg0":I
    :pswitch_14
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getCurrentModeType()I

    move-result v2

    .line 361
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    goto :goto_0

    .line 350
    .end local v2    # "_result":I
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 352
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 353
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 354
    invoke-virtual {p0, v2, v3}, Landroid/app/IUiModeManager$Stub;->disableCarModeByCallingPackage(ILjava/lang/String;)V

    .line 355
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    goto :goto_0

    .line 341
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 342
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 343
    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->disableCarMode(I)V

    .line 344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    goto :goto_0

    .line 328
    .end local v2    # "_arg0":I
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 330
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 332
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 333
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 334
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IUiModeManager$Stub;->enableCarMode(IILjava/lang/String;)V

    .line 335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    nop

    .line 542
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :goto_0
    return v1

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
