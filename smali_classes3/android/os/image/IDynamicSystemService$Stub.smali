.class public abstract Landroid/os/image/IDynamicSystemService$Stub;
.super Landroid/os/Binder;
.source "IDynamicSystemService.java"

# interfaces
.implements Landroid/os/image/IDynamicSystemService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/image/IDynamicSystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/image/IDynamicSystemService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_abort:I = 0x6

.field static final blacklist TRANSACTION_closePartition:I = 0x3

.field static final blacklist TRANSACTION_createPartition:I = 0x2

.field static final blacklist TRANSACTION_finishInstallation:I = 0x4

.field static final blacklist TRANSACTION_getAvbPublicKey:I = 0xe

.field static final blacklist TRANSACTION_getInstallationProgress:I = 0x5

.field static final blacklist TRANSACTION_isEnabled:I = 0x9

.field static final blacklist TRANSACTION_isInUse:I = 0x7

.field static final blacklist TRANSACTION_isInstalled:I = 0x8

.field static final blacklist TRANSACTION_remove:I = 0xa

.field static final blacklist TRANSACTION_setAshmem:I = 0xc

.field static final blacklist TRANSACTION_setEnable:I = 0xb

.field static final blacklist TRANSACTION_startInstallation:I = 0x1

.field static final blacklist TRANSACTION_submitFromAshmem:I = 0xd

.field static final blacklist TRANSACTION_suggestScratchSize:I = 0xf


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 153
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 154
    const-string v0, "android.os.image.IDynamicSystemService"

    invoke-virtual {p0, p0, v0}, Landroid/os/image/IDynamicSystemService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/image/IDynamicSystemService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 162
    if-nez p0, :cond_0

    .line 163
    const/4 v0, 0x0

    return-object v0

    .line 165
    :cond_0
    const-string v0, "android.os.image.IDynamicSystemService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 166
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/image/IDynamicSystemService;

    if-eqz v1, :cond_1

    .line 167
    move-object v1, v0

    check-cast v1, Landroid/os/image/IDynamicSystemService;

    return-object v1

    .line 169
    :cond_1
    new-instance v1, Landroid/os/image/IDynamicSystemService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/image/IDynamicSystemService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 178
    packed-switch p0, :pswitch_data_0

    .line 242
    const/4 v0, 0x0

    return-object v0

    .line 238
    :pswitch_0
    const-string/jumbo v0, "suggestScratchSize"

    return-object v0

    .line 234
    :pswitch_1
    const-string v0, "getAvbPublicKey"

    return-object v0

    .line 230
    :pswitch_2
    const-string/jumbo v0, "submitFromAshmem"

    return-object v0

    .line 226
    :pswitch_3
    const-string/jumbo v0, "setAshmem"

    return-object v0

    .line 222
    :pswitch_4
    const-string/jumbo v0, "setEnable"

    return-object v0

    .line 218
    :pswitch_5
    const-string/jumbo v0, "remove"

    return-object v0

    .line 214
    :pswitch_6
    const-string/jumbo v0, "isEnabled"

    return-object v0

    .line 210
    :pswitch_7
    const-string/jumbo v0, "isInstalled"

    return-object v0

    .line 206
    :pswitch_8
    const-string/jumbo v0, "isInUse"

    return-object v0

    .line 202
    :pswitch_9
    const-string v0, "abort"

    return-object v0

    .line 198
    :pswitch_a
    const-string v0, "getInstallationProgress"

    return-object v0

    .line 194
    :pswitch_b
    const-string v0, "finishInstallation"

    return-object v0

    .line 190
    :pswitch_c
    const-string v0, "closePartition"

    return-object v0

    .line 186
    :pswitch_d
    const-string v0, "createPartition"

    return-object v0

    .line 182
    :pswitch_e
    const-string/jumbo v0, "startInstallation"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method private blacklist permissionCheckerWrapper(Ljava/lang/String;ILandroid/content/AttributionSource;)Z
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;

    .line 803
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 804
    .local v0, "ctx":Landroid/content/Context;
    const-string v1, ""

    invoke-static {v0, p1, p2, p3, v1}, Landroid/content/PermissionChecker;->checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;ILandroid/content/AttributionSource;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 173
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 826
    const/16 v0, 0xe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 249
    invoke-static {p1}, Landroid/os/image/IDynamicSystemService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 253
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "android.os.image.IDynamicSystemService"

    .line 254
    .local v4, "descriptor":Ljava/lang/String;
    const/4 v5, 0x1

    if-lt v1, v5, :cond_0

    const v6, 0xffffff

    if-gt v1, v6, :cond_0

    .line 255
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 265
    const-string v6, "Access denied, requires: android.Manifest.permission.MANAGE_DYNAMIC_SYSTEM"

    const-string v7, "android.permission.MANAGE_DYNAMIC_SYSTEM"

    const/4 v8, 0x0

    packed-switch v1, :pswitch_data_1

    .line 440
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    .line 261
    :pswitch_0
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 262
    return v5

    .line 430
    :pswitch_1
    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v9

    new-instance v10, Landroid/content/AttributionSource;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v11

    invoke-direct {v10, v11, v8, v8}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v7, v9, v10}, Landroid/os/image/IDynamicSystemService$Stub;->permissionCheckerWrapper(Ljava/lang/String;ILandroid/content/AttributionSource;)Z

    move-result v7

    if-ne v7, v5, :cond_1

    .line 433
    invoke-virtual/range {p0 .. p0}, Landroid/os/image/IDynamicSystemService$Stub;->suggestScratchSize()J

    move-result-wide v6

    .line 434
    .local v6, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    invoke-virtual {v3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 436
    goto/16 :goto_0

    .line 431
    .end local v6    # "_result":J
    :cond_1
    new-instance v5, Ljava/lang/SecurityException;

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 417
    :pswitch_2
    new-instance v9, Landroid/gsi/AvbPublicKey;

    invoke-direct {v9}, Landroid/gsi/AvbPublicKey;-><init>()V

    .line 418
    .local v9, "_arg0":Landroid/gsi/AvbPublicKey;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 419
    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v10

    new-instance v11, Landroid/content/AttributionSource;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v12

    invoke-direct {v11, v12, v8, v8}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v7, v10, v11}, Landroid/os/image/IDynamicSystemService$Stub;->permissionCheckerWrapper(Ljava/lang/String;ILandroid/content/AttributionSource;)Z

    move-result v7

    if-ne v7, v5, :cond_2

    .line 422
    invoke-virtual {v0, v9}, Landroid/os/image/IDynamicSystemService$Stub;->getAvbPublicKey(Landroid/gsi/AvbPublicKey;)Z

    move-result v6

    .line 423
    .local v6, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 425
    invoke-virtual {v3, v9, v5}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 426
    goto/16 :goto_0

    .line 420
    .end local v6    # "_result":Z
    :cond_2
    new-instance v5, Ljava/lang/SecurityException;

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 404
    .end local v9    # "_arg0":Landroid/gsi/AvbPublicKey;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 405
    .local v9, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 406
    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v11

    new-instance v12, Landroid/content/AttributionSource;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v13

    invoke-direct {v12, v13, v8, v8}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v7, v11, v12}, Landroid/os/image/IDynamicSystemService$Stub;->permissionCheckerWrapper(Ljava/lang/String;ILandroid/content/AttributionSource;)Z

    move-result v7

    if-ne v7, v5, :cond_3

    .line 409
    invoke-virtual {v0, v9, v10}, Landroid/os/image/IDynamicSystemService$Stub;->submitFromAshmem(J)Z

    move-result v6

    .line 410
    .restart local v6    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 412
    goto/16 :goto_0

    .line 407
    .end local v6    # "_result":Z
    :cond_3
    new-instance v5, Ljava/lang/SecurityException;

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 389
    .end local v9    # "_arg0":J
    :pswitch_4
    sget-object v9, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v9}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/ParcelFileDescriptor;

    .line 391
    .local v9, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 392
    .local v10, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 393
    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v12

    new-instance v13, Landroid/content/AttributionSource;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v14

    invoke-direct {v13, v14, v8, v8}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v7, v12, v13}, Landroid/os/image/IDynamicSystemService$Stub;->permissionCheckerWrapper(Ljava/lang/String;ILandroid/content/AttributionSource;)Z

    move-result v7

    if-ne v7, v5, :cond_4

    .line 396
    invoke-virtual {v0, v9, v10, v11}, Landroid/os/image/IDynamicSystemService$Stub;->setAshmem(Landroid/os/ParcelFileDescriptor;J)Z

    move-result v6

    .line 397
    .restart local v6    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 399
    goto/16 :goto_0

    .line 394
    .end local v6    # "_result":Z
    :cond_4
    new-instance v5, Ljava/lang/SecurityException;

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 374
    .end local v9    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v10    # "_arg1":J
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 376
    .local v9, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 377
    .local v10, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 378
    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v11

    new-instance v12, Landroid/content/AttributionSource;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v13

    invoke-direct {v12, v13, v8, v8}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v7, v11, v12}, Landroid/os/image/IDynamicSystemService$Stub;->permissionCheckerWrapper(Ljava/lang/String;ILandroid/content/AttributionSource;)Z

    move-result v7

    if-ne v7, v5, :cond_5

    .line 381
    invoke-virtual {v0, v9, v10}, Landroid/os/image/IDynamicSystemService$Stub;->setEnable(ZZ)Z

    move-result v6

    .line 382
    .restart local v6    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 384
    goto/16 :goto_0

    .line 379
    .end local v6    # "_result":Z
    :cond_5
    new-instance v5, Ljava/lang/SecurityException;

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 363
    .end local v9    # "_arg0":Z
    .end local v10    # "_arg1":Z
    :pswitch_6
    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v9

    new-instance v10, Landroid/content/AttributionSource;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v11

    invoke-direct {v10, v11, v8, v8}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v7, v9, v10}, Landroid/os/image/IDynamicSystemService$Stub;->permissionCheckerWrapper(Ljava/lang/String;ILandroid/content/AttributionSource;)Z

    move-result v7

    if-ne v7, v5, :cond_6

    .line 366
    invoke-virtual/range {p0 .. p0}, Landroid/os/image/IDynamicSystemService$Stub;->remove()Z

    move-result v6

    .line 367
    .restart local v6    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 369
    goto/16 :goto_0

    .line 364
    .end local v6    # "_result":Z
    :cond_6
    new-instance v5, Ljava/lang/SecurityException;

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 353
    :pswitch_7
    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v9

    new-instance v10, Landroid/content/AttributionSource;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v11

    invoke-direct {v10, v11, v8, v8}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v7, v9, v10}, Landroid/os/image/IDynamicSystemService$Stub;->permissionCheckerWrapper(Ljava/lang/String;ILandroid/content/AttributionSource;)Z

    move-result v7

    if-ne v7, v5, :cond_7

    .line 356
    invoke-virtual/range {p0 .. p0}, Landroid/os/image/IDynamicSystemService$Stub;->isEnabled()Z

    move-result v6

    .line 357
    .restart local v6    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 359
    goto/16 :goto_0

    .line 354
    .end local v6    # "_result":Z
    :cond_7
    new-instance v5, Ljava/lang/SecurityException;

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 346
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Landroid/os/image/IDynamicSystemService$Stub;->isInstalled()Z

    move-result v6

    .line 347
    .restart local v6    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 349
    goto/16 :goto_0

    .line 339
    .end local v6    # "_result":Z
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Landroid/os/image/IDynamicSystemService$Stub;->isInUse()Z

    move-result v6

    .line 340
    .restart local v6    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 342
    goto/16 :goto_0

    .line 329
    .end local v6    # "_result":Z
    :pswitch_a
    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v9

    new-instance v10, Landroid/content/AttributionSource;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v11

    invoke-direct {v10, v11, v8, v8}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v7, v9, v10}, Landroid/os/image/IDynamicSystemService$Stub;->permissionCheckerWrapper(Ljava/lang/String;ILandroid/content/AttributionSource;)Z

    move-result v7

    if-ne v7, v5, :cond_8

    .line 332
    invoke-virtual/range {p0 .. p0}, Landroid/os/image/IDynamicSystemService$Stub;->abort()Z

    move-result v6

    .line 333
    .restart local v6    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 335
    goto/16 :goto_0

    .line 330
    .end local v6    # "_result":Z
    :cond_8
    new-instance v5, Ljava/lang/SecurityException;

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 319
    :pswitch_b
    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v9

    new-instance v10, Landroid/content/AttributionSource;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v11

    invoke-direct {v10, v11, v8, v8}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v7, v9, v10}, Landroid/os/image/IDynamicSystemService$Stub;->permissionCheckerWrapper(Ljava/lang/String;ILandroid/content/AttributionSource;)Z

    move-result v7

    if-ne v7, v5, :cond_9

    .line 322
    invoke-virtual/range {p0 .. p0}, Landroid/os/image/IDynamicSystemService$Stub;->getInstallationProgress()Landroid/gsi/GsiProgress;

    move-result-object v6

    .line 323
    .local v6, "_result":Landroid/gsi/GsiProgress;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    invoke-virtual {v3, v6, v5}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 325
    goto/16 :goto_0

    .line 320
    .end local v6    # "_result":Landroid/gsi/GsiProgress;
    :cond_9
    new-instance v5, Ljava/lang/SecurityException;

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 309
    :pswitch_c
    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v9

    new-instance v10, Landroid/content/AttributionSource;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v11

    invoke-direct {v10, v11, v8, v8}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v7, v9, v10}, Landroid/os/image/IDynamicSystemService$Stub;->permissionCheckerWrapper(Ljava/lang/String;ILandroid/content/AttributionSource;)Z

    move-result v7

    if-ne v7, v5, :cond_a

    .line 312
    invoke-virtual/range {p0 .. p0}, Landroid/os/image/IDynamicSystemService$Stub;->finishInstallation()Z

    move-result v6

    .line 313
    .local v6, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 315
    goto/16 :goto_0

    .line 310
    .end local v6    # "_result":Z
    :cond_a
    new-instance v5, Ljava/lang/SecurityException;

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 299
    :pswitch_d
    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v9

    new-instance v10, Landroid/content/AttributionSource;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v11

    invoke-direct {v10, v11, v8, v8}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v7, v9, v10}, Landroid/os/image/IDynamicSystemService$Stub;->permissionCheckerWrapper(Ljava/lang/String;ILandroid/content/AttributionSource;)Z

    move-result v7

    if-ne v7, v5, :cond_b

    .line 302
    invoke-virtual/range {p0 .. p0}, Landroid/os/image/IDynamicSystemService$Stub;->closePartition()Z

    move-result v6

    .line 303
    .restart local v6    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 305
    goto :goto_0

    .line 300
    .end local v6    # "_result":Z
    :cond_b
    new-instance v5, Ljava/lang/SecurityException;

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 283
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 285
    .local v9, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 287
    .local v10, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v12

    .line 288
    .local v12, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 289
    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v13

    new-instance v14, Landroid/content/AttributionSource;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v15

    invoke-direct {v14, v15, v8, v8}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v7, v13, v14}, Landroid/os/image/IDynamicSystemService$Stub;->permissionCheckerWrapper(Ljava/lang/String;ILandroid/content/AttributionSource;)Z

    move-result v7

    if-ne v7, v5, :cond_c

    .line 292
    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/os/image/IDynamicSystemService$Stub;->createPartition(Ljava/lang/String;JZ)I

    move-result v6

    .line 293
    .local v6, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    goto :goto_0

    .line 290
    .end local v6    # "_result":I
    :cond_c
    new-instance v5, Ljava/lang/SecurityException;

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 270
    .end local v9    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":J
    .end local v12    # "_arg2":Z
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 271
    .restart local v9    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 272
    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v10

    new-instance v11, Landroid/content/AttributionSource;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v12

    invoke-direct {v11, v12, v8, v8}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v7, v10, v11}, Landroid/os/image/IDynamicSystemService$Stub;->permissionCheckerWrapper(Ljava/lang/String;ILandroid/content/AttributionSource;)Z

    move-result v7

    if-ne v7, v5, :cond_d

    .line 275
    invoke-virtual {v0, v9}, Landroid/os/image/IDynamicSystemService$Stub;->startInstallation(Ljava/lang/String;)Z

    move-result v6

    .line 276
    .local v6, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 278
    nop

    .line 443
    .end local v6    # "_result":Z
    .end local v9    # "_arg0":Ljava/lang/String;
    :goto_0
    return v5

    .line 273
    .restart local v9    # "_arg0":Ljava/lang/String;
    :cond_d
    new-instance v5, Ljava/lang/SecurityException;

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
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
    .end packed-switch
.end method
