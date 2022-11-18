.class public abstract Landroid/os/IVold$Stub;
.super Landroid/os/Binder;
.source "IVold.java"

# interfaces
.implements Landroid/os/IVold;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IVold;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IVold$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.IVold"

.field static final blacklist TRANSACTION_abortChanges:I = 0x43

.field static final blacklist TRANSACTION_abortFuse:I = 0x2

.field static final greylist-max-o TRANSACTION_abortIdleMaint:I = 0x24

.field static final blacklist TRANSACTION_addAppIds:I = 0xa

.field static final blacklist TRANSACTION_addSandboxIds:I = 0xb

.field static final greylist-max-o TRANSACTION_addUserKeyAuth:I = 0x35

.field static final greylist-max-o TRANSACTION_benchmark:I = 0x12

.field static final blacklist TRANSACTION_bindMount:I = 0x55

.field static final blacklist TRANSACTION_checkBeforeMount:I = 0x13

.field static final blacklist TRANSACTION_clearCache:I = 0x2d

.field static final blacklist TRANSACTION_clearUserKeyAuth:I = 0x36

.field static final blacklist TRANSACTION_commitChanges:I = 0x44

.field static final greylist-max-o TRANSACTION_createObb:I = 0x20

.field static final blacklist TRANSACTION_createStubVolume:I = 0x4e

.field static final greylist-max-o TRANSACTION_createUserKey:I = 0x33

.field static final blacklist TRANSACTION_destroyDsuMetadataKey:I = 0x5c

.field static final greylist-max-o TRANSACTION_destroyObb:I = 0x21

.field static final blacklist TRANSACTION_destroySandboxForApp:I = 0x3e

.field static final blacklist TRANSACTION_destroyStubVolume:I = 0x4f

.field static final greylist-max-o TRANSACTION_destroyUserKey:I = 0x34

.field static final greylist-max-o TRANSACTION_destroyUserStorage:I = 0x3c

.field static final blacklist TRANSACTION_earlyBootEnded:I = 0x4d

.field static final greylist-max-o TRANSACTION_encryptFstab:I = 0x31

.field static final blacklist TRANSACTION_ensureAppDirsCreated:I = 0x1f

.field static final blacklist TRANSACTION_exportSensitiveBePublicKey:I = 0x18

.field static final blacklist TRANSACTION_exportSensitiveKey:I = 0x17

.field static final greylist-max-o TRANSACTION_fbeEnable:I = 0x2e

.field static final greylist-max-o TRANSACTION_fixateNewestUserKeyAuth:I = 0x37

.field static final blacklist TRANSACTION_fixupAppDir:I = 0x1e

.field static final greylist-max-o TRANSACTION_forgetPartition:I = 0xe

.field static final greylist-max-o TRANSACTION_format:I = 0x11

.field static final greylist-max-o TRANSACTION_fstrim:I = 0x22

.field static final blacklist TRANSACTION_fsyncCtrl:I = 0x14

.field static final blacklist TRANSACTION_getStorageLifeTime:I = 0x25

.field static final blacklist TRANSACTION_getUnlockedUsers:I = 0x38

.field static final blacklist TRANSACTION_getWriteAmount:I = 0x28

.field static final blacklist TRANSACTION_incFsEnabled:I = 0x51

.field static final greylist-max-o TRANSACTION_initUser0:I = 0x2f

.field static final blacklist TRANSACTION_isCheckpointing:I = 0x42

.field static final greylist-max-o TRANSACTION_lockUserKey:I = 0x3a

.field static final blacklist TRANSACTION_markBootAttempt:I = 0x48

.field static final greylist-max-o TRANSACTION_monitor:I = 0x3

.field static final greylist-max-o TRANSACTION_mount:I = 0xf

.field static final greylist-max-o TRANSACTION_mountAppFuse:I = 0x29

.field static final greylist-max-o TRANSACTION_mountFstab:I = 0x30

.field static final blacklist TRANSACTION_mountIncFs:I = 0x52

.field static final greylist-max-o TRANSACTION_moveStorage:I = 0x19

.field static final blacklist TRANSACTION_needsCheckpoint:I = 0x40

.field static final blacklist TRANSACTION_needsRollback:I = 0x41

.field static final greylist-max-o TRANSACTION_onSecureKeyguardStateChanged:I = 0xc

.field static final blacklist TRANSACTION_onSecureKeyguardStateChangedForSensitiveFile:I = 0x16

.field static final greylist-max-o TRANSACTION_onUserAdded:I = 0x6

.field static final greylist-max-o TRANSACTION_onUserRemoved:I = 0x7

.field static final greylist-max-o TRANSACTION_onUserStarted:I = 0x8

.field static final greylist-max-o TRANSACTION_onUserStopped:I = 0x9

.field static final blacklist TRANSACTION_openAppFuseFile:I = 0x50

.field static final greylist-max-o TRANSACTION_partition:I = 0xd

.field static final blacklist TRANSACTION_prepareCheckpoint:I = 0x45

.field static final blacklist TRANSACTION_prepareSandboxForApp:I = 0x3d

.field static final greylist-max-o TRANSACTION_prepareUserStorage:I = 0x3b

.field static final blacklist TRANSACTION_refreshLatestWrite:I = 0x27

.field static final blacklist TRANSACTION_remountAppStorageDirs:I = 0x1b

.field static final greylist-max-o TRANSACTION_remountUid:I = 0x1a

.field static final greylist-max-o TRANSACTION_reset:I = 0x4

.field static final blacklist TRANSACTION_resetCheckpoint:I = 0x4c

.field static final blacklist TRANSACTION_restoreCheckpoint:I = 0x46

.field static final blacklist TRANSACTION_restoreCheckpointPart:I = 0x47

.field static final greylist-max-o TRANSACTION_runIdleMaint:I = 0x23

.field static final blacklist TRANSACTION_sdlockClearPassword:I = 0x57

.field static final blacklist TRANSACTION_sdlockErase:I = 0x5b

.field static final blacklist TRANSACTION_sdlockGetCid:I = 0x59

.field static final blacklist TRANSACTION_sdlockPoll:I = 0x5a

.field static final blacklist TRANSACTION_sdlockSetPassword:I = 0x56

.field static final blacklist TRANSACTION_sdlockUnlock:I = 0x58

.field static final blacklist TRANSACTION_setGCUrgentPace:I = 0x26

.field static final blacklist TRANSACTION_setIncFsMountOptions:I = 0x54

.field static final greylist-max-o TRANSACTION_setListener:I = 0x1

.field static final blacklist TRANSACTION_setStorageBindingSeed:I = 0x32

.field static final blacklist TRANSACTION_setupAppDir:I = 0x1d

.field static final greylist-max-o TRANSACTION_shutdown:I = 0x5

.field static final blacklist TRANSACTION_startCheckpoint:I = 0x3f

.field static final blacklist TRANSACTION_startserviceAppFuse:I = 0x2b

.field static final blacklist TRANSACTION_stopserviceAppFuse:I = 0x2c

.field static final blacklist TRANSACTION_supportsBlockCheckpoint:I = 0x4a

.field static final blacklist TRANSACTION_supportsCheckpoint:I = 0x49

.field static final blacklist TRANSACTION_supportsFileCheckpoint:I = 0x4b

.field static final blacklist TRANSACTION_unlockSensitiveKey:I = 0x15

.field static final greylist-max-o TRANSACTION_unlockUserKey:I = 0x39

.field static final greylist-max-o TRANSACTION_unmount:I = 0x10

.field static final greylist-max-o TRANSACTION_unmountAppFuse:I = 0x2a

.field static final blacklist TRANSACTION_unmountAppStorageDirs:I = 0x1c

.field static final blacklist TRANSACTION_unmountIncFs:I = 0x53


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 332
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 333
    const-string v0, "android.os.IVold"

    invoke-virtual {p0, p0, v0}, Landroid/os/IVold$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/os/IVold;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 341
    if-nez p0, :cond_0

    .line 342
    const/4 v0, 0x0

    return-object v0

    .line 344
    :cond_0
    const-string v0, "android.os.IVold"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 345
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IVold;

    if-eqz v1, :cond_1

    .line 346
    move-object v1, v0

    check-cast v1, Landroid/os/IVold;

    return-object v1

    .line 348
    :cond_1
    new-instance v1, Landroid/os/IVold$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IVold$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 357
    packed-switch p0, :pswitch_data_0

    .line 729
    const/4 v0, 0x0

    return-object v0

    .line 725
    :pswitch_0
    const-string v0, "destroyDsuMetadataKey"

    return-object v0

    .line 721
    :pswitch_1
    const-string/jumbo v0, "sdlockErase"

    return-object v0

    .line 717
    :pswitch_2
    const-string/jumbo v0, "sdlockPoll"

    return-object v0

    .line 713
    :pswitch_3
    const-string/jumbo v0, "sdlockGetCid"

    return-object v0

    .line 709
    :pswitch_4
    const-string/jumbo v0, "sdlockUnlock"

    return-object v0

    .line 705
    :pswitch_5
    const-string/jumbo v0, "sdlockClearPassword"

    return-object v0

    .line 701
    :pswitch_6
    const-string/jumbo v0, "sdlockSetPassword"

    return-object v0

    .line 697
    :pswitch_7
    const-string v0, "bindMount"

    return-object v0

    .line 693
    :pswitch_8
    const-string/jumbo v0, "setIncFsMountOptions"

    return-object v0

    .line 689
    :pswitch_9
    const-string/jumbo v0, "unmountIncFs"

    return-object v0

    .line 685
    :pswitch_a
    const-string/jumbo v0, "mountIncFs"

    return-object v0

    .line 681
    :pswitch_b
    const-string/jumbo v0, "incFsEnabled"

    return-object v0

    .line 677
    :pswitch_c
    const-string/jumbo v0, "openAppFuseFile"

    return-object v0

    .line 673
    :pswitch_d
    const-string v0, "destroyStubVolume"

    return-object v0

    .line 669
    :pswitch_e
    const-string v0, "createStubVolume"

    return-object v0

    .line 665
    :pswitch_f
    const-string v0, "earlyBootEnded"

    return-object v0

    .line 661
    :pswitch_10
    const-string/jumbo v0, "resetCheckpoint"

    return-object v0

    .line 657
    :pswitch_11
    const-string/jumbo v0, "supportsFileCheckpoint"

    return-object v0

    .line 653
    :pswitch_12
    const-string/jumbo v0, "supportsBlockCheckpoint"

    return-object v0

    .line 649
    :pswitch_13
    const-string/jumbo v0, "supportsCheckpoint"

    return-object v0

    .line 645
    :pswitch_14
    const-string/jumbo v0, "markBootAttempt"

    return-object v0

    .line 641
    :pswitch_15
    const-string/jumbo v0, "restoreCheckpointPart"

    return-object v0

    .line 637
    :pswitch_16
    const-string/jumbo v0, "restoreCheckpoint"

    return-object v0

    .line 633
    :pswitch_17
    const-string/jumbo v0, "prepareCheckpoint"

    return-object v0

    .line 629
    :pswitch_18
    const-string v0, "commitChanges"

    return-object v0

    .line 625
    :pswitch_19
    const-string v0, "abortChanges"

    return-object v0

    .line 621
    :pswitch_1a
    const-string/jumbo v0, "isCheckpointing"

    return-object v0

    .line 617
    :pswitch_1b
    const-string/jumbo v0, "needsRollback"

    return-object v0

    .line 613
    :pswitch_1c
    const-string/jumbo v0, "needsCheckpoint"

    return-object v0

    .line 609
    :pswitch_1d
    const-string/jumbo v0, "startCheckpoint"

    return-object v0

    .line 605
    :pswitch_1e
    const-string v0, "destroySandboxForApp"

    return-object v0

    .line 601
    :pswitch_1f
    const-string/jumbo v0, "prepareSandboxForApp"

    return-object v0

    .line 597
    :pswitch_20
    const-string v0, "destroyUserStorage"

    return-object v0

    .line 593
    :pswitch_21
    const-string/jumbo v0, "prepareUserStorage"

    return-object v0

    .line 589
    :pswitch_22
    const-string/jumbo v0, "lockUserKey"

    return-object v0

    .line 585
    :pswitch_23
    const-string/jumbo v0, "unlockUserKey"

    return-object v0

    .line 581
    :pswitch_24
    const-string/jumbo v0, "getUnlockedUsers"

    return-object v0

    .line 577
    :pswitch_25
    const-string v0, "fixateNewestUserKeyAuth"

    return-object v0

    .line 573
    :pswitch_26
    const-string v0, "clearUserKeyAuth"

    return-object v0

    .line 569
    :pswitch_27
    const-string v0, "addUserKeyAuth"

    return-object v0

    .line 565
    :pswitch_28
    const-string v0, "destroyUserKey"

    return-object v0

    .line 561
    :pswitch_29
    const-string v0, "createUserKey"

    return-object v0

    .line 557
    :pswitch_2a
    const-string/jumbo v0, "setStorageBindingSeed"

    return-object v0

    .line 553
    :pswitch_2b
    const-string v0, "encryptFstab"

    return-object v0

    .line 549
    :pswitch_2c
    const-string/jumbo v0, "mountFstab"

    return-object v0

    .line 545
    :pswitch_2d
    const-string/jumbo v0, "initUser0"

    return-object v0

    .line 541
    :pswitch_2e
    const-string v0, "fbeEnable"

    return-object v0

    .line 537
    :pswitch_2f
    const-string v0, "clearCache"

    return-object v0

    .line 533
    :pswitch_30
    const-string/jumbo v0, "stopserviceAppFuse"

    return-object v0

    .line 529
    :pswitch_31
    const-string/jumbo v0, "startserviceAppFuse"

    return-object v0

    .line 525
    :pswitch_32
    const-string/jumbo v0, "unmountAppFuse"

    return-object v0

    .line 521
    :pswitch_33
    const-string/jumbo v0, "mountAppFuse"

    return-object v0

    .line 517
    :pswitch_34
    const-string/jumbo v0, "getWriteAmount"

    return-object v0

    .line 513
    :pswitch_35
    const-string/jumbo v0, "refreshLatestWrite"

    return-object v0

    .line 509
    :pswitch_36
    const-string/jumbo v0, "setGCUrgentPace"

    return-object v0

    .line 505
    :pswitch_37
    const-string v0, "getStorageLifeTime"

    return-object v0

    .line 501
    :pswitch_38
    const-string v0, "abortIdleMaint"

    return-object v0

    .line 497
    :pswitch_39
    const-string/jumbo v0, "runIdleMaint"

    return-object v0

    .line 493
    :pswitch_3a
    const-string v0, "fstrim"

    return-object v0

    .line 489
    :pswitch_3b
    const-string v0, "destroyObb"

    return-object v0

    .line 485
    :pswitch_3c
    const-string v0, "createObb"

    return-object v0

    .line 481
    :pswitch_3d
    const-string v0, "ensureAppDirsCreated"

    return-object v0

    .line 477
    :pswitch_3e
    const-string v0, "fixupAppDir"

    return-object v0

    .line 473
    :pswitch_3f
    const-string/jumbo v0, "setupAppDir"

    return-object v0

    .line 469
    :pswitch_40
    const-string/jumbo v0, "unmountAppStorageDirs"

    return-object v0

    .line 465
    :pswitch_41
    const-string/jumbo v0, "remountAppStorageDirs"

    return-object v0

    .line 461
    :pswitch_42
    const-string/jumbo v0, "remountUid"

    return-object v0

    .line 457
    :pswitch_43
    const-string/jumbo v0, "moveStorage"

    return-object v0

    .line 453
    :pswitch_44
    const-string v0, "exportSensitiveBePublicKey"

    return-object v0

    .line 449
    :pswitch_45
    const-string v0, "exportSensitiveKey"

    return-object v0

    .line 445
    :pswitch_46
    const-string/jumbo v0, "onSecureKeyguardStateChangedForSensitiveFile"

    return-object v0

    .line 441
    :pswitch_47
    const-string/jumbo v0, "unlockSensitiveKey"

    return-object v0

    .line 437
    :pswitch_48
    const-string v0, "fsyncCtrl"

    return-object v0

    .line 433
    :pswitch_49
    const-string v0, "checkBeforeMount"

    return-object v0

    .line 429
    :pswitch_4a
    const-string v0, "benchmark"

    return-object v0

    .line 425
    :pswitch_4b
    const-string v0, "format"

    return-object v0

    .line 421
    :pswitch_4c
    const-string/jumbo v0, "unmount"

    return-object v0

    .line 417
    :pswitch_4d
    const-string/jumbo v0, "mount"

    return-object v0

    .line 413
    :pswitch_4e
    const-string v0, "forgetPartition"

    return-object v0

    .line 409
    :pswitch_4f
    const-string/jumbo v0, "partition"

    return-object v0

    .line 405
    :pswitch_50
    const-string/jumbo v0, "onSecureKeyguardStateChanged"

    return-object v0

    .line 401
    :pswitch_51
    const-string v0, "addSandboxIds"

    return-object v0

    .line 397
    :pswitch_52
    const-string v0, "addAppIds"

    return-object v0

    .line 393
    :pswitch_53
    const-string/jumbo v0, "onUserStopped"

    return-object v0

    .line 389
    :pswitch_54
    const-string/jumbo v0, "onUserStarted"

    return-object v0

    .line 385
    :pswitch_55
    const-string/jumbo v0, "onUserRemoved"

    return-object v0

    .line 381
    :pswitch_56
    const-string/jumbo v0, "onUserAdded"

    return-object v0

    .line 377
    :pswitch_57
    const-string/jumbo v0, "shutdown"

    return-object v0

    .line 373
    :pswitch_58
    const-string/jumbo v0, "reset"

    return-object v0

    .line 369
    :pswitch_59
    const-string/jumbo v0, "monitor"

    return-object v0

    .line 365
    :pswitch_5a
    const-string v0, "abortFuse"

    return-object v0

    .line 361
    :pswitch_5b
    const-string/jumbo v0, "setListener"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
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

    .line 352
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 3308
    const/16 v0, 0x5b

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 736
    invoke-static {p1}, Landroid/os/IVold$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 740
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "android.os.IVold"

    .line 741
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 742
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 744
    :cond_0
    packed-switch v8, :pswitch_data_0

    .line 752
    packed-switch v8, :pswitch_data_1

    .line 1681
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 748
    :pswitch_0
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 749
    return v12

    .line 1673
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1674
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1675
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->destroyDsuMetadataKey(Ljava/lang/String;)V

    .line 1676
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1677
    goto/16 :goto_0

    .line 1666
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->sdlockErase()V

    .line 1667
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1668
    goto/16 :goto_0

    .line 1659
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->sdlockPoll()Ljava/lang/String;

    move-result-object v0

    .line 1660
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1661
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1662
    goto/16 :goto_0

    .line 1652
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->sdlockGetCid()Ljava/lang/String;

    move-result-object v0

    .line 1653
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1654
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1655
    goto/16 :goto_0

    .line 1644
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1645
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1646
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->sdlockUnlock(Ljava/lang/String;)V

    .line 1647
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1648
    goto/16 :goto_0

    .line 1635
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1636
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1637
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->sdlockClearPassword(Ljava/lang/String;)V

    .line 1638
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1639
    goto/16 :goto_0

    .line 1626
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1627
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1628
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->sdlockSetPassword(Ljava/lang/String;)V

    .line 1629
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1630
    goto/16 :goto_0

    .line 1615
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1617
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1618
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1619
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->bindMount(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1621
    goto/16 :goto_0

    .line 1600
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_9
    sget-object v0, Landroid/os/incremental/IncrementalFileSystemControlParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/incremental/IncrementalFileSystemControlParcel;

    .line 1602
    .local v0, "_arg0":Landroid/os/incremental/IncrementalFileSystemControlParcel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1604
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1606
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1607
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1608
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/os/IVold$Stub;->setIncFsMountOptions(Landroid/os/incremental/IncrementalFileSystemControlParcel;ZZLjava/lang/String;)V

    .line 1609
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1610
    goto/16 :goto_0

    .line 1591
    .end local v0    # "_arg0":Landroid/os/incremental/IncrementalFileSystemControlParcel;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1592
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1593
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->unmountIncFs(Ljava/lang/String;)V

    .line 1594
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1595
    goto/16 :goto_0

    .line 1575
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1577
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1579
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1581
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1582
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1583
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/os/IVold$Stub;->mountIncFs(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/os/incremental/IncrementalFileSystemControlParcel;

    move-result-object v4

    .line 1584
    .local v4, "_result":Landroid/os/incremental/IncrementalFileSystemControlParcel;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1585
    invoke-virtual {v10, v4, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1586
    goto/16 :goto_0

    .line 1567
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":Landroid/os/incremental/IncrementalFileSystemControlParcel;
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->incFsEnabled()Z

    move-result v0

    .line 1568
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1569
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1570
    goto/16 :goto_0

    .line 1552
    .end local v0    # "_result":Z
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1554
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1556
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1558
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1559
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1560
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/os/IVold$Stub;->openAppFuseFile(IIII)Ljava/io/FileDescriptor;

    move-result-object v4

    .line 1561
    .local v4, "_result":Ljava/io/FileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1562
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeRawFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1563
    goto/16 :goto_0

    .line 1543
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Ljava/io/FileDescriptor;
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1544
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1545
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->destroyStubVolume(Ljava/lang/String;)V

    .line 1546
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1547
    goto/16 :goto_0

    .line 1523
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1525
    .local v13, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1527
    .local v14, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1529
    .local v15, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1531
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1533
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1534
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1535
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/os/IVold$Stub;->createStubVolume(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1536
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1537
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1538
    goto/16 :goto_0

    .line 1516
    .end local v0    # "_result":Ljava/lang/String;
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":I
    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->earlyBootEnded()V

    .line 1517
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1518
    goto/16 :goto_0

    .line 1510
    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->resetCheckpoint()V

    .line 1511
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1512
    goto/16 :goto_0

    .line 1503
    :pswitch_12
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->supportsFileCheckpoint()Z

    move-result v0

    .line 1504
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1505
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1506
    goto/16 :goto_0

    .line 1496
    .end local v0    # "_result":Z
    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->supportsBlockCheckpoint()Z

    move-result v0

    .line 1497
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1498
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1499
    goto/16 :goto_0

    .line 1489
    .end local v0    # "_result":Z
    :pswitch_14
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->supportsCheckpoint()Z

    move-result v0

    .line 1490
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1491
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1492
    goto/16 :goto_0

    .line 1483
    .end local v0    # "_result":Z
    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->markBootAttempt()V

    .line 1484
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1485
    goto/16 :goto_0

    .line 1473
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1475
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1476
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1477
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->restoreCheckpointPart(Ljava/lang/String;I)V

    .line 1478
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1479
    goto/16 :goto_0

    .line 1464
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1465
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1466
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->restoreCheckpoint(Ljava/lang/String;)V

    .line 1467
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1468
    goto/16 :goto_0

    .line 1457
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_18
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->prepareCheckpoint()V

    .line 1458
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1459
    goto/16 :goto_0

    .line 1451
    :pswitch_19
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->commitChanges()V

    .line 1452
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1453
    goto/16 :goto_0

    .line 1441
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1443
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1444
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1445
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->abortChanges(Ljava/lang/String;Z)V

    .line 1446
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1447
    goto/16 :goto_0

    .line 1433
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :pswitch_1b
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->isCheckpointing()Z

    move-result v0

    .line 1434
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1435
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1436
    goto/16 :goto_0

    .line 1426
    .end local v0    # "_result":Z
    :pswitch_1c
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->needsRollback()Z

    move-result v0

    .line 1427
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1428
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1429
    goto/16 :goto_0

    .line 1419
    .end local v0    # "_result":Z
    :pswitch_1d
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->needsCheckpoint()Z

    move-result v0

    .line 1420
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1421
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1422
    goto/16 :goto_0

    .line 1411
    .end local v0    # "_result":Z
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1412
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1413
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->startCheckpoint(I)V

    .line 1414
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1415
    goto/16 :goto_0

    .line 1398
    .end local v0    # "_arg0":I
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1400
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1402
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1403
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1404
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/IVold$Stub;->destroySandboxForApp(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1405
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1406
    goto/16 :goto_0

    .line 1383
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1385
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1387
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1389
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1390
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1391
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/os/IVold$Stub;->prepareSandboxForApp(Ljava/lang/String;ILjava/lang/String;I)V

    .line 1392
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1393
    goto/16 :goto_0

    .line 1370
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1372
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1374
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1375
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1376
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/IVold$Stub;->destroyUserStorage(Ljava/lang/String;II)V

    .line 1377
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1378
    goto/16 :goto_0

    .line 1355
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1357
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1359
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1361
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1362
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1363
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/os/IVold$Stub;->prepareUserStorage(Ljava/lang/String;III)V

    .line 1364
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1365
    goto/16 :goto_0

    .line 1346
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1347
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1348
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->lockUserKey(I)V

    .line 1349
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1350
    goto/16 :goto_0

    .line 1333
    .end local v0    # "_arg0":I
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1335
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1337
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1338
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1339
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/IVold$Stub;->unlockUserKey(IILjava/lang/String;)V

    .line 1340
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1341
    goto/16 :goto_0

    .line 1325
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_25
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->getUnlockedUsers()[I

    move-result-object v0

    .line 1326
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1327
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1328
    goto/16 :goto_0

    .line 1317
    .end local v0    # "_result":[I
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1318
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1319
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->fixateNewestUserKeyAuth(I)V

    .line 1320
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1321
    goto/16 :goto_0

    .line 1304
    .end local v0    # "_arg0":I
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1306
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1308
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1309
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1310
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/IVold$Stub;->clearUserKeyAuth(IILjava/lang/String;)V

    .line 1311
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1312
    goto/16 :goto_0

    .line 1291
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1293
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1295
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1296
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1297
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/IVold$Stub;->addUserKeyAuth(IILjava/lang/String;)V

    .line 1298
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1299
    goto/16 :goto_0

    .line 1282
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1283
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1284
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->destroyUserKey(I)V

    .line 1285
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1286
    goto/16 :goto_0

    .line 1269
    .end local v0    # "_arg0":I
    :pswitch_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1271
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1273
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1274
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1275
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/IVold$Stub;->createUserKey(IIZ)V

    .line 1276
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1277
    goto/16 :goto_0

    .line 1260
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    :pswitch_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 1261
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1262
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->setStorageBindingSeed([B)V

    .line 1263
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1264
    goto/16 :goto_0

    .line 1245
    .end local v0    # "_arg0":[B
    :pswitch_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1247
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1249
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1251
    .restart local v2    # "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1252
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1253
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/os/IVold$Stub;->encryptFstab(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 1254
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1255
    goto/16 :goto_0

    .line 1234
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1236
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1237
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1238
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->mountFstab(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1240
    goto/16 :goto_0

    .line 1227
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_2e
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->initUser0()V

    .line 1228
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1229
    goto/16 :goto_0

    .line 1221
    :pswitch_2f
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->fbeEnable()V

    .line 1222
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1223
    goto/16 :goto_0

    .line 1212
    :pswitch_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1213
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1214
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->clearCache(I)I

    move-result v1

    .line 1215
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1216
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1217
    goto/16 :goto_0

    .line 1204
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_31
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->stopserviceAppFuse()I

    move-result v0

    .line 1205
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1206
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1207
    goto/16 :goto_0

    .line 1197
    .end local v0    # "_result":I
    :pswitch_32
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->startserviceAppFuse()I

    move-result v0

    .line 1198
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1199
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1200
    goto/16 :goto_0

    .line 1187
    .end local v0    # "_result":I
    :pswitch_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1189
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1190
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1191
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->unmountAppFuse(II)V

    .line 1192
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1193
    goto/16 :goto_0

    .line 1175
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1177
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1178
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1179
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->mountAppFuse(II)Ljava/io/FileDescriptor;

    move-result-object v2

    .line 1180
    .local v2, "_result":Ljava/io/FileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1181
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeRawFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1182
    goto/16 :goto_0

    .line 1167
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/io/FileDescriptor;
    :pswitch_35
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->getWriteAmount()I

    move-result v0

    .line 1168
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1169
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1170
    goto/16 :goto_0

    .line 1161
    .end local v0    # "_result":I
    :pswitch_36
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->refreshLatestWrite()V

    .line 1162
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1163
    goto/16 :goto_0

    .line 1145
    :pswitch_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1147
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1149
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v14

    .line 1151
    .local v14, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v15

    .line 1153
    .local v15, "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1154
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1155
    move-object/from16 v0, p0

    move v1, v6

    move v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/IVold$Stub;->setGCUrgentPace(IIFFI)V

    .line 1156
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1157
    goto/16 :goto_0

    .line 1137
    .end local v6    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":F
    .end local v15    # "_arg3":F
    .end local v16    # "_arg4":I
    :pswitch_38
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->getStorageLifeTime()I

    move-result v0

    .line 1138
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1139
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1140
    goto/16 :goto_0

    .line 1129
    .end local v0    # "_result":I
    :pswitch_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v0

    .line 1130
    .local v0, "_arg0":Landroid/os/IVoldTaskListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1131
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->abortIdleMaint(Landroid/os/IVoldTaskListener;)V

    .line 1132
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1133
    goto/16 :goto_0

    .line 1118
    .end local v0    # "_arg0":Landroid/os/IVoldTaskListener;
    :pswitch_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1120
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v1

    .line 1121
    .local v1, "_arg1":Landroid/os/IVoldTaskListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1122
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->runIdleMaint(ZLandroid/os/IVoldTaskListener;)V

    .line 1123
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1124
    goto/16 :goto_0

    .line 1107
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Landroid/os/IVoldTaskListener;
    :pswitch_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1109
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v1

    .line 1110
    .restart local v1    # "_arg1":Landroid/os/IVoldTaskListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1111
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->fstrim(ILandroid/os/IVoldTaskListener;)V

    .line 1112
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1113
    goto/16 :goto_0

    .line 1098
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/IVoldTaskListener;
    :pswitch_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1099
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1100
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->destroyObb(Ljava/lang/String;)V

    .line 1101
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1102
    goto/16 :goto_0

    .line 1086
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1088
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1089
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1090
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->createObb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1091
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1092
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1093
    goto/16 :goto_0

    .line 1075
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 1077
    .local v0, "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1078
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1079
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->ensureAppDirsCreated([Ljava/lang/String;I)V

    .line 1080
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1081
    goto/16 :goto_0

    .line 1064
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1066
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1067
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1068
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->fixupAppDir(Ljava/lang/String;I)V

    .line 1069
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1070
    goto/16 :goto_0

    .line 1053
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1055
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1056
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1057
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->setupAppDir(Ljava/lang/String;I)V

    .line 1058
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1059
    goto/16 :goto_0

    .line 1040
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1042
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1044
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 1045
    .local v2, "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1046
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/IVold$Stub;->unmountAppStorageDirs(II[Ljava/lang/String;)V

    .line 1047
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1048
    goto/16 :goto_0

    .line 1027
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[Ljava/lang/String;
    :pswitch_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1029
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1031
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 1032
    .restart local v2    # "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1033
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/IVold$Stub;->remountAppStorageDirs(II[Ljava/lang/String;)V

    .line 1034
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1035
    goto/16 :goto_0

    .line 1016
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[Ljava/lang/String;
    :pswitch_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1018
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1019
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1020
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->remountUid(II)V

    .line 1021
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1022
    goto/16 :goto_0

    .line 1003
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1005
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1007
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v2

    .line 1008
    .local v2, "_arg2":Landroid/os/IVoldTaskListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1009
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/IVold$Stub;->moveStorage(Ljava/lang/String;Ljava/lang/String;Landroid/os/IVoldTaskListener;)V

    .line 1010
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1011
    goto/16 :goto_0

    .line 991
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/IVoldTaskListener;
    :pswitch_45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 993
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 994
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 995
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->exportSensitiveBePublicKey(II)[B

    move-result-object v2

    .line 996
    .local v2, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 997
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 998
    goto/16 :goto_0

    .line 977
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":[B
    :pswitch_46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 979
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 981
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 982
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 983
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/IVold$Stub;->exportSensitiveKey(IIZ)[B

    move-result-object v3

    .line 984
    .local v3, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 985
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 986
    goto/16 :goto_0

    .line 964
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    .end local v3    # "_result":[B
    :pswitch_47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 966
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 968
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 969
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 970
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/IVold$Stub;->onSecureKeyguardStateChangedForSensitiveFile(ZII)V

    .line 971
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 972
    goto/16 :goto_0

    .line 947
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 949
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 951
    .restart local v13    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 953
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 955
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 956
    .restart local v16    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 957
    move-object/from16 v0, p0

    move v1, v6

    move v2, v13

    move-object v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/IVold$Stub;->unlockSensitiveKey(IILjava/lang/String;Ljava/lang/String;I)V

    .line 958
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 959
    goto/16 :goto_0

    .line 938
    .end local v6    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":I
    :pswitch_49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 939
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 940
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->fsyncCtrl(Ljava/lang/String;)V

    .line 941
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 942
    goto/16 :goto_0

    .line 929
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 930
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 931
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->checkBeforeMount(Ljava/lang/String;)V

    .line 932
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 933
    goto/16 :goto_0

    .line 918
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 920
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v1

    .line 921
    .local v1, "_arg1":Landroid/os/IVoldTaskListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 922
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V

    .line 923
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 924
    goto/16 :goto_0

    .line 907
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/IVoldTaskListener;
    :pswitch_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 909
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 910
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 911
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->format(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 913
    goto/16 :goto_0

    .line 898
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 899
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 900
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->unmount(Ljava/lang/String;)V

    .line 901
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 902
    goto/16 :goto_0

    .line 883
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 885
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 887
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 889
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IVoldMountCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldMountCallback;

    move-result-object v3

    .line 890
    .local v3, "_arg3":Landroid/os/IVoldMountCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 891
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/os/IVold$Stub;->mount(Ljava/lang/String;IILandroid/os/IVoldMountCallback;)V

    .line 892
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 893
    goto/16 :goto_0

    .line 872
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/os/IVoldMountCallback;
    :pswitch_4f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 874
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 875
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 876
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->forgetPartition(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 878
    goto/16 :goto_0

    .line 859
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 861
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 863
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 864
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 865
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/IVold$Stub;->partition(Ljava/lang/String;II)V

    .line 866
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 867
    goto/16 :goto_0

    .line 850
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 851
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 852
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->onSecureKeyguardStateChanged(Z)V

    .line 853
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 854
    goto/16 :goto_0

    .line 839
    .end local v0    # "_arg0":Z
    :pswitch_52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 841
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 842
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 843
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->addSandboxIds([I[Ljava/lang/String;)V

    .line 844
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 845
    goto/16 :goto_0

    .line 828
    .end local v0    # "_arg0":[I
    .end local v1    # "_arg1":[Ljava/lang/String;
    :pswitch_53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 830
    .local v0, "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 831
    .local v1, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 832
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->addAppIds([Ljava/lang/String;[I)V

    .line 833
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 834
    goto :goto_0

    .line 819
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v1    # "_arg1":[I
    :pswitch_54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 820
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 821
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->onUserStopped(I)V

    .line 822
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 823
    goto :goto_0

    .line 810
    .end local v0    # "_arg0":I
    :pswitch_55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 811
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 812
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->onUserStarted(I)V

    .line 813
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 814
    goto :goto_0

    .line 801
    .end local v0    # "_arg0":I
    :pswitch_56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 802
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 803
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->onUserRemoved(I)V

    .line 804
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 805
    goto :goto_0

    .line 790
    .end local v0    # "_arg0":I
    :pswitch_57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 792
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 793
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 794
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->onUserAdded(II)V

    .line 795
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 796
    goto :goto_0

    .line 783
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_58
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->shutdown()V

    .line 784
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 785
    goto :goto_0

    .line 777
    :pswitch_59
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->reset()V

    .line 778
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 779
    goto :goto_0

    .line 771
    :pswitch_5a
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->monitor()V

    .line 772
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 773
    goto :goto_0

    .line 765
    :pswitch_5b
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->abortFuse()V

    .line 766
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 767
    goto :goto_0

    .line 757
    :pswitch_5c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVoldListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldListener;

    move-result-object v0

    .line 758
    .local v0, "_arg0":Landroid/os/IVoldListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 759
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->setListener(Landroid/os/IVoldListener;)V

    .line 760
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 761
    nop

    .line 1684
    .end local v0    # "_arg0":Landroid/os/IVoldListener;
    :goto_0
    return v12

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
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
