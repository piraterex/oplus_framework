.class public abstract Landroid/gsi/IGsiService$Stub;
.super Landroid/os/Binder;
.source "IGsiService.java"

# interfaces
.implements Landroid/gsi/IGsiService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gsi/IGsiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/gsi/IGsiService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cancelGsiInstall:I = 0x8

.field static final blacklist TRANSACTION_closeInstall:I = 0x13

.field static final blacklist TRANSACTION_closePartition:I = 0x15

.field static final blacklist TRANSACTION_commitGsiChunkFromAshmem:I = 0x4

.field static final blacklist TRANSACTION_commitGsiChunkFromStream:I = 0x1

.field static final blacklist TRANSACTION_createPartition:I = 0x14

.field static final blacklist TRANSACTION_disableGsi:I = 0xc

.field static final blacklist TRANSACTION_dumpDeviceMapperDevices:I = 0x18

.field static final blacklist TRANSACTION_enableGsi:I = 0x5

.field static final blacklist TRANSACTION_enableGsiAsync:I = 0x6

.field static final blacklist TRANSACTION_getActiveDsuSlot:I = 0xf

.field static final blacklist TRANSACTION_getAvbPublicKey:I = 0x19

.field static final blacklist TRANSACTION_getInstallProgress:I = 0x2

.field static final blacklist TRANSACTION_getInstalledDsuSlots:I = 0x11

.field static final blacklist TRANSACTION_getInstalledGsiImageDir:I = 0x10

.field static final blacklist TRANSACTION_isGsiEnabled:I = 0x7

.field static final blacklist TRANSACTION_isGsiInstallInProgress:I = 0x9

.field static final blacklist TRANSACTION_isGsiInstalled:I = 0xd

.field static final blacklist TRANSACTION_isGsiRunning:I = 0xe

.field static final blacklist TRANSACTION_openImageService:I = 0x17

.field static final blacklist TRANSACTION_openInstall:I = 0x12

.field static final blacklist TRANSACTION_removeGsi:I = 0xa

.field static final blacklist TRANSACTION_removeGsiAsync:I = 0xb

.field static final blacklist TRANSACTION_setGsiAshmem:I = 0x3

.field static final blacklist TRANSACTION_suggestScratchSize:I = 0x1a

.field static final blacklist TRANSACTION_zeroPartition:I = 0x16


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 250
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 251
    const-string v0, "android.gsi.IGsiService"

    invoke-virtual {p0, p0, v0}, Landroid/gsi/IGsiService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/gsi/IGsiService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 259
    if-nez p0, :cond_0

    .line 260
    const/4 v0, 0x0

    return-object v0

    .line 262
    :cond_0
    const-string v0, "android.gsi.IGsiService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 263
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/gsi/IGsiService;

    if-eqz v1, :cond_1

    .line 264
    move-object v1, v0

    check-cast v1, Landroid/gsi/IGsiService;

    return-object v1

    .line 266
    :cond_1
    new-instance v1, Landroid/gsi/IGsiService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/gsi/IGsiService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 275
    packed-switch p0, :pswitch_data_0

    .line 383
    const/4 v0, 0x0

    return-object v0

    .line 379
    :pswitch_0
    const-string/jumbo v0, "suggestScratchSize"

    return-object v0

    .line 375
    :pswitch_1
    const-string v0, "getAvbPublicKey"

    return-object v0

    .line 371
    :pswitch_2
    const-string v0, "dumpDeviceMapperDevices"

    return-object v0

    .line 367
    :pswitch_3
    const-string/jumbo v0, "openImageService"

    return-object v0

    .line 363
    :pswitch_4
    const-string/jumbo v0, "zeroPartition"

    return-object v0

    .line 359
    :pswitch_5
    const-string v0, "closePartition"

    return-object v0

    .line 355
    :pswitch_6
    const-string v0, "createPartition"

    return-object v0

    .line 351
    :pswitch_7
    const-string v0, "closeInstall"

    return-object v0

    .line 347
    :pswitch_8
    const-string/jumbo v0, "openInstall"

    return-object v0

    .line 343
    :pswitch_9
    const-string v0, "getInstalledDsuSlots"

    return-object v0

    .line 339
    :pswitch_a
    const-string v0, "getInstalledGsiImageDir"

    return-object v0

    .line 335
    :pswitch_b
    const-string v0, "getActiveDsuSlot"

    return-object v0

    .line 331
    :pswitch_c
    const-string v0, "isGsiRunning"

    return-object v0

    .line 327
    :pswitch_d
    const-string v0, "isGsiInstalled"

    return-object v0

    .line 323
    :pswitch_e
    const-string v0, "disableGsi"

    return-object v0

    .line 319
    :pswitch_f
    const-string/jumbo v0, "removeGsiAsync"

    return-object v0

    .line 315
    :pswitch_10
    const-string/jumbo v0, "removeGsi"

    return-object v0

    .line 311
    :pswitch_11
    const-string v0, "isGsiInstallInProgress"

    return-object v0

    .line 307
    :pswitch_12
    const-string v0, "cancelGsiInstall"

    return-object v0

    .line 303
    :pswitch_13
    const-string v0, "isGsiEnabled"

    return-object v0

    .line 299
    :pswitch_14
    const-string v0, "enableGsiAsync"

    return-object v0

    .line 295
    :pswitch_15
    const-string v0, "enableGsi"

    return-object v0

    .line 291
    :pswitch_16
    const-string v0, "commitGsiChunkFromAshmem"

    return-object v0

    .line 287
    :pswitch_17
    const-string/jumbo v0, "setGsiAshmem"

    return-object v0

    .line 283
    :pswitch_18
    const-string v0, "getInstallProgress"

    return-object v0

    .line 279
    :pswitch_19
    const-string v0, "commitGsiChunkFromStream"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 270
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1263
    const/16 v0, 0x19

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 390
    invoke-static {p1}, Landroid/gsi/IGsiService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 394
    const-string v0, "android.gsi.IGsiService"

    .line 395
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 396
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 406
    packed-switch p1, :pswitch_data_1

    .line 636
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 402
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 403
    return v1

    .line 629
    :pswitch_1
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->suggestScratchSize()J

    move-result-wide v2

    .line 630
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 632
    goto/16 :goto_0

    .line 619
    .end local v2    # "_result":J
    :pswitch_2
    new-instance v2, Landroid/gsi/AvbPublicKey;

    invoke-direct {v2}, Landroid/gsi/AvbPublicKey;-><init>()V

    .line 620
    .local v2, "_arg0":Landroid/gsi/AvbPublicKey;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 621
    invoke-virtual {p0, v2}, Landroid/gsi/IGsiService$Stub;->getAvbPublicKey(Landroid/gsi/AvbPublicKey;)I

    move-result v3

    .line 622
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 623
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 624
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 625
    goto/16 :goto_0

    .line 611
    .end local v2    # "_arg0":Landroid/gsi/AvbPublicKey;
    .end local v3    # "_result":I
    :pswitch_3
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->dumpDeviceMapperDevices()Ljava/lang/String;

    move-result-object v2

    .line 612
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 614
    goto/16 :goto_0

    .line 602
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 603
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 604
    invoke-virtual {p0, v2}, Landroid/gsi/IGsiService$Stub;->openImageService(Ljava/lang/String;)Landroid/gsi/IImageService;

    move-result-object v3

    .line 605
    .local v3, "_result":Landroid/gsi/IImageService;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 606
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 607
    goto/16 :goto_0

    .line 592
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/gsi/IImageService;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 593
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 594
    invoke-virtual {p0, v2}, Landroid/gsi/IGsiService$Stub;->zeroPartition(Ljava/lang/String;)I

    move-result v3

    .line 595
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 596
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 597
    goto/16 :goto_0

    .line 584
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_6
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->closePartition()I

    move-result v2

    .line 585
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    goto/16 :goto_0

    .line 571
    .end local v2    # "_result":I
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 573
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 575
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 576
    .local v5, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 577
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/gsi/IGsiService$Stub;->createPartition(Ljava/lang/String;JZ)I

    move-result v6

    .line 578
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 580
    goto/16 :goto_0

    .line 563
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":J
    .end local v5    # "_arg2":Z
    .end local v6    # "_result":I
    :pswitch_8
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->closeInstall()I

    move-result v2

    .line 564
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 566
    goto/16 :goto_0

    .line 554
    .end local v2    # "_result":I
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 555
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 556
    invoke-virtual {p0, v2}, Landroid/gsi/IGsiService$Stub;->openInstall(Ljava/lang/String;)I

    move-result v3

    .line 557
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 559
    goto/16 :goto_0

    .line 546
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_a
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->getInstalledDsuSlots()Ljava/util/List;

    move-result-object v2

    .line 547
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 549
    goto/16 :goto_0

    .line 539
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_b
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->getInstalledGsiImageDir()Ljava/lang/String;

    move-result-object v2

    .line 540
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 541
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 542
    goto/16 :goto_0

    .line 532
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_c
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->getActiveDsuSlot()Ljava/lang/String;

    move-result-object v2

    .line 533
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 535
    goto/16 :goto_0

    .line 525
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_d
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->isGsiRunning()Z

    move-result v2

    .line 526
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 528
    goto/16 :goto_0

    .line 518
    .end local v2    # "_result":Z
    :pswitch_e
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->isGsiInstalled()Z

    move-result v2

    .line 519
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 521
    goto/16 :goto_0

    .line 511
    .end local v2    # "_result":Z
    :pswitch_f
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->disableGsi()Z

    move-result v2

    .line 512
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 514
    goto/16 :goto_0

    .line 504
    .end local v2    # "_result":Z
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/gsi/IGsiServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/gsi/IGsiServiceCallback;

    move-result-object v2

    .line 505
    .local v2, "_arg0":Landroid/gsi/IGsiServiceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 506
    invoke-virtual {p0, v2}, Landroid/gsi/IGsiService$Stub;->removeGsiAsync(Landroid/gsi/IGsiServiceCallback;)V

    .line 507
    goto/16 :goto_0

    .line 496
    .end local v2    # "_arg0":Landroid/gsi/IGsiServiceCallback;
    :pswitch_11
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->removeGsi()Z

    move-result v2

    .line 497
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 498
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 499
    goto/16 :goto_0

    .line 489
    .end local v2    # "_result":Z
    :pswitch_12
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->isGsiInstallInProgress()Z

    move-result v2

    .line 490
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 492
    goto/16 :goto_0

    .line 482
    .end local v2    # "_result":Z
    :pswitch_13
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->cancelGsiInstall()Z

    move-result v2

    .line 483
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 485
    goto/16 :goto_0

    .line 475
    .end local v2    # "_result":Z
    :pswitch_14
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->isGsiEnabled()Z

    move-result v2

    .line 476
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 478
    goto/16 :goto_0

    .line 464
    .end local v2    # "_result":Z
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 466
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 468
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/gsi/IGsiServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/gsi/IGsiServiceCallback;

    move-result-object v4

    .line 469
    .local v4, "_arg2":Landroid/gsi/IGsiServiceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 470
    invoke-virtual {p0, v2, v3, v4}, Landroid/gsi/IGsiService$Stub;->enableGsiAsync(ZLjava/lang/String;Landroid/gsi/IGsiServiceCallback;)V

    .line 471
    goto :goto_0

    .line 452
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/gsi/IGsiServiceCallback;
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 454
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 455
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 456
    invoke-virtual {p0, v2, v3}, Landroid/gsi/IGsiService$Stub;->enableGsi(ZLjava/lang/String;)I

    move-result v4

    .line 457
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 459
    goto :goto_0

    .line 442
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 443
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 444
    invoke-virtual {p0, v2, v3}, Landroid/gsi/IGsiService$Stub;->commitGsiChunkFromAshmem(J)Z

    move-result v4

    .line 445
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 447
    goto :goto_0

    .line 430
    .end local v2    # "_arg0":J
    .end local v4    # "_result":Z
    :pswitch_18
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 432
    .local v2, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 433
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 434
    invoke-virtual {p0, v2, v3, v4}, Landroid/gsi/IGsiService$Stub;->setGsiAshmem(Landroid/os/ParcelFileDescriptor;J)Z

    move-result v5

    .line 435
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 437
    goto :goto_0

    .line 422
    .end local v2    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "_arg1":J
    .end local v5    # "_result":Z
    :pswitch_19
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->getInstallProgress()Landroid/gsi/GsiProgress;

    move-result-object v2

    .line 423
    .local v2, "_result":Landroid/gsi/GsiProgress;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 425
    goto :goto_0

    .line 411
    .end local v2    # "_result":Landroid/gsi/GsiProgress;
    :pswitch_1a
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 413
    .local v2, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 414
    .restart local v3    # "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 415
    invoke-virtual {p0, v2, v3, v4}, Landroid/gsi/IGsiService$Stub;->commitGsiChunkFromStream(Landroid/os/ParcelFileDescriptor;J)Z

    move-result v5

    .line 416
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 418
    nop

    .line 639
    .end local v2    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "_arg1":J
    .end local v5    # "_result":Z
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_18
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
