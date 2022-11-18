.class public abstract Landroid/content/pm/IPackageInstallerSession$Stub;
.super Landroid/os/Binder;
.source "IPackageInstallerSession.java"

# interfaces
.implements Landroid/content/pm/IPackageInstallerSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageInstallerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageInstallerSession$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPackageInstallerSession"

.field static final greylist-max-o TRANSACTION_abandon:I = 0xe

.field static final blacklist TRANSACTION_addChildSessionId:I = 0x14

.field static final greylist-max-o TRANSACTION_addClientProgress:I = 0x2

.field static final blacklist TRANSACTION_addFile:I = 0x10

.field static final greylist-max-o TRANSACTION_close:I = 0xb

.field static final greylist-max-o TRANSACTION_commit:I = 0xc

.field static final blacklist TRANSACTION_getChildSessionIds:I = 0x13

.field static final blacklist TRANSACTION_getDataLoaderParams:I = 0xf

.field static final blacklist TRANSACTION_getInstallFlags:I = 0x18

.field static final greylist-max-o TRANSACTION_getNames:I = 0x3

.field static final blacklist TRANSACTION_getParentSessionId:I = 0x16

.field static final blacklist TRANSACTION_isMultiPackage:I = 0x12

.field static final blacklist TRANSACTION_isStaged:I = 0x17

.field static final greylist-max-o TRANSACTION_openRead:I = 0x5

.field static final greylist-max-o TRANSACTION_openWrite:I = 0x4

.field static final blacklist TRANSACTION_removeChildSessionId:I = 0x15

.field static final blacklist TRANSACTION_removeFile:I = 0x11

.field static final greylist-max-o TRANSACTION_removeSplit:I = 0xa

.field static final blacklist TRANSACTION_requestChecksums:I = 0x9

.field static final blacklist TRANSACTION_setChecksums:I = 0x8

.field static final greylist-max-o TRANSACTION_setClientProgress:I = 0x1

.field static final blacklist TRANSACTION_stageViaHardLink:I = 0x7

.field static final greylist-max-o TRANSACTION_transfer:I = 0xd

.field static final greylist-max-o TRANSACTION_write:I = 0x6


# direct methods
.method public constructor greylist <init>()V
    .locals 1

    .line 102
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 103
    const-string v0, "android.content.pm.IPackageInstallerSession"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPackageInstallerSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallerSession;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 111
    if-nez p0, :cond_0

    .line 112
    const/4 v0, 0x0

    return-object v0

    .line 114
    :cond_0
    const-string v0, "android.content.pm.IPackageInstallerSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 115
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/pm/IPackageInstallerSession;

    if-eqz v1, :cond_1

    .line 116
    move-object v1, v0

    check-cast v1, Landroid/content/pm/IPackageInstallerSession;

    return-object v1

    .line 118
    :cond_1
    new-instance v1, Landroid/content/pm/IPackageInstallerSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/IPackageInstallerSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 127
    packed-switch p0, :pswitch_data_0

    .line 227
    const/4 v0, 0x0

    return-object v0

    .line 223
    :pswitch_0
    const-string v0, "getInstallFlags"

    return-object v0

    .line 219
    :pswitch_1
    const-string v0, "isStaged"

    return-object v0

    .line 215
    :pswitch_2
    const-string v0, "getParentSessionId"

    return-object v0

    .line 211
    :pswitch_3
    const-string/jumbo v0, "removeChildSessionId"

    return-object v0

    .line 207
    :pswitch_4
    const-string v0, "addChildSessionId"

    return-object v0

    .line 203
    :pswitch_5
    const-string v0, "getChildSessionIds"

    return-object v0

    .line 199
    :pswitch_6
    const-string v0, "isMultiPackage"

    return-object v0

    .line 195
    :pswitch_7
    const-string/jumbo v0, "removeFile"

    return-object v0

    .line 191
    :pswitch_8
    const-string v0, "addFile"

    return-object v0

    .line 187
    :pswitch_9
    const-string v0, "getDataLoaderParams"

    return-object v0

    .line 183
    :pswitch_a
    const-string v0, "abandon"

    return-object v0

    .line 179
    :pswitch_b
    const-string/jumbo v0, "transfer"

    return-object v0

    .line 175
    :pswitch_c
    const-string v0, "commit"

    return-object v0

    .line 171
    :pswitch_d
    const-string v0, "close"

    return-object v0

    .line 167
    :pswitch_e
    const-string/jumbo v0, "removeSplit"

    return-object v0

    .line 163
    :pswitch_f
    const-string/jumbo v0, "requestChecksums"

    return-object v0

    .line 159
    :pswitch_10
    const-string/jumbo v0, "setChecksums"

    return-object v0

    .line 155
    :pswitch_11
    const-string/jumbo v0, "stageViaHardLink"

    return-object v0

    .line 151
    :pswitch_12
    const-string/jumbo v0, "write"

    return-object v0

    .line 147
    :pswitch_13
    const-string/jumbo v0, "openRead"

    return-object v0

    .line 143
    :pswitch_14
    const-string/jumbo v0, "openWrite"

    return-object v0

    .line 139
    :pswitch_15
    const-string v0, "getNames"

    return-object v0

    .line 135
    :pswitch_16
    const-string v0, "addClientProgress"

    return-object v0

    .line 131
    :pswitch_17
    const-string/jumbo v0, "setClientProgress"

    return-object v0

    :pswitch_data_0
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

    .line 931
    const/16 v0, 0x17

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 234
    invoke-static {p1}, Landroid/content/pm/IPackageInstallerSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 238
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "android.content.pm.IPackageInstallerSession"

    .line 239
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 240
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    :cond_0
    packed-switch v8, :pswitch_data_0

    .line 250
    packed-switch v8, :pswitch_data_1

    .line 487
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 246
    :pswitch_0
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    return v12

    .line 480
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->getInstallFlags()I

    move-result v0

    .line 481
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 483
    goto/16 :goto_0

    .line 473
    .end local v0    # "_result":I
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->isStaged()Z

    move-result v0

    .line 474
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 476
    goto/16 :goto_0

    .line 466
    .end local v0    # "_result":Z
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->getParentSessionId()I

    move-result v0

    .line 467
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 469
    goto/16 :goto_0

    .line 458
    .end local v0    # "_result":I
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 459
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 460
    invoke-virtual {v7, v0}, Landroid/content/pm/IPackageInstallerSession$Stub;->removeChildSessionId(I)V

    .line 461
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    goto/16 :goto_0

    .line 449
    .end local v0    # "_arg0":I
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 450
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 451
    invoke-virtual {v7, v0}, Landroid/content/pm/IPackageInstallerSession$Stub;->addChildSessionId(I)V

    .line 452
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    goto/16 :goto_0

    .line 441
    .end local v0    # "_arg0":I
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->getChildSessionIds()[I

    move-result-object v0

    .line 442
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 444
    goto/16 :goto_0

    .line 434
    .end local v0    # "_result":[I
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->isMultiPackage()Z

    move-result v0

    .line 435
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 437
    goto/16 :goto_0

    .line 424
    .end local v0    # "_result":Z
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 426
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 427
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 428
    invoke-virtual {v7, v0, v1}, Landroid/content/pm/IPackageInstallerSession$Stub;->removeFile(ILjava/lang/String;)V

    .line 429
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    goto/16 :goto_0

    .line 407
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 409
    .local v13, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 411
    .local v14, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 413
    .local v15, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    .line 415
    .local v17, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    .line 416
    .local v18, "_arg4":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 417
    move-object/from16 v0, p0

    move v1, v13

    move-object v2, v14

    move-wide v3, v15

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/IPackageInstallerSession$Stub;->addFile(ILjava/lang/String;J[B[B)V

    .line 418
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    goto/16 :goto_0

    .line 399
    .end local v13    # "_arg0":I
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":J
    .end local v17    # "_arg3":[B
    .end local v18    # "_arg4":[B
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->getDataLoaderParams()Landroid/content/pm/DataLoaderParamsParcel;

    move-result-object v0

    .line 400
    .local v0, "_result":Landroid/content/pm/DataLoaderParamsParcel;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 402
    goto/16 :goto_0

    .line 393
    .end local v0    # "_result":Landroid/content/pm/DataLoaderParamsParcel;
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->abandon()V

    .line 394
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    goto/16 :goto_0

    .line 385
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 387
    invoke-virtual {v7, v0}, Landroid/content/pm/IPackageInstallerSession$Stub;->transfer(Ljava/lang/String;)V

    .line 388
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    goto/16 :goto_0

    .line 374
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_d
    sget-object v0, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentSender;

    .line 376
    .local v0, "_arg0":Landroid/content/IntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 377
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 378
    invoke-virtual {v7, v0, v1}, Landroid/content/pm/IPackageInstallerSession$Stub;->commit(Landroid/content/IntentSender;Z)V

    .line 379
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    goto/16 :goto_0

    .line 367
    .end local v0    # "_arg0":Landroid/content/IntentSender;
    .end local v1    # "_arg1":Z
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->close()V

    .line 368
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    goto/16 :goto_0

    .line 359
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 361
    invoke-virtual {v7, v0}, Landroid/content/pm/IPackageInstallerSession$Stub;->removeSplit(Ljava/lang/String;)V

    .line 362
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    goto/16 :goto_0

    .line 341
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 343
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 345
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 347
    .local v14, "_arg2":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v15

    .line 348
    .local v15, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v16

    .line 350
    .local v16, "_arg3":Ljava/util/List;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IOnChecksumsReadyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOnChecksumsReadyListener;

    move-result-object v17

    .line 351
    .local v17, "_arg4":Landroid/content/pm/IOnChecksumsReadyListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 352
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v13

    move v3, v14

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageInstallerSession$Stub;->requestChecksums(Ljava/lang/String;IILjava/util/List;Landroid/content/pm/IOnChecksumsReadyListener;)V

    .line 353
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    goto/16 :goto_0

    .line 328
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "cl":Ljava/lang/ClassLoader;
    .end local v16    # "_arg3":Ljava/util/List;
    .end local v17    # "_arg4":Landroid/content/pm/IOnChecksumsReadyListener;
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 330
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/content/pm/Checksum;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/Checksum;

    .line 332
    .local v1, "_arg1":[Landroid/content/pm/Checksum;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 333
    .local v2, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 334
    invoke-virtual {v7, v0, v1, v2}, Landroid/content/pm/IPackageInstallerSession$Stub;->setChecksums(Ljava/lang/String;[Landroid/content/pm/Checksum;[B)V

    .line 335
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    goto/16 :goto_0

    .line 319
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[Landroid/content/pm/Checksum;
    .end local v2    # "_arg2":[B
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 320
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 321
    invoke-virtual {v7, v0}, Landroid/content/pm/IPackageInstallerSession$Stub;->stageViaHardLink(Ljava/lang/String;)V

    .line 322
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    goto/16 :goto_0

    .line 304
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 306
    .local v13, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 308
    .local v14, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 310
    .local v16, "_arg2":J
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/ParcelFileDescriptor;

    .line 311
    .local v18, "_arg3":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 312
    move-object/from16 v0, p0

    move-object v1, v13

    move-wide v2, v14

    move-wide/from16 v4, v16

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/IPackageInstallerSession$Stub;->write(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V

    .line 313
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    goto :goto_0

    .line 294
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":J
    .end local v16    # "_arg2":J
    .end local v18    # "_arg3":Landroid/os/ParcelFileDescriptor;
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 295
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 296
    invoke-virtual {v7, v0}, Landroid/content/pm/IPackageInstallerSession$Stub;->openRead(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 297
    .local v1, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 299
    goto :goto_0

    .line 280
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 282
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 284
    .local v13, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 285
    .local v15, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 286
    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v13

    move-wide v4, v15

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageInstallerSession$Stub;->openWrite(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 287
    .local v0, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 289
    goto :goto_0

    .line 272
    .end local v0    # "_result":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":J
    .end local v15    # "_arg2":J
    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->getNames()[Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 275
    goto :goto_0

    .line 264
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 265
    .local v0, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 266
    invoke-virtual {v7, v0}, Landroid/content/pm/IPackageInstallerSession$Stub;->addClientProgress(F)V

    .line 267
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    goto :goto_0

    .line 255
    .end local v0    # "_arg0":F
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 256
    .restart local v0    # "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 257
    invoke-virtual {v7, v0}, Landroid/content/pm/IPackageInstallerSession$Stub;->setClientProgress(F)V

    .line 258
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    nop

    .line 490
    .end local v0    # "_arg0":F
    :goto_0
    return v12

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
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
    .end packed-switch
.end method
