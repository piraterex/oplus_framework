.class public abstract Landroid/os/storage/IStorageManager$Stub;
.super Landroid/os/Binder;
.source "IStorageManager.java"

# interfaces
.implements Landroid/os/storage/IStorageManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/IStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IStorageManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.storage.IStorageManager"

.field static final blacklist TRANSACTION_abortChanges:I = 0x58

.field static final greylist-max-o TRANSACTION_abortIdleMaintenance:I = 0x51

.field static final greylist-max-o TRANSACTION_addUserKeyAuth:I = 0x47

.field static final greylist-max-o TRANSACTION_allocateBytes:I = 0x4f

.field static final greylist-max-o TRANSACTION_benchmark:I = 0x3c

.field static final blacklist TRANSACTION_clearCache:I = 0x65

.field static final blacklist TRANSACTION_clearUserKeyAuth:I = 0x59

.field static final blacklist TRANSACTION_commitChanges:I = 0x54

.field static final greylist-max-o TRANSACTION_createUserKey:I = 0x3e

.field static final greylist-max-o TRANSACTION_destroyUserKey:I = 0x3f

.field static final greylist-max-o TRANSACTION_destroyUserStorage:I = 0x44

.field static final blacklist TRANSACTION_disableAppDataIsolation:I = 0x5b

.field static final greylist-max-o TRANSACTION_fixateNewestUserKeyAuth:I = 0x48

.field static final blacklist TRANSACTION_fixupAppDir:I = 0x5a

.field static final greylist-max-o TRANSACTION_forgetAllVolumes:I = 0x39

.field static final greylist-max-o TRANSACTION_forgetVolume:I = 0x38

.field static final greylist-max-o TRANSACTION_format:I = 0x32

.field static final greylist-max-o TRANSACTION_fstrim:I = 0x49

.field static final greylist-max-o TRANSACTION_getAllocatableBytes:I = 0x4e

.field static final greylist-max-o TRANSACTION_getCacheQuotaBytes:I = 0x4c

.field static final greylist-max-o TRANSACTION_getCacheSizeBytes:I = 0x4d

.field static final blacklist TRANSACTION_getCloudMediaProvider:I = 0x62

.field static final greylist-max-o TRANSACTION_getDisks:I = 0x2d

.field static final blacklist TRANSACTION_getExternalStorageMountMode:I = 0x5f

.field static final blacklist TRANSACTION_getManageSpaceActivityIntent:I = 0x5c

.field static final greylist-max-o TRANSACTION_getMountedObbPath:I = 0x19

.field static final greylist-max-o TRANSACTION_getPrimaryStorageUuid:I = 0x3a

.field static final greylist-max-o TRANSACTION_getVolumeList:I = 0x1e

.field static final greylist-max-o TRANSACTION_getVolumeRecords:I = 0x2f

.field static final greylist-max-o TRANSACTION_getVolumes:I = 0x2e

.field static final blacklist TRANSACTION_isAppIoBlocked:I = 0x60

.field static final greylist-max-o TRANSACTION_isObbMounted:I = 0x18

.field static final greylist-max-o TRANSACTION_isUserKeyUnlocked:I = 0x42

.field static final greylist-max-o TRANSACTION_lastMaintenance:I = 0x2a

.field static final greylist-max-o TRANSACTION_lockUserKey:I = 0x41

.field static final greylist-max-o TRANSACTION_mkdirs:I = 0x23

.field static final greylist-max-o TRANSACTION_mount:I = 0x30

.field static final greylist-max-o TRANSACTION_mountObb:I = 0x16

.field static final greylist-max-o TRANSACTION_mountProxyFileDescriptorBridge:I = 0x4a

.field static final blacklist TRANSACTION_needsCheckpoint:I = 0x57

.field static final blacklist TRANSACTION_notifyAppIoBlocked:I = 0x5d

.field static final blacklist TRANSACTION_notifyAppIoResumed:I = 0x5e

.field static final greylist-max-o TRANSACTION_openProxyFileDescriptor:I = 0x4b

.field static final greylist-max-o TRANSACTION_partitionMixed:I = 0x35

.field static final greylist-max-o TRANSACTION_partitionPrivate:I = 0x34

.field static final greylist-max-o TRANSACTION_partitionPublic:I = 0x33

.field static final greylist-max-o TRANSACTION_prepareUserStorage:I = 0x43

.field static final greylist-max-o TRANSACTION_registerListener:I = 0x1

.field static final greylist-max-o TRANSACTION_runIdleMaintenance:I = 0x50

.field static final greylist-max-o TRANSACTION_runMaintenance:I = 0x2b

.field static final blacklist TRANSACTION_setCloudMediaProvider:I = 0x61

.field static final greylist-max-o TRANSACTION_setDebugFlags:I = 0x3d

.field static final greylist-max-o TRANSACTION_setPrimaryStorageUuid:I = 0x3b

.field static final greylist-max-o TRANSACTION_setVolumeNickname:I = 0x36

.field static final greylist-max-o TRANSACTION_setVolumeUserFlags:I = 0x37

.field static final greylist-max-o TRANSACTION_shutdown:I = 0x14

.field static final blacklist TRANSACTION_startCheckpoint:I = 0x56

.field static final blacklist TRANSACTION_startserviceAppFuse:I = 0x63

.field static final blacklist TRANSACTION_stopserviceAppFuse:I = 0x64

.field static final blacklist TRANSACTION_supportsCheckpoint:I = 0x55

.field static final greylist-max-o TRANSACTION_unlockUserKey:I = 0x40

.field static final greylist-max-o TRANSACTION_unmount:I = 0x31

.field static final greylist-max-o TRANSACTION_unmountObb:I = 0x17

.field static final greylist-max-o TRANSACTION_unregisterListener:I = 0x2


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 283
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 284
    const-string v0, "android.os.storage.IStorageManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/storage/IStorageManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 292
    if-nez p0, :cond_0

    .line 293
    const/4 v0, 0x0

    return-object v0

    .line 295
    :cond_0
    const-string v0, "android.os.storage.IStorageManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 296
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/storage/IStorageManager;

    if-eqz v1, :cond_1

    .line 297
    move-object v1, v0

    check-cast v1, Landroid/os/storage/IStorageManager;

    return-object v1

    .line 299
    :cond_1
    new-instance v1, Landroid/os/storage/IStorageManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/storage/IStorageManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 308
    packed-switch p0, :pswitch_data_0

    .line 568
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 564
    :pswitch_1
    const-string v0, "clearCache"

    return-object v0

    .line 560
    :pswitch_2
    const-string/jumbo v0, "stopserviceAppFuse"

    return-object v0

    .line 556
    :pswitch_3
    const-string/jumbo v0, "startserviceAppFuse"

    return-object v0

    .line 552
    :pswitch_4
    const-string v0, "getCloudMediaProvider"

    return-object v0

    .line 548
    :pswitch_5
    const-string/jumbo v0, "setCloudMediaProvider"

    return-object v0

    .line 544
    :pswitch_6
    const-string/jumbo v0, "isAppIoBlocked"

    return-object v0

    .line 540
    :pswitch_7
    const-string v0, "getExternalStorageMountMode"

    return-object v0

    .line 536
    :pswitch_8
    const-string/jumbo v0, "notifyAppIoResumed"

    return-object v0

    .line 532
    :pswitch_9
    const-string/jumbo v0, "notifyAppIoBlocked"

    return-object v0

    .line 528
    :pswitch_a
    const-string v0, "getManageSpaceActivityIntent"

    return-object v0

    .line 524
    :pswitch_b
    const-string v0, "disableAppDataIsolation"

    return-object v0

    .line 520
    :pswitch_c
    const-string v0, "fixupAppDir"

    return-object v0

    .line 516
    :pswitch_d
    const-string v0, "clearUserKeyAuth"

    return-object v0

    .line 512
    :pswitch_e
    const-string v0, "abortChanges"

    return-object v0

    .line 508
    :pswitch_f
    const-string/jumbo v0, "needsCheckpoint"

    return-object v0

    .line 504
    :pswitch_10
    const-string/jumbo v0, "startCheckpoint"

    return-object v0

    .line 500
    :pswitch_11
    const-string/jumbo v0, "supportsCheckpoint"

    return-object v0

    .line 496
    :pswitch_12
    const-string v0, "commitChanges"

    return-object v0

    .line 492
    :pswitch_13
    const-string v0, "abortIdleMaintenance"

    return-object v0

    .line 488
    :pswitch_14
    const-string/jumbo v0, "runIdleMaintenance"

    return-object v0

    .line 484
    :pswitch_15
    const-string v0, "allocateBytes"

    return-object v0

    .line 480
    :pswitch_16
    const-string v0, "getAllocatableBytes"

    return-object v0

    .line 476
    :pswitch_17
    const-string v0, "getCacheSizeBytes"

    return-object v0

    .line 472
    :pswitch_18
    const-string v0, "getCacheQuotaBytes"

    return-object v0

    .line 468
    :pswitch_19
    const-string/jumbo v0, "openProxyFileDescriptor"

    return-object v0

    .line 464
    :pswitch_1a
    const-string/jumbo v0, "mountProxyFileDescriptorBridge"

    return-object v0

    .line 460
    :pswitch_1b
    const-string v0, "fstrim"

    return-object v0

    .line 456
    :pswitch_1c
    const-string v0, "fixateNewestUserKeyAuth"

    return-object v0

    .line 452
    :pswitch_1d
    const-string v0, "addUserKeyAuth"

    return-object v0

    .line 448
    :pswitch_1e
    const-string v0, "destroyUserStorage"

    return-object v0

    .line 444
    :pswitch_1f
    const-string/jumbo v0, "prepareUserStorage"

    return-object v0

    .line 440
    :pswitch_20
    const-string/jumbo v0, "isUserKeyUnlocked"

    return-object v0

    .line 436
    :pswitch_21
    const-string/jumbo v0, "lockUserKey"

    return-object v0

    .line 432
    :pswitch_22
    const-string/jumbo v0, "unlockUserKey"

    return-object v0

    .line 428
    :pswitch_23
    const-string v0, "destroyUserKey"

    return-object v0

    .line 424
    :pswitch_24
    const-string v0, "createUserKey"

    return-object v0

    .line 420
    :pswitch_25
    const-string/jumbo v0, "setDebugFlags"

    return-object v0

    .line 416
    :pswitch_26
    const-string v0, "benchmark"

    return-object v0

    .line 412
    :pswitch_27
    const-string/jumbo v0, "setPrimaryStorageUuid"

    return-object v0

    .line 408
    :pswitch_28
    const-string v0, "getPrimaryStorageUuid"

    return-object v0

    .line 404
    :pswitch_29
    const-string v0, "forgetAllVolumes"

    return-object v0

    .line 400
    :pswitch_2a
    const-string v0, "forgetVolume"

    return-object v0

    .line 396
    :pswitch_2b
    const-string/jumbo v0, "setVolumeUserFlags"

    return-object v0

    .line 392
    :pswitch_2c
    const-string/jumbo v0, "setVolumeNickname"

    return-object v0

    .line 388
    :pswitch_2d
    const-string/jumbo v0, "partitionMixed"

    return-object v0

    .line 384
    :pswitch_2e
    const-string/jumbo v0, "partitionPrivate"

    return-object v0

    .line 380
    :pswitch_2f
    const-string/jumbo v0, "partitionPublic"

    return-object v0

    .line 376
    :pswitch_30
    const-string v0, "format"

    return-object v0

    .line 372
    :pswitch_31
    const-string/jumbo v0, "unmount"

    return-object v0

    .line 368
    :pswitch_32
    const-string/jumbo v0, "mount"

    return-object v0

    .line 364
    :pswitch_33
    const-string/jumbo v0, "getVolumeRecords"

    return-object v0

    .line 360
    :pswitch_34
    const-string/jumbo v0, "getVolumes"

    return-object v0

    .line 356
    :pswitch_35
    const-string v0, "getDisks"

    return-object v0

    .line 352
    :pswitch_36
    const-string/jumbo v0, "runMaintenance"

    return-object v0

    .line 348
    :pswitch_37
    const-string/jumbo v0, "lastMaintenance"

    return-object v0

    .line 344
    :pswitch_38
    const-string/jumbo v0, "mkdirs"

    return-object v0

    .line 340
    :pswitch_39
    const-string/jumbo v0, "getVolumeList"

    return-object v0

    .line 336
    :pswitch_3a
    const-string v0, "getMountedObbPath"

    return-object v0

    .line 332
    :pswitch_3b
    const-string/jumbo v0, "isObbMounted"

    return-object v0

    .line 328
    :pswitch_3c
    const-string/jumbo v0, "unmountObb"

    return-object v0

    .line 324
    :pswitch_3d
    const-string/jumbo v0, "mountObb"

    return-object v0

    .line 320
    :pswitch_3e
    const-string/jumbo v0, "shutdown"

    return-object v0

    .line 316
    :pswitch_3f
    const-string/jumbo v0, "unregisterListener"

    return-object v0

    .line 312
    :pswitch_40
    const-string/jumbo v0, "registerListener"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_40
        :pswitch_3f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3e
        :pswitch_0
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_39
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_38
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_37
        :pswitch_36
        :pswitch_0
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_0
        :pswitch_0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_0
        :pswitch_0
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


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 303
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 2445
    const/16 v0, 0x64

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 575
    invoke-static {p1}, Landroid/os/storage/IStorageManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 579
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "android.os.storage.IStorageManager"

    .line 580
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 581
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 583
    :cond_0
    packed-switch v7, :pswitch_data_0

    .line 591
    packed-switch v7, :pswitch_data_1

    .line 1254
    :pswitch_0
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 587
    :pswitch_1
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 588
    return v11

    .line 1248
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->clearCache()V

    .line 1249
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1250
    goto/16 :goto_0

    .line 1242
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->stopserviceAppFuse()V

    .line 1243
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1244
    goto/16 :goto_0

    .line 1236
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->startserviceAppFuse()V

    .line 1237
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1238
    goto/16 :goto_0

    .line 1229
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->getCloudMediaProvider()Ljava/lang/String;

    move-result-object v0

    .line 1230
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1231
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1232
    goto/16 :goto_0

    .line 1221
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1222
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1223
    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->setCloudMediaProvider(Ljava/lang/String;)V

    .line 1224
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1225
    goto/16 :goto_0

    .line 1205
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1207
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1209
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1211
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1212
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1213
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/os/storage/IStorageManager$Stub;->isAppIoBlocked(Ljava/lang/String;III)Z

    move-result v4

    .line 1214
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1215
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1216
    goto/16 :goto_0

    .line 1193
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1195
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1196
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1197
    invoke-virtual {v6, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->getExternalStorageMountMode(ILjava/lang/String;)I

    move-result v2

    .line 1198
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1199
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1200
    goto/16 :goto_0

    .line 1178
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1180
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1182
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1184
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1185
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1186
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/os/storage/IStorageManager$Stub;->notifyAppIoResumed(Ljava/lang/String;III)V

    .line 1187
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1188
    goto/16 :goto_0

    .line 1163
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1165
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1167
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1169
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1170
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1171
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/os/storage/IStorageManager$Stub;->notifyAppIoBlocked(Ljava/lang/String;III)V

    .line 1172
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1173
    goto/16 :goto_0

    .line 1151
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1153
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1154
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1155
    invoke-virtual {v6, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->getManageSpaceActivityIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1156
    .local v2, "_result":Landroid/app/PendingIntent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1157
    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1158
    goto/16 :goto_0

    .line 1138
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/app/PendingIntent;
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1140
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1142
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1143
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1144
    invoke-virtual {v6, v0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->disableAppDataIsolation(Ljava/lang/String;II)V

    .line 1145
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1146
    goto/16 :goto_0

    .line 1129
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1130
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1131
    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->fixupAppDir(Ljava/lang/String;)V

    .line 1132
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1133
    goto/16 :goto_0

    .line 1116
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1118
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1120
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 1121
    .local v2, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1122
    invoke-virtual {v6, v0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->clearUserKeyAuth(II[B)V

    .line 1123
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1124
    goto/16 :goto_0

    .line 1105
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[B
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1107
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1108
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1109
    invoke-virtual {v6, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->abortChanges(Ljava/lang/String;Z)V

    .line 1110
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1111
    goto/16 :goto_0

    .line 1097
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->needsCheckpoint()Z

    move-result v0

    .line 1098
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1099
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1100
    goto/16 :goto_0

    .line 1089
    .end local v0    # "_result":Z
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1090
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1091
    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->startCheckpoint(I)V

    .line 1092
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1093
    goto/16 :goto_0

    .line 1081
    .end local v0    # "_arg0":I
    :pswitch_12
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->supportsCheckpoint()Z

    move-result v0

    .line 1082
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1083
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1084
    goto/16 :goto_0

    .line 1075
    .end local v0    # "_result":Z
    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->commitChanges()V

    .line 1076
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1077
    goto/16 :goto_0

    .line 1069
    :pswitch_14
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->abortIdleMaintenance()V

    .line 1070
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1071
    goto/16 :goto_0

    .line 1063
    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->runIdleMaintenance()V

    .line 1064
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1065
    goto/16 :goto_0

    .line 1049
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1051
    .local v12, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 1053
    .local v13, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1055
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1056
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1057
    move-object/from16 v0, p0

    move-object v1, v12

    move-wide v2, v13

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/storage/IStorageManager$Stub;->allocateBytes(Ljava/lang/String;JILjava/lang/String;)V

    .line 1058
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1059
    goto/16 :goto_0

    .line 1035
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":J
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":Ljava/lang/String;
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1037
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1039
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1040
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1041
    invoke-virtual {v6, v0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->getAllocatableBytes(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v3

    .line 1042
    .local v3, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1043
    invoke-virtual {v9, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 1044
    goto/16 :goto_0

    .line 1023
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":J
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1025
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1026
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1027
    invoke-virtual {v6, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->getCacheSizeBytes(Ljava/lang/String;I)J

    move-result-wide v2

    .line 1028
    .local v2, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1029
    invoke-virtual {v9, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1030
    goto/16 :goto_0

    .line 1011
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":J
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1013
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1014
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1015
    invoke-virtual {v6, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->getCacheQuotaBytes(Ljava/lang/String;I)J

    move-result-wide v2

    .line 1016
    .restart local v2    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1017
    invoke-virtual {v9, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1018
    goto/16 :goto_0

    .line 997
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":J
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 999
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1001
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1002
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1003
    invoke-virtual {v6, v0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->openProxyFileDescriptor(III)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 1004
    .local v3, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1005
    invoke-virtual {v9, v3, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1006
    goto/16 :goto_0

    .line 989
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_1b
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->mountProxyFileDescriptorBridge()Lcom/android/internal/os/AppFuseMount;

    move-result-object v0

    .line 990
    .local v0, "_result":Lcom/android/internal/os/AppFuseMount;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 991
    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 992
    goto/16 :goto_0

    .line 979
    .end local v0    # "_result":Lcom/android/internal/os/AppFuseMount;
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 981
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v1

    .line 982
    .local v1, "_arg1":Landroid/os/IVoldTaskListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 983
    invoke-virtual {v6, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->fstrim(ILandroid/os/IVoldTaskListener;)V

    .line 984
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 985
    goto/16 :goto_0

    .line 970
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/IVoldTaskListener;
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 971
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 972
    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->fixateNewestUserKeyAuth(I)V

    .line 973
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 974
    goto/16 :goto_0

    .line 957
    .end local v0    # "_arg0":I
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 959
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 961
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 962
    .local v2, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 963
    invoke-virtual {v6, v0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->addUserKeyAuth(II[B)V

    .line 964
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 965
    goto/16 :goto_0

    .line 944
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[B
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 946
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 948
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 949
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 950
    invoke-virtual {v6, v0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->destroyUserStorage(Ljava/lang/String;II)V

    .line 951
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 952
    goto/16 :goto_0

    .line 929
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 931
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 933
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 935
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 936
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 937
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/os/storage/IStorageManager$Stub;->prepareUserStorage(Ljava/lang/String;III)V

    .line 938
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 939
    goto/16 :goto_0

    .line 919
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 920
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 921
    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->isUserKeyUnlocked(I)Z

    move-result v1

    .line 922
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 923
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 924
    goto/16 :goto_0

    .line 910
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 911
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 912
    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->lockUserKey(I)V

    .line 913
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 914
    goto/16 :goto_0

    .line 897
    .end local v0    # "_arg0":I
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 899
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 901
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 902
    .local v2, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 903
    invoke-virtual {v6, v0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->unlockUserKey(II[B)V

    .line 904
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 905
    goto/16 :goto_0

    .line 888
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[B
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 889
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 890
    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->destroyUserKey(I)V

    .line 891
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 892
    goto/16 :goto_0

    .line 875
    .end local v0    # "_arg0":I
    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 877
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 879
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 880
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 881
    invoke-virtual {v6, v0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->createUserKey(IIZ)V

    .line 882
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 883
    goto/16 :goto_0

    .line 864
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 866
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 867
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 868
    invoke-virtual {v6, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->setDebugFlags(II)V

    .line 869
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 870
    goto/16 :goto_0

    .line 853
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 855
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v1

    .line 856
    .local v1, "_arg1":Landroid/os/IVoldTaskListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 857
    invoke-virtual {v6, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V

    .line 858
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 859
    goto/16 :goto_0

    .line 842
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/IVoldTaskListener;
    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 844
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageMoveObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageMoveObserver;

    move-result-object v1

    .line 845
    .local v1, "_arg1":Landroid/content/pm/IPackageMoveObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 846
    invoke-virtual {v6, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V

    .line 847
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 848
    goto/16 :goto_0

    .line 834
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/pm/IPackageMoveObserver;
    :pswitch_29
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->getPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v0

    .line 835
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 836
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 837
    goto/16 :goto_0

    .line 828
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_2a
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->forgetAllVolumes()V

    .line 829
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 830
    goto/16 :goto_0

    .line 820
    :pswitch_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 821
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 822
    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->forgetVolume(Ljava/lang/String;)V

    .line 823
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 824
    goto/16 :goto_0

    .line 807
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 809
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 811
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 812
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 813
    invoke-virtual {v6, v0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->setVolumeUserFlags(Ljava/lang/String;II)V

    .line 814
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 815
    goto/16 :goto_0

    .line 796
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 798
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 799
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 800
    invoke-virtual {v6, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 802
    goto/16 :goto_0

    .line 785
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 787
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 788
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 789
    invoke-virtual {v6, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->partitionMixed(Ljava/lang/String;I)V

    .line 790
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 791
    goto/16 :goto_0

    .line 776
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 777
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 778
    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->partitionPrivate(Ljava/lang/String;)V

    .line 779
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 780
    goto/16 :goto_0

    .line 767
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 768
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 769
    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->partitionPublic(Ljava/lang/String;)V

    .line 770
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 771
    goto/16 :goto_0

    .line 758
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 759
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 760
    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->format(Ljava/lang/String;)V

    .line 761
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 762
    goto/16 :goto_0

    .line 749
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 750
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 751
    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->unmount(Ljava/lang/String;)V

    .line 752
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 753
    goto/16 :goto_0

    .line 740
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 741
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 742
    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->mount(Ljava/lang/String;)V

    .line 743
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 744
    goto/16 :goto_0

    .line 730
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 731
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 732
    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->getVolumeRecords(I)[Landroid/os/storage/VolumeRecord;

    move-result-object v1

    .line 733
    .local v1, "_result":[Landroid/os/storage/VolumeRecord;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 734
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 735
    goto/16 :goto_0

    .line 720
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[Landroid/os/storage/VolumeRecord;
    :pswitch_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 721
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 722
    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    move-result-object v1

    .line 723
    .local v1, "_result":[Landroid/os/storage/VolumeInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 724
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 725
    goto/16 :goto_0

    .line 712
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[Landroid/os/storage/VolumeInfo;
    :pswitch_36
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->getDisks()[Landroid/os/storage/DiskInfo;

    move-result-object v0

    .line 713
    .local v0, "_result":[Landroid/os/storage/DiskInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 715
    goto/16 :goto_0

    .line 706
    .end local v0    # "_result":[Landroid/os/storage/DiskInfo;
    :pswitch_37
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->runMaintenance()V

    .line 707
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 708
    goto/16 :goto_0

    .line 699
    :pswitch_38
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->lastMaintenance()J

    move-result-wide v0

    .line 700
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 701
    invoke-virtual {v9, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 702
    goto/16 :goto_0

    .line 689
    .end local v0    # "_result":J
    :pswitch_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 691
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 692
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 693
    invoke-virtual {v6, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->mkdirs(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    goto/16 :goto_0

    .line 675
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 677
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 679
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 680
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 681
    invoke-virtual {v6, v0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->getVolumeList(ILjava/lang/String;I)[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 682
    .local v3, "_result":[Landroid/os/storage/StorageVolume;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    invoke-virtual {v9, v3, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 684
    goto/16 :goto_0

    .line 665
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":[Landroid/os/storage/StorageVolume;
    :pswitch_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 666
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 667
    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 668
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 669
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 670
    goto/16 :goto_0

    .line 655
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 656
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 657
    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->isObbMounted(Ljava/lang/String;)Z

    move-result v1

    .line 658
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 660
    goto/16 :goto_0

    .line 640
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 642
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 644
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    move-result-object v2

    .line 646
    .local v2, "_arg2":Landroid/os/storage/IObbActionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 647
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 648
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/os/storage/IStorageManager$Stub;->unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V

    .line 649
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 650
    goto :goto_0

    .line 623
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Landroid/os/storage/IObbActionListener;
    .end local v3    # "_arg3":I
    :pswitch_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 625
    .restart local v12    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 627
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    move-result-object v14

    .line 629
    .local v14, "_arg2":Landroid/os/storage/IObbActionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 631
    .local v15, "_arg3":I
    sget-object v0, Landroid/content/res/ObbInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/content/res/ObbInfo;

    .line 632
    .local v16, "_arg4":Landroid/content/res/ObbInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 633
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/storage/IStorageManager$Stub;->mountObb(Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;ILandroid/content/res/ObbInfo;)V

    .line 634
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    goto :goto_0

    .line 614
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Landroid/os/storage/IObbActionListener;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Landroid/content/res/ObbInfo;
    :pswitch_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IStorageShutdownObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageShutdownObserver;

    move-result-object v0

    .line 615
    .local v0, "_arg0":Landroid/os/storage/IStorageShutdownObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 616
    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->shutdown(Landroid/os/storage/IStorageShutdownObserver;)V

    .line 617
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    goto :goto_0

    .line 605
    .end local v0    # "_arg0":Landroid/os/storage/IStorageShutdownObserver;
    :pswitch_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IStorageEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageEventListener;

    move-result-object v0

    .line 606
    .local v0, "_arg0":Landroid/os/storage/IStorageEventListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 607
    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->unregisterListener(Landroid/os/storage/IStorageEventListener;)V

    .line 608
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    goto :goto_0

    .line 596
    .end local v0    # "_arg0":Landroid/os/storage/IStorageEventListener;
    :pswitch_41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IStorageEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageEventListener;

    move-result-object v0

    .line 597
    .restart local v0    # "_arg0":Landroid/os/storage/IStorageEventListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 598
    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->registerListener(Landroid/os/storage/IStorageEventListener;)V

    .line 599
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    nop

    .line 1257
    .end local v0    # "_arg0":Landroid/os/storage/IStorageEventListener;
    :goto_0
    return v11

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_41
        :pswitch_40
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3f
        :pswitch_0
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_39
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_38
        :pswitch_37
        :pswitch_0
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_0
        :pswitch_0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_0
        :pswitch_0
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
    .end packed-switch
.end method
