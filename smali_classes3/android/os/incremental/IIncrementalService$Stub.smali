.class public abstract Landroid/os/incremental/IIncrementalService$Stub;
.super Landroid/os/Binder;
.source "IIncrementalService.java"

# interfaces
.implements Landroid/os/incremental/IIncrementalService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/incremental/IIncrementalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/incremental/IIncrementalService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_configureNativeBinaries:I = 0x15

.field static final blacklist TRANSACTION_createLinkedStorage:I = 0x3

.field static final blacklist TRANSACTION_createStorage:I = 0x2

.field static final blacklist TRANSACTION_deleteBindMount:I = 0x7

.field static final blacklist TRANSACTION_deleteStorage:I = 0x13

.field static final blacklist TRANSACTION_disallowReadLogs:I = 0x14

.field static final blacklist TRANSACTION_getLoadingProgress:I = 0x10

.field static final blacklist TRANSACTION_getMetadataById:I = 0x12

.field static final blacklist TRANSACTION_getMetadataByPath:I = 0x11

.field static final blacklist TRANSACTION_getMetrics:I = 0x19

.field static final blacklist TRANSACTION_isFileFullyLoaded:I = 0xe

.field static final blacklist TRANSACTION_isFullyLoaded:I = 0xf

.field static final blacklist TRANSACTION_makeBindMount:I = 0x6

.field static final blacklist TRANSACTION_makeDirectories:I = 0x9

.field static final blacklist TRANSACTION_makeDirectory:I = 0x8

.field static final blacklist TRANSACTION_makeFile:I = 0xa

.field static final blacklist TRANSACTION_makeFileFromRange:I = 0xb

.field static final blacklist TRANSACTION_makeLink:I = 0xc

.field static final blacklist TRANSACTION_onInstallationComplete:I = 0x5

.field static final blacklist TRANSACTION_openStorage:I = 0x1

.field static final blacklist TRANSACTION_registerLoadingProgressListener:I = 0x17

.field static final blacklist TRANSACTION_startLoading:I = 0x4

.field static final blacklist TRANSACTION_unlink:I = 0xd

.field static final blacklist TRANSACTION_unregisterLoadingProgressListener:I = 0x18

.field static final blacklist TRANSACTION_waitForNativeBinariesExtraction:I = 0x16


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 163
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 164
    const-string v0, "android.os.incremental.IIncrementalService"

    invoke-virtual {p0, p0, v0}, Landroid/os/incremental/IIncrementalService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/incremental/IIncrementalService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 172
    if-nez p0, :cond_0

    .line 173
    const/4 v0, 0x0

    return-object v0

    .line 175
    :cond_0
    const-string v0, "android.os.incremental.IIncrementalService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 176
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/incremental/IIncrementalService;

    if-eqz v1, :cond_1

    .line 177
    move-object v1, v0

    check-cast v1, Landroid/os/incremental/IIncrementalService;

    return-object v1

    .line 179
    :cond_1
    new-instance v1, Landroid/os/incremental/IIncrementalService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/incremental/IIncrementalService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 188
    packed-switch p0, :pswitch_data_0

    .line 292
    const/4 v0, 0x0

    return-object v0

    .line 288
    :pswitch_0
    const-string v0, "getMetrics"

    return-object v0

    .line 284
    :pswitch_1
    const-string/jumbo v0, "unregisterLoadingProgressListener"

    return-object v0

    .line 280
    :pswitch_2
    const-string/jumbo v0, "registerLoadingProgressListener"

    return-object v0

    .line 276
    :pswitch_3
    const-string/jumbo v0, "waitForNativeBinariesExtraction"

    return-object v0

    .line 272
    :pswitch_4
    const-string v0, "configureNativeBinaries"

    return-object v0

    .line 268
    :pswitch_5
    const-string v0, "disallowReadLogs"

    return-object v0

    .line 264
    :pswitch_6
    const-string v0, "deleteStorage"

    return-object v0

    .line 260
    :pswitch_7
    const-string v0, "getMetadataById"

    return-object v0

    .line 256
    :pswitch_8
    const-string v0, "getMetadataByPath"

    return-object v0

    .line 252
    :pswitch_9
    const-string v0, "getLoadingProgress"

    return-object v0

    .line 248
    :pswitch_a
    const-string/jumbo v0, "isFullyLoaded"

    return-object v0

    .line 244
    :pswitch_b
    const-string/jumbo v0, "isFileFullyLoaded"

    return-object v0

    .line 240
    :pswitch_c
    const-string/jumbo v0, "unlink"

    return-object v0

    .line 236
    :pswitch_d
    const-string/jumbo v0, "makeLink"

    return-object v0

    .line 232
    :pswitch_e
    const-string/jumbo v0, "makeFileFromRange"

    return-object v0

    .line 228
    :pswitch_f
    const-string/jumbo v0, "makeFile"

    return-object v0

    .line 224
    :pswitch_10
    const-string/jumbo v0, "makeDirectories"

    return-object v0

    .line 220
    :pswitch_11
    const-string/jumbo v0, "makeDirectory"

    return-object v0

    .line 216
    :pswitch_12
    const-string v0, "deleteBindMount"

    return-object v0

    .line 212
    :pswitch_13
    const-string/jumbo v0, "makeBindMount"

    return-object v0

    .line 208
    :pswitch_14
    const-string/jumbo v0, "onInstallationComplete"

    return-object v0

    .line 204
    :pswitch_15
    const-string/jumbo v0, "startLoading"

    return-object v0

    .line 200
    :pswitch_16
    const-string v0, "createLinkedStorage"

    return-object v0

    .line 196
    :pswitch_17
    const-string v0, "createStorage"

    return-object v0

    .line 192
    :pswitch_18
    const-string/jumbo v0, "openStorage"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 183
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1203
    const/16 v0, 0x18

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 299
    invoke-static {p1}, Landroid/os/incremental/IIncrementalService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 21
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 303
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "android.os.incremental.IIncrementalService"

    .line 304
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v9, v13, :cond_0

    const v0, 0xffffff

    if-gt v9, v0, :cond_0

    .line 305
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    :cond_0
    packed-switch v9, :pswitch_data_0

    .line 315
    packed-switch v9, :pswitch_data_1

    .line 634
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 311
    :pswitch_0
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 312
    return v13

    .line 625
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 626
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 627
    invoke-virtual {v8, v0}, Landroid/os/incremental/IIncrementalService$Stub;->getMetrics(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 628
    .local v1, "_result":Landroid/os/PersistableBundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 630
    goto/16 :goto_0

    .line 615
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/os/PersistableBundle;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 616
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 617
    invoke-virtual {v8, v0}, Landroid/os/incremental/IIncrementalService$Stub;->unregisterLoadingProgressListener(I)Z

    move-result v1

    .line 618
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 620
    goto/16 :goto_0

    .line 603
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 605
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/incremental/IStorageLoadingProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/incremental/IStorageLoadingProgressListener;

    move-result-object v1

    .line 606
    .local v1, "_arg1":Landroid/os/incremental/IStorageLoadingProgressListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 607
    invoke-virtual {v8, v0, v1}, Landroid/os/incremental/IIncrementalService$Stub;->registerLoadingProgressListener(ILandroid/os/incremental/IStorageLoadingProgressListener;)Z

    move-result v2

    .line 608
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 610
    goto/16 :goto_0

    .line 593
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/incremental/IStorageLoadingProgressListener;
    .end local v2    # "_result":Z
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 594
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 595
    invoke-virtual {v8, v0}, Landroid/os/incremental/IIncrementalService$Stub;->waitForNativeBinariesExtraction(I)Z

    move-result v1

    .line 596
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 598
    goto/16 :goto_0

    .line 575
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 577
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 579
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 581
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 583
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 584
    .local v16, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 585
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/incremental/IIncrementalService$Stub;->configureNativeBinaries(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 586
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 588
    goto/16 :goto_0

    .line 566
    .end local v0    # "_result":Z
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Z
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 567
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 568
    invoke-virtual {v8, v0}, Landroid/os/incremental/IIncrementalService$Stub;->disallowReadLogs(I)V

    .line 569
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 570
    goto/16 :goto_0

    .line 557
    .end local v0    # "_arg0":I
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 558
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 559
    invoke-virtual {v8, v0}, Landroid/os/incremental/IIncrementalService$Stub;->deleteStorage(I)V

    .line 560
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    goto/16 :goto_0

    .line 545
    .end local v0    # "_arg0":I
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 547
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 548
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 549
    invoke-virtual {v8, v0, v1}, Landroid/os/incremental/IIncrementalService$Stub;->getMetadataById(I[B)[B

    move-result-object v2

    .line 550
    .local v2, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 551
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 552
    goto/16 :goto_0

    .line 533
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    .end local v2    # "_result":[B
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 535
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 536
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 537
    invoke-virtual {v8, v0, v1}, Landroid/os/incremental/IIncrementalService$Stub;->getMetadataByPath(ILjava/lang/String;)[B

    move-result-object v2

    .line 538
    .restart local v2    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 540
    goto/16 :goto_0

    .line 523
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":[B
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 524
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 525
    invoke-virtual {v8, v0}, Landroid/os/incremental/IIncrementalService$Stub;->getLoadingProgress(I)F

    move-result v1

    .line 526
    .local v1, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 528
    goto/16 :goto_0

    .line 513
    .end local v0    # "_arg0":I
    .end local v1    # "_result":F
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 514
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 515
    invoke-virtual {v8, v0}, Landroid/os/incremental/IIncrementalService$Stub;->isFullyLoaded(I)I

    move-result v1

    .line 516
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 518
    goto/16 :goto_0

    .line 501
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 503
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 504
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 505
    invoke-virtual {v8, v0, v1}, Landroid/os/incremental/IIncrementalService$Stub;->isFileFullyLoaded(ILjava/lang/String;)I

    move-result v2

    .line 506
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 508
    goto/16 :goto_0

    .line 489
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 491
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 492
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 493
    invoke-virtual {v8, v0, v1}, Landroid/os/incremental/IIncrementalService$Stub;->unlink(ILjava/lang/String;)I

    move-result v2

    .line 494
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 496
    goto/16 :goto_0

    .line 473
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 475
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 477
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 479
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 480
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 481
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/os/incremental/IIncrementalService$Stub;->makeLink(ILjava/lang/String;ILjava/lang/String;)I

    move-result v4

    .line 482
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 484
    goto/16 :goto_0

    .line 455
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 457
    .local v14, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 459
    .local v15, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 461
    .local v16, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 463
    .local v17, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .line 464
    .local v19, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 465
    move-object/from16 v0, p0

    move v1, v14

    move-object v2, v15

    move-object/from16 v3, v16

    move-wide/from16 v4, v17

    move-wide/from16 v6, v19

    invoke-virtual/range {v0 .. v7}, Landroid/os/incremental/IIncrementalService$Stub;->makeFileFromRange(ILjava/lang/String;Ljava/lang/String;JJ)I

    move-result v0

    .line 466
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 468
    goto/16 :goto_0

    .line 439
    .end local v0    # "_result":I
    .end local v14    # "_arg0":I
    .end local v15    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v17    # "_arg3":J
    .end local v19    # "_arg4":J
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 441
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 443
    .restart local v1    # "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/os/incremental/IncrementalNewFileParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/incremental/IncrementalNewFileParams;

    .line 445
    .local v2, "_arg2":Landroid/os/incremental/IncrementalNewFileParams;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 446
    .local v3, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 447
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/os/incremental/IIncrementalService$Stub;->makeFile(ILjava/lang/String;Landroid/os/incremental/IncrementalNewFileParams;[B)I

    move-result v4

    .line 448
    .restart local v4    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 450
    goto/16 :goto_0

    .line 427
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/incremental/IncrementalNewFileParams;
    .end local v3    # "_arg3":[B
    .end local v4    # "_result":I
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 429
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 430
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 431
    invoke-virtual {v8, v0, v1}, Landroid/os/incremental/IIncrementalService$Stub;->makeDirectories(ILjava/lang/String;)I

    move-result v2

    .line 432
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    goto/16 :goto_0

    .line 415
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 417
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 418
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 419
    invoke-virtual {v8, v0, v1}, Landroid/os/incremental/IIncrementalService$Stub;->makeDirectory(ILjava/lang/String;)I

    move-result v2

    .line 420
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 422
    goto/16 :goto_0

    .line 403
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 405
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 406
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 407
    invoke-virtual {v8, v0, v1}, Landroid/os/incremental/IIncrementalService$Stub;->deleteBindMount(ILjava/lang/String;)I

    move-result v2

    .line 408
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 410
    goto/16 :goto_0

    .line 387
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 389
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 391
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 393
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 394
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 395
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/os/incremental/IIncrementalService$Stub;->makeBindMount(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 396
    .restart local v4    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    goto/16 :goto_0

    .line 378
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":I
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 379
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 380
    invoke-virtual {v8, v0}, Landroid/os/incremental/IIncrementalService$Stub;->onInstallationComplete(I)V

    .line 381
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    goto/16 :goto_0

    .line 358
    .end local v0    # "_arg0":I
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 360
    .local v7, "_arg0":I
    sget-object v0, Landroid/content/pm/DataLoaderParamsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/content/pm/DataLoaderParamsParcel;

    .line 362
    .local v14, "_arg1":Landroid/content/pm/DataLoaderParamsParcel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IDataLoaderStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IDataLoaderStatusListener;

    move-result-object v15

    .line 364
    .local v15, "_arg2":Landroid/content/pm/IDataLoaderStatusListener;
    sget-object v0, Landroid/os/incremental/StorageHealthCheckParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/incremental/StorageHealthCheckParams;

    .line 366
    .local v16, "_arg3":Landroid/os/incremental/StorageHealthCheckParams;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/incremental/IStorageHealthListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/incremental/IStorageHealthListener;

    move-result-object v17

    .line 368
    .local v17, "_arg4":Landroid/os/incremental/IStorageHealthListener;
    sget-object v0, Landroid/os/incremental/PerUidReadTimeouts;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, [Landroid/os/incremental/PerUidReadTimeouts;

    .line 369
    .local v18, "_arg5":[Landroid/os/incremental/PerUidReadTimeouts;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 370
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/os/incremental/IIncrementalService$Stub;->startLoading(ILandroid/content/pm/DataLoaderParamsParcel;Landroid/content/pm/IDataLoaderStatusListener;Landroid/os/incremental/StorageHealthCheckParams;Landroid/os/incremental/IStorageHealthListener;[Landroid/os/incremental/PerUidReadTimeouts;)Z

    move-result v0

    .line 371
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 373
    goto :goto_0

    .line 344
    .end local v0    # "_result":Z
    .end local v7    # "_arg0":I
    .end local v14    # "_arg1":Landroid/content/pm/DataLoaderParamsParcel;
    .end local v15    # "_arg2":Landroid/content/pm/IDataLoaderStatusListener;
    .end local v16    # "_arg3":Landroid/os/incremental/StorageHealthCheckParams;
    .end local v17    # "_arg4":Landroid/os/incremental/IStorageHealthListener;
    .end local v18    # "_arg5":[Landroid/os/incremental/PerUidReadTimeouts;
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 348
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 349
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 350
    invoke-virtual {v8, v0, v1, v2}, Landroid/os/incremental/IIncrementalService$Stub;->createLinkedStorage(Ljava/lang/String;II)I

    move-result v3

    .line 351
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    goto :goto_0

    .line 330
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 332
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/content/pm/DataLoaderParamsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/DataLoaderParamsParcel;

    .line 334
    .local v1, "_arg1":Landroid/content/pm/DataLoaderParamsParcel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 335
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 336
    invoke-virtual {v8, v0, v1, v2}, Landroid/os/incremental/IIncrementalService$Stub;->createStorage(Ljava/lang/String;Landroid/content/pm/DataLoaderParamsParcel;I)I

    move-result v3

    .line 337
    .restart local v3    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    goto :goto_0

    .line 320
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/pm/DataLoaderParamsParcel;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 321
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 322
    invoke-virtual {v8, v0}, Landroid/os/incremental/IIncrementalService$Stub;->openStorage(Ljava/lang/String;)I

    move-result v1

    .line 323
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    nop

    .line 637
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :goto_0
    return v13

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
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
    .end packed-switch
.end method
