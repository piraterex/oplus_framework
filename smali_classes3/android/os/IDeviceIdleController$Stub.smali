.class public abstract Landroid/os/IDeviceIdleController$Stub;
.super Landroid/os/Binder;
.source "IDeviceIdleController.java"

# interfaces
.implements Landroid/os/IDeviceIdleController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IDeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IDeviceIdleController$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.IDeviceIdleController"

.field static final greylist-max-o TRANSACTION_addPowerSaveTempWhitelistApp:I = 0x12

.field static final greylist-max-o TRANSACTION_addPowerSaveTempWhitelistAppForMms:I = 0x13

.field static final greylist-max-o TRANSACTION_addPowerSaveTempWhitelistAppForSms:I = 0x14

.field static final greylist-max-o TRANSACTION_addPowerSaveWhitelistApp:I = 0x1

.field static final blacklist TRANSACTION_addPowerSaveWhitelistApps:I = 0x2

.field static final greylist-max-o TRANSACTION_exitIdle:I = 0x16

.field static final greylist-max-o TRANSACTION_getAppIdTempWhitelist:I = 0xf

.field static final greylist-max-o TRANSACTION_getAppIdUserWhitelist:I = 0xe

.field static final greylist-max-o TRANSACTION_getAppIdWhitelist:I = 0xd

.field static final greylist-max-o TRANSACTION_getAppIdWhitelistExceptIdle:I = 0xc

.field static final greylist-max-o TRANSACTION_getFullPowerWhitelist:I = 0xb

.field static final greylist-max-o TRANSACTION_getFullPowerWhitelistExceptIdle:I = 0xa

.field static final greylist-max-o TRANSACTION_getRemovedSystemPowerWhitelistApps:I = 0x6

.field static final greylist-max-o TRANSACTION_getSystemPowerWhitelist:I = 0x8

.field static final greylist-max-o TRANSACTION_getSystemPowerWhitelistExceptIdle:I = 0x7

.field static final greylist-max-o TRANSACTION_getUserPowerWhitelist:I = 0x9

.field static final greylist-max-o TRANSACTION_isPowerSaveWhitelistApp:I = 0x11

.field static final greylist-max-o TRANSACTION_isPowerSaveWhitelistExceptIdleApp:I = 0x10

.field static final greylist-max-o TRANSACTION_removePowerSaveWhitelistApp:I = 0x3

.field static final greylist-max-o TRANSACTION_removeSystemPowerWhitelistApp:I = 0x4

.field static final blacklist TRANSACTION_resetPreIdleTimeoutMode:I = 0x18

.field static final greylist-max-o TRANSACTION_restoreSystemPowerWhitelistApp:I = 0x5

.field static final blacklist TRANSACTION_setPreIdleTimeoutMode:I = 0x17

.field static final blacklist TRANSACTION_whitelistAppTemporarily:I = 0x15


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 114
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 115
    const-string v0, "android.os.IDeviceIdleController"

    invoke-virtual {p0, p0, v0}, Landroid/os/IDeviceIdleController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 123
    if-nez p0, :cond_0

    .line 124
    const/4 v0, 0x0

    return-object v0

    .line 126
    :cond_0
    const-string v0, "android.os.IDeviceIdleController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 127
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IDeviceIdleController;

    if-eqz v1, :cond_1

    .line 128
    move-object v1, v0

    check-cast v1, Landroid/os/IDeviceIdleController;

    return-object v1

    .line 130
    :cond_1
    new-instance v1, Landroid/os/IDeviceIdleController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IDeviceIdleController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 139
    packed-switch p0, :pswitch_data_0

    .line 239
    const/4 v0, 0x0

    return-object v0

    .line 235
    :pswitch_0
    const-string/jumbo v0, "resetPreIdleTimeoutMode"

    return-object v0

    .line 231
    :pswitch_1
    const-string/jumbo v0, "setPreIdleTimeoutMode"

    return-object v0

    .line 227
    :pswitch_2
    const-string v0, "exitIdle"

    return-object v0

    .line 223
    :pswitch_3
    const-string/jumbo v0, "whitelistAppTemporarily"

    return-object v0

    .line 219
    :pswitch_4
    const-string v0, "addPowerSaveTempWhitelistAppForSms"

    return-object v0

    .line 215
    :pswitch_5
    const-string v0, "addPowerSaveTempWhitelistAppForMms"

    return-object v0

    .line 211
    :pswitch_6
    const-string v0, "addPowerSaveTempWhitelistApp"

    return-object v0

    .line 207
    :pswitch_7
    const-string/jumbo v0, "isPowerSaveWhitelistApp"

    return-object v0

    .line 203
    :pswitch_8
    const-string/jumbo v0, "isPowerSaveWhitelistExceptIdleApp"

    return-object v0

    .line 199
    :pswitch_9
    const-string v0, "getAppIdTempWhitelist"

    return-object v0

    .line 195
    :pswitch_a
    const-string v0, "getAppIdUserWhitelist"

    return-object v0

    .line 191
    :pswitch_b
    const-string v0, "getAppIdWhitelist"

    return-object v0

    .line 187
    :pswitch_c
    const-string v0, "getAppIdWhitelistExceptIdle"

    return-object v0

    .line 183
    :pswitch_d
    const-string v0, "getFullPowerWhitelist"

    return-object v0

    .line 179
    :pswitch_e
    const-string v0, "getFullPowerWhitelistExceptIdle"

    return-object v0

    .line 175
    :pswitch_f
    const-string/jumbo v0, "getUserPowerWhitelist"

    return-object v0

    .line 171
    :pswitch_10
    const-string/jumbo v0, "getSystemPowerWhitelist"

    return-object v0

    .line 167
    :pswitch_11
    const-string/jumbo v0, "getSystemPowerWhitelistExceptIdle"

    return-object v0

    .line 163
    :pswitch_12
    const-string v0, "getRemovedSystemPowerWhitelistApps"

    return-object v0

    .line 159
    :pswitch_13
    const-string/jumbo v0, "restoreSystemPowerWhitelistApp"

    return-object v0

    .line 155
    :pswitch_14
    const-string/jumbo v0, "removeSystemPowerWhitelistApp"

    return-object v0

    .line 151
    :pswitch_15
    const-string/jumbo v0, "removePowerSaveWhitelistApp"

    return-object v0

    .line 147
    :pswitch_16
    const-string v0, "addPowerSaveWhitelistApps"

    return-object v0

    .line 143
    :pswitch_17
    const-string v0, "addPowerSaveWhitelistApp"

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

    .line 134
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 958
    const/16 v0, 0x17

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 246
    invoke-static {p1}, Landroid/os/IDeviceIdleController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 250
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p3

    const-string v10, "android.os.IDeviceIdleController"

    .line 251
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v8, v11, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 252
    move-object/from16 v12, p2

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :cond_0
    move-object/from16 v12, p2

    .line 254
    :goto_0
    packed-switch v8, :pswitch_data_0

    .line 262
    packed-switch v8, :pswitch_data_1

    .line 492
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 258
    :pswitch_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 259
    return v11

    .line 486
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/IDeviceIdleController$Stub;->resetPreIdleTimeoutMode()V

    .line 487
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    goto/16 :goto_1

    .line 477
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 478
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 479
    invoke-virtual {v7, v0}, Landroid/os/IDeviceIdleController$Stub;->setPreIdleTimeoutMode(I)I

    move-result v1

    .line 480
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    goto/16 :goto_1

    .line 468
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 469
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 470
    invoke-virtual {v7, v0}, Landroid/os/IDeviceIdleController$Stub;->exitIdle(Ljava/lang/String;)V

    .line 471
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    goto/16 :goto_1

    .line 452
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 454
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 456
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 458
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 459
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 460
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/os/IDeviceIdleController$Stub;->whitelistAppTemporarily(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide v4

    .line 461
    .local v4, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    invoke-virtual {v9, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 463
    goto/16 :goto_1

    .line 436
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":J
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 438
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 440
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 442
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 443
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 444
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/os/IDeviceIdleController$Stub;->addPowerSaveTempWhitelistAppForSms(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide v4

    .line 445
    .restart local v4    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    invoke-virtual {v9, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 447
    goto/16 :goto_1

    .line 420
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":J
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 422
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 424
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 426
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 427
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 428
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/os/IDeviceIdleController$Stub;->addPowerSaveTempWhitelistAppForMms(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide v4

    .line 429
    .restart local v4    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    invoke-virtual {v9, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 431
    goto/16 :goto_1

    .line 403
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":J
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 405
    .local v13, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 407
    .local v14, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 409
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 411
    .local v17, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 412
    .local v18, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 413
    move-object/from16 v0, p0

    move-object v1, v13

    move-wide v2, v14

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/os/IDeviceIdleController$Stub;->addPowerSaveTempWhitelistApp(Ljava/lang/String;JIILjava/lang/String;)V

    .line 414
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    goto/16 :goto_1

    .line 393
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":J
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":Ljava/lang/String;
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 394
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 395
    invoke-virtual {v7, v0}, Landroid/os/IDeviceIdleController$Stub;->isPowerSaveWhitelistApp(Ljava/lang/String;)Z

    move-result v1

    .line 396
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 398
    goto/16 :goto_1

    .line 383
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 384
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 385
    invoke-virtual {v7, v0}, Landroid/os/IDeviceIdleController$Stub;->isPowerSaveWhitelistExceptIdleApp(Ljava/lang/String;)Z

    move-result v1

    .line 386
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 388
    goto/16 :goto_1

    .line 375
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Landroid/os/IDeviceIdleController$Stub;->getAppIdTempWhitelist()[I

    move-result-object v0

    .line 376
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 378
    goto/16 :goto_1

    .line 368
    .end local v0    # "_result":[I
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Landroid/os/IDeviceIdleController$Stub;->getAppIdUserWhitelist()[I

    move-result-object v0

    .line 369
    .restart local v0    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 371
    goto/16 :goto_1

    .line 361
    .end local v0    # "_result":[I
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Landroid/os/IDeviceIdleController$Stub;->getAppIdWhitelist()[I

    move-result-object v0

    .line 362
    .restart local v0    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 364
    goto/16 :goto_1

    .line 354
    .end local v0    # "_result":[I
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Landroid/os/IDeviceIdleController$Stub;->getAppIdWhitelistExceptIdle()[I

    move-result-object v0

    .line 355
    .restart local v0    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 357
    goto/16 :goto_1

    .line 347
    .end local v0    # "_result":[I
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Landroid/os/IDeviceIdleController$Stub;->getFullPowerWhitelist()[Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 350
    goto/16 :goto_1

    .line 340
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Landroid/os/IDeviceIdleController$Stub;->getFullPowerWhitelistExceptIdle()[Ljava/lang/String;

    move-result-object v0

    .line 341
    .restart local v0    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 343
    goto/16 :goto_1

    .line 333
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Landroid/os/IDeviceIdleController$Stub;->getUserPowerWhitelist()[Ljava/lang/String;

    move-result-object v0

    .line 334
    .restart local v0    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 336
    goto :goto_1

    .line 326
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Landroid/os/IDeviceIdleController$Stub;->getSystemPowerWhitelist()[Ljava/lang/String;

    move-result-object v0

    .line 327
    .restart local v0    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 329
    goto :goto_1

    .line 319
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_12
    invoke-virtual/range {p0 .. p0}, Landroid/os/IDeviceIdleController$Stub;->getSystemPowerWhitelistExceptIdle()[Ljava/lang/String;

    move-result-object v0

    .line 320
    .restart local v0    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 322
    goto :goto_1

    .line 312
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Landroid/os/IDeviceIdleController$Stub;->getRemovedSystemPowerWhitelistApps()[Ljava/lang/String;

    move-result-object v0

    .line 313
    .restart local v0    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 315
    goto :goto_1

    .line 304
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 306
    invoke-virtual {v7, v0}, Landroid/os/IDeviceIdleController$Stub;->restoreSystemPowerWhitelistApp(Ljava/lang/String;)V

    .line 307
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    goto :goto_1

    .line 295
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 296
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 297
    invoke-virtual {v7, v0}, Landroid/os/IDeviceIdleController$Stub;->removeSystemPowerWhitelistApp(Ljava/lang/String;)V

    .line 298
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    goto :goto_1

    .line 286
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 287
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 288
    invoke-virtual {v7, v0}, Landroid/os/IDeviceIdleController$Stub;->removePowerSaveWhitelistApp(Ljava/lang/String;)V

    .line 289
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    goto :goto_1

    .line 276
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 277
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 278
    invoke-virtual {v7, v0}, Landroid/os/IDeviceIdleController$Stub;->addPowerSaveWhitelistApps(Ljava/util/List;)I

    move-result v1

    .line 279
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    goto :goto_1

    .line 267
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "_result":I
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    invoke-virtual {v7, v0}, Landroid/os/IDeviceIdleController$Stub;->addPowerSaveWhitelistApp(Ljava/lang/String;)V

    .line 270
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    nop

    .line 495
    .end local v0    # "_arg0":Ljava/lang/String;
    :goto_1
    return v11

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
