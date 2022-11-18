.class public abstract Landroid/os/IUserManager$Stub;
.super Landroid/os/Binder;
.source "IUserManager.java"

# interfaces
.implements Landroid/os/IUserManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IUserManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IUserManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.IUserManager"

.field static final blacklist TRANSACTION_addUserRestrictionsListener:I = 0x2c

.field static final greylist-max-o TRANSACTION_canAddMoreManagedProfiles:I = 0x19

.field static final blacklist TRANSACTION_canAddMoreProfilesToUser:I = 0x18

.field static final blacklist TRANSACTION_canAddMoreUsersOfType:I = 0x15

.field static final greylist-max-o TRANSACTION_canHaveRestrictedProfile:I = 0x22

.field static final greylist-max-o TRANSACTION_clearSeedAccountData:I = 0x3c

.field static final blacklist TRANSACTION_createProfileForUserEvenWhenDisallowedWithThrow:I = 0x44

.field static final blacklist TRANSACTION_createProfileForUserWithThrow:I = 0x5

.field static final blacklist TRANSACTION_createRestrictedProfileWithThrow:I = 0x6

.field static final blacklist TRANSACTION_createUserWithAttributes:I = 0x37

.field static final blacklist TRANSACTION_createUserWithThrow:I = 0x3

.field static final greylist-max-o TRANSACTION_evictCredentialEncryptionKey:I = 0xa

.field static final blacklist TRANSACTION_findCurrentGuestUser:I = 0x35

.field static final greylist-max-o TRANSACTION_getApplicationRestrictions:I = 0x2f

.field static final greylist-max-o TRANSACTION_getApplicationRestrictionsForUser:I = 0x30

.field static final greylist-max-o TRANSACTION_getCredentialOwnerProfile:I = 0x1

.field static final greylist-max-o TRANSACTION_getDefaultGuestRestrictions:I = 0x32

.field static final blacklist TRANSACTION_getPreInstallableSystemPackages:I = 0x7

.field static final greylist-max-o TRANSACTION_getPrimaryUser:I = 0x10

.field static final greylist-max-o TRANSACTION_getProfileIds:I = 0x13

.field static final greylist-max-o TRANSACTION_getProfileParent:I = 0x1a

.field static final greylist-max-o TRANSACTION_getProfileParentId:I = 0x2

.field static final blacklist TRANSACTION_getProfileType:I = 0x3f

.field static final greylist-max-o TRANSACTION_getProfiles:I = 0x12

.field static final blacklist TRANSACTION_getRemainingCreatableProfileCount:I = 0x17

.field static final blacklist TRANSACTION_getRemainingCreatableUserCount:I = 0x16

.field static final greylist-max-o TRANSACTION_getSeedAccountName:I = 0x39

.field static final greylist-max-o TRANSACTION_getSeedAccountOptions:I = 0x3b

.field static final greylist-max-o TRANSACTION_getSeedAccountType:I = 0x3a

.field static final greylist-max-o TRANSACTION_getUserAccount:I = 0x1e

.field static final blacklist TRANSACTION_getUserBadgeColorResId:I = 0x4a

.field static final blacklist TRANSACTION_getUserBadgeDarkColorResId:I = 0x4b

.field static final blacklist TRANSACTION_getUserBadgeLabelResId:I = 0x49

.field static final blacklist TRANSACTION_getUserBadgeNoBackgroundResId:I = 0x48

.field static final blacklist TRANSACTION_getUserBadgeResId:I = 0x47

.field static final greylist-max-o TRANSACTION_getUserCreationTime:I = 0x20

.field static final greylist-max-o TRANSACTION_getUserHandle:I = 0x24

.field static final greylist-max-o TRANSACTION_getUserIcon:I = 0xf

.field static final blacklist TRANSACTION_getUserIconBadgeResId:I = 0x46

.field static final greylist-max-o TRANSACTION_getUserInfo:I = 0x1d

.field static final blacklist TRANSACTION_getUserName:I = 0x53

.field static final greylist-max-o TRANSACTION_getUserRestrictionSource:I = 0x25

.field static final greylist-max-o TRANSACTION_getUserRestrictionSources:I = 0x26

.field static final greylist-max-o TRANSACTION_getUserRestrictions:I = 0x27

.field static final greylist-max-o TRANSACTION_getUserSerialNumber:I = 0x23

.field static final greylist-max-o TRANSACTION_getUserStartRealtime:I = 0x54

.field static final greylist-max-o TRANSACTION_getUserUnlockRealtime:I = 0x55

.field static final greylist-max-o TRANSACTION_getUsers:I = 0x11

.field static final blacklist TRANSACTION_hasBadge:I = 0x4c

.field static final greylist-max-o TRANSACTION_hasBaseUserRestriction:I = 0x28

.field static final greylist-max-o TRANSACTION_hasRestrictedProfiles:I = 0x51

.field static final greylist-max-o TRANSACTION_hasUserRestriction:I = 0x29

.field static final greylist-max-o TRANSACTION_hasUserRestrictionOnAnyUser:I = 0x2a

.field static final blacklist TRANSACTION_isCredentialSharableWithParent:I = 0x41

.field static final greylist-max-o TRANSACTION_isDemoUser:I = 0x42

.field static final blacklist TRANSACTION_isMediaSharedWithParent:I = 0x40

.field static final blacklist TRANSACTION_isPreCreated:I = 0x43

.field static final greylist-max-o TRANSACTION_isQuietModeEnabled:I = 0x36

.field static final greylist-max-o TRANSACTION_isRestricted:I = 0x21

.field static final greylist-max-o TRANSACTION_isSameProfileGroup:I = 0x1b

.field static final blacklist TRANSACTION_isSettingRestrictedForUser:I = 0x2b

.field static final blacklist TRANSACTION_isUserForeground:I = 0x4f

.field static final greylist-max-o TRANSACTION_isUserNameSet:I = 0x50

.field static final blacklist TRANSACTION_isUserOfType:I = 0x1c

.field static final greylist-max-o TRANSACTION_isUserRunning:I = 0x4e

.field static final blacklist TRANSACTION_isUserTypeEnabled:I = 0x14

.field static final greylist-max-o TRANSACTION_isUserUnlocked:I = 0x4d

.field static final greylist-max-o TRANSACTION_isUserUnlockingOrUnlocked:I = 0x45

.field static final greylist-max-o TRANSACTION_markGuestForDeletion:I = 0x34

.field static final blacklist TRANSACTION_preCreateUserWithThrow:I = 0x4

.field static final greylist-max-o TRANSACTION_removeUser:I = 0xb

.field static final greylist-max-o TRANSACTION_removeUserEvenWhenDisallowed:I = 0xc

.field static final blacklist TRANSACTION_removeUserWhenPossible:I = 0x33

.field static final greylist-max-o TRANSACTION_requestQuietModeEnabled:I = 0x52

.field static final greylist-max-o TRANSACTION_setApplicationRestrictions:I = 0x2e

.field static final greylist-max-o TRANSACTION_setDefaultGuestRestrictions:I = 0x31

.field static final greylist-max-o TRANSACTION_setSeedAccountData:I = 0x38

.field static final greylist-max-o TRANSACTION_setUserAccount:I = 0x1f

.field static final greylist-max-o TRANSACTION_setUserAdmin:I = 0x9

.field static final greylist-max-o TRANSACTION_setUserEnabled:I = 0x8

.field static final greylist-max-o TRANSACTION_setUserIcon:I = 0xe

.field static final greylist-max-o TRANSACTION_setUserName:I = 0xd

.field static final greylist-max-o TRANSACTION_setUserRestriction:I = 0x2d

.field static final blacklist TRANSACTION_someUserHasAccount:I = 0x3e

.field static final greylist-max-o TRANSACTION_someUserHasSeedAccount:I = 0x3d


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 351
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 352
    const-string v0, "android.os.IUserManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/IUserManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 360
    if-nez p0, :cond_0

    .line 361
    const/4 v0, 0x0

    return-object v0

    .line 363
    :cond_0
    const-string v0, "android.os.IUserManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 364
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IUserManager;

    if-eqz v1, :cond_1

    .line 365
    move-object v1, v0

    check-cast v1, Landroid/os/IUserManager;

    return-object v1

    .line 367
    :cond_1
    new-instance v1, Landroid/os/IUserManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IUserManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 376
    packed-switch p0, :pswitch_data_0

    .line 720
    const/4 v0, 0x0

    return-object v0

    .line 716
    :pswitch_0
    const-string/jumbo v0, "getUserUnlockRealtime"

    return-object v0

    .line 712
    :pswitch_1
    const-string/jumbo v0, "getUserStartRealtime"

    return-object v0

    .line 708
    :pswitch_2
    const-string/jumbo v0, "getUserName"

    return-object v0

    .line 704
    :pswitch_3
    const-string/jumbo v0, "requestQuietModeEnabled"

    return-object v0

    .line 700
    :pswitch_4
    const-string/jumbo v0, "hasRestrictedProfiles"

    return-object v0

    .line 696
    :pswitch_5
    const-string/jumbo v0, "isUserNameSet"

    return-object v0

    .line 692
    :pswitch_6
    const-string/jumbo v0, "isUserForeground"

    return-object v0

    .line 688
    :pswitch_7
    const-string/jumbo v0, "isUserRunning"

    return-object v0

    .line 684
    :pswitch_8
    const-string/jumbo v0, "isUserUnlocked"

    return-object v0

    .line 680
    :pswitch_9
    const-string/jumbo v0, "hasBadge"

    return-object v0

    .line 676
    :pswitch_a
    const-string/jumbo v0, "getUserBadgeDarkColorResId"

    return-object v0

    .line 672
    :pswitch_b
    const-string/jumbo v0, "getUserBadgeColorResId"

    return-object v0

    .line 668
    :pswitch_c
    const-string/jumbo v0, "getUserBadgeLabelResId"

    return-object v0

    .line 664
    :pswitch_d
    const-string/jumbo v0, "getUserBadgeNoBackgroundResId"

    return-object v0

    .line 660
    :pswitch_e
    const-string/jumbo v0, "getUserBadgeResId"

    return-object v0

    .line 656
    :pswitch_f
    const-string/jumbo v0, "getUserIconBadgeResId"

    return-object v0

    .line 652
    :pswitch_10
    const-string/jumbo v0, "isUserUnlockingOrUnlocked"

    return-object v0

    .line 648
    :pswitch_11
    const-string v0, "createProfileForUserEvenWhenDisallowedWithThrow"

    return-object v0

    .line 644
    :pswitch_12
    const-string/jumbo v0, "isPreCreated"

    return-object v0

    .line 640
    :pswitch_13
    const-string/jumbo v0, "isDemoUser"

    return-object v0

    .line 636
    :pswitch_14
    const-string/jumbo v0, "isCredentialSharableWithParent"

    return-object v0

    .line 632
    :pswitch_15
    const-string/jumbo v0, "isMediaSharedWithParent"

    return-object v0

    .line 628
    :pswitch_16
    const-string v0, "getProfileType"

    return-object v0

    .line 624
    :pswitch_17
    const-string/jumbo v0, "someUserHasAccount"

    return-object v0

    .line 620
    :pswitch_18
    const-string/jumbo v0, "someUserHasSeedAccount"

    return-object v0

    .line 616
    :pswitch_19
    const-string v0, "clearSeedAccountData"

    return-object v0

    .line 612
    :pswitch_1a
    const-string v0, "getSeedAccountOptions"

    return-object v0

    .line 608
    :pswitch_1b
    const-string v0, "getSeedAccountType"

    return-object v0

    .line 604
    :pswitch_1c
    const-string v0, "getSeedAccountName"

    return-object v0

    .line 600
    :pswitch_1d
    const-string/jumbo v0, "setSeedAccountData"

    return-object v0

    .line 596
    :pswitch_1e
    const-string v0, "createUserWithAttributes"

    return-object v0

    .line 592
    :pswitch_1f
    const-string/jumbo v0, "isQuietModeEnabled"

    return-object v0

    .line 588
    :pswitch_20
    const-string v0, "findCurrentGuestUser"

    return-object v0

    .line 584
    :pswitch_21
    const-string/jumbo v0, "markGuestForDeletion"

    return-object v0

    .line 580
    :pswitch_22
    const-string/jumbo v0, "removeUserWhenPossible"

    return-object v0

    .line 576
    :pswitch_23
    const-string v0, "getDefaultGuestRestrictions"

    return-object v0

    .line 572
    :pswitch_24
    const-string/jumbo v0, "setDefaultGuestRestrictions"

    return-object v0

    .line 568
    :pswitch_25
    const-string v0, "getApplicationRestrictionsForUser"

    return-object v0

    .line 564
    :pswitch_26
    const-string v0, "getApplicationRestrictions"

    return-object v0

    .line 560
    :pswitch_27
    const-string/jumbo v0, "setApplicationRestrictions"

    return-object v0

    .line 556
    :pswitch_28
    const-string/jumbo v0, "setUserRestriction"

    return-object v0

    .line 552
    :pswitch_29
    const-string v0, "addUserRestrictionsListener"

    return-object v0

    .line 548
    :pswitch_2a
    const-string/jumbo v0, "isSettingRestrictedForUser"

    return-object v0

    .line 544
    :pswitch_2b
    const-string/jumbo v0, "hasUserRestrictionOnAnyUser"

    return-object v0

    .line 540
    :pswitch_2c
    const-string/jumbo v0, "hasUserRestriction"

    return-object v0

    .line 536
    :pswitch_2d
    const-string/jumbo v0, "hasBaseUserRestriction"

    return-object v0

    .line 532
    :pswitch_2e
    const-string/jumbo v0, "getUserRestrictions"

    return-object v0

    .line 528
    :pswitch_2f
    const-string/jumbo v0, "getUserRestrictionSources"

    return-object v0

    .line 524
    :pswitch_30
    const-string/jumbo v0, "getUserRestrictionSource"

    return-object v0

    .line 520
    :pswitch_31
    const-string/jumbo v0, "getUserHandle"

    return-object v0

    .line 516
    :pswitch_32
    const-string/jumbo v0, "getUserSerialNumber"

    return-object v0

    .line 512
    :pswitch_33
    const-string v0, "canHaveRestrictedProfile"

    return-object v0

    .line 508
    :pswitch_34
    const-string/jumbo v0, "isRestricted"

    return-object v0

    .line 504
    :pswitch_35
    const-string/jumbo v0, "getUserCreationTime"

    return-object v0

    .line 500
    :pswitch_36
    const-string/jumbo v0, "setUserAccount"

    return-object v0

    .line 496
    :pswitch_37
    const-string/jumbo v0, "getUserAccount"

    return-object v0

    .line 492
    :pswitch_38
    const-string/jumbo v0, "getUserInfo"

    return-object v0

    .line 488
    :pswitch_39
    const-string/jumbo v0, "isUserOfType"

    return-object v0

    .line 484
    :pswitch_3a
    const-string/jumbo v0, "isSameProfileGroup"

    return-object v0

    .line 480
    :pswitch_3b
    const-string v0, "getProfileParent"

    return-object v0

    .line 476
    :pswitch_3c
    const-string v0, "canAddMoreManagedProfiles"

    return-object v0

    .line 472
    :pswitch_3d
    const-string v0, "canAddMoreProfilesToUser"

    return-object v0

    .line 468
    :pswitch_3e
    const-string v0, "getRemainingCreatableProfileCount"

    return-object v0

    .line 464
    :pswitch_3f
    const-string v0, "getRemainingCreatableUserCount"

    return-object v0

    .line 460
    :pswitch_40
    const-string v0, "canAddMoreUsersOfType"

    return-object v0

    .line 456
    :pswitch_41
    const-string/jumbo v0, "isUserTypeEnabled"

    return-object v0

    .line 452
    :pswitch_42
    const-string v0, "getProfileIds"

    return-object v0

    .line 448
    :pswitch_43
    const-string v0, "getProfiles"

    return-object v0

    .line 444
    :pswitch_44
    const-string/jumbo v0, "getUsers"

    return-object v0

    .line 440
    :pswitch_45
    const-string v0, "getPrimaryUser"

    return-object v0

    .line 436
    :pswitch_46
    const-string/jumbo v0, "getUserIcon"

    return-object v0

    .line 432
    :pswitch_47
    const-string/jumbo v0, "setUserIcon"

    return-object v0

    .line 428
    :pswitch_48
    const-string/jumbo v0, "setUserName"

    return-object v0

    .line 424
    :pswitch_49
    const-string/jumbo v0, "removeUserEvenWhenDisallowed"

    return-object v0

    .line 420
    :pswitch_4a
    const-string/jumbo v0, "removeUser"

    return-object v0

    .line 416
    :pswitch_4b
    const-string v0, "evictCredentialEncryptionKey"

    return-object v0

    .line 412
    :pswitch_4c
    const-string/jumbo v0, "setUserAdmin"

    return-object v0

    .line 408
    :pswitch_4d
    const-string/jumbo v0, "setUserEnabled"

    return-object v0

    .line 404
    :pswitch_4e
    const-string v0, "getPreInstallableSystemPackages"

    return-object v0

    .line 400
    :pswitch_4f
    const-string v0, "createRestrictedProfileWithThrow"

    return-object v0

    .line 396
    :pswitch_50
    const-string v0, "createProfileForUserWithThrow"

    return-object v0

    .line 392
    :pswitch_51
    const-string/jumbo v0, "preCreateUserWithThrow"

    return-object v0

    .line 388
    :pswitch_52
    const-string v0, "createUserWithThrow"

    return-object v0

    .line 384
    :pswitch_53
    const-string v0, "getProfileParentId"

    return-object v0

    .line 380
    :pswitch_54
    const-string v0, "getCredentialOwnerProfile"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 371
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 3326
    const/16 v0, 0x54

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 727
    invoke-static {p1}, Landroid/os/IUserManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 731
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "android.os.IUserManager"

    .line 732
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v9, v13, :cond_0

    const v0, 0xffffff

    if-gt v9, v0, :cond_0

    .line 733
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 735
    :cond_0
    packed-switch v9, :pswitch_data_0

    .line 743
    packed-switch v9, :pswitch_data_1

    .line 1673
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 739
    :pswitch_0
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 740
    return v13

    .line 1666
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/IUserManager$Stub;->getUserUnlockRealtime()J

    move-result-wide v0

    .line 1667
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1668
    invoke-virtual {v11, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1669
    goto/16 :goto_0

    .line 1659
    .end local v0    # "_result":J
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/IUserManager$Stub;->getUserStartRealtime()J

    move-result-wide v0

    .line 1660
    .restart local v0    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1661
    invoke-virtual {v11, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1662
    goto/16 :goto_0

    .line 1652
    .end local v0    # "_result":J
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/IUserManager$Stub;->getUserName()Ljava/lang/String;

    move-result-object v0

    .line 1653
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1654
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1655
    goto/16 :goto_0

    .line 1635
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1637
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 1639
    .local v7, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 1641
    .local v14, "_arg2":I
    sget-object v0, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/content/IntentSender;

    .line 1643
    .local v15, "_arg3":Landroid/content/IntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1644
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1645
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/IUserManager$Stub;->requestQuietModeEnabled(Ljava/lang/String;ZILandroid/content/IntentSender;I)Z

    move-result v0

    .line 1646
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1647
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1648
    goto/16 :goto_0

    .line 1625
    .end local v0    # "_result":Z
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Z
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":Landroid/content/IntentSender;
    .end local v16    # "_arg4":I
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1626
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1627
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->hasRestrictedProfiles(I)Z

    move-result v1

    .line 1628
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1629
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1630
    goto/16 :goto_0

    .line 1615
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1616
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1617
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->isUserNameSet(I)Z

    move-result v1

    .line 1618
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1619
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1620
    goto/16 :goto_0

    .line 1605
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1606
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1607
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->isUserForeground(I)Z

    move-result v1

    .line 1608
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1609
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1610
    goto/16 :goto_0

    .line 1595
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1596
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1597
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->isUserRunning(I)Z

    move-result v1

    .line 1598
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1599
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1600
    goto/16 :goto_0

    .line 1585
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1586
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1587
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->isUserUnlocked(I)Z

    move-result v1

    .line 1588
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1589
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1590
    goto/16 :goto_0

    .line 1575
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1576
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1577
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->hasBadge(I)Z

    move-result v1

    .line 1578
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1579
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1580
    goto/16 :goto_0

    .line 1565
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1566
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1567
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->getUserBadgeDarkColorResId(I)I

    move-result v1

    .line 1568
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1569
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1570
    goto/16 :goto_0

    .line 1555
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1556
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1557
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->getUserBadgeColorResId(I)I

    move-result v1

    .line 1558
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1559
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1560
    goto/16 :goto_0

    .line 1545
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1546
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1547
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->getUserBadgeLabelResId(I)I

    move-result v1

    .line 1548
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1549
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1550
    goto/16 :goto_0

    .line 1535
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1536
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1537
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->getUserBadgeNoBackgroundResId(I)I

    move-result v1

    .line 1538
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1539
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1540
    goto/16 :goto_0

    .line 1525
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1526
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1527
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->getUserBadgeResId(I)I

    move-result v1

    .line 1528
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1529
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1530
    goto/16 :goto_0

    .line 1515
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1516
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1517
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->getUserIconBadgeResId(I)I

    move-result v1

    .line 1518
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1519
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1520
    goto/16 :goto_0

    .line 1505
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1506
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1507
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->isUserUnlockingOrUnlocked(I)Z

    move-result v1

    .line 1508
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1509
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1510
    goto/16 :goto_0

    .line 1487
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1489
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1491
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 1493
    .restart local v14    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1495
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v16

    .line 1496
    .local v16, "_arg4":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1497
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/IUserManager$Stub;->createProfileForUserEvenWhenDisallowedWithThrow(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1498
    .local v0, "_result":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1499
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1500
    goto/16 :goto_0

    .line 1477
    .end local v0    # "_result":Landroid/content/pm/UserInfo;
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":[Ljava/lang/String;
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1478
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1479
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->isPreCreated(I)Z

    move-result v1

    .line 1480
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1481
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1482
    goto/16 :goto_0

    .line 1467
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1468
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1469
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->isDemoUser(I)Z

    move-result v1

    .line 1470
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1471
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1472
    goto/16 :goto_0

    .line 1457
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1458
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1459
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->isCredentialSharableWithParent(I)Z

    move-result v1

    .line 1460
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1461
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1462
    goto/16 :goto_0

    .line 1447
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1448
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1449
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->isMediaSharedWithParent(I)Z

    move-result v1

    .line 1450
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1451
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1452
    goto/16 :goto_0

    .line 1437
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1438
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1439
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->getProfileType(I)Ljava/lang/String;

    move-result-object v1

    .line 1440
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1441
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1442
    goto/16 :goto_0

    .line 1425
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1427
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1428
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1429
    invoke-virtual {v8, v0, v1}, Landroid/os/IUserManager$Stub;->someUserHasAccount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 1430
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1431
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1432
    goto/16 :goto_0

    .line 1413
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1415
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1416
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1417
    invoke-virtual {v8, v0, v1}, Landroid/os/IUserManager$Stub;->someUserHasSeedAccount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 1418
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1419
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1420
    goto/16 :goto_0

    .line 1404
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1405
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1406
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->clearSeedAccountData(I)V

    .line 1407
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1408
    goto/16 :goto_0

    .line 1394
    .end local v0    # "_arg0":I
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1395
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1396
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->getSeedAccountOptions(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 1397
    .local v1, "_result":Landroid/os/PersistableBundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1398
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1399
    goto/16 :goto_0

    .line 1384
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/os/PersistableBundle;
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1385
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1386
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->getSeedAccountType(I)Ljava/lang/String;

    move-result-object v1

    .line 1387
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1388
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1389
    goto/16 :goto_0

    .line 1374
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1375
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1376
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->getSeedAccountName(I)Ljava/lang/String;

    move-result-object v1

    .line 1377
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1378
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1379
    goto/16 :goto_0

    .line 1357
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1359
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1361
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1363
    .local v14, "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/os/PersistableBundle;

    .line 1365
    .local v15, "_arg3":Landroid/os/PersistableBundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 1366
    .local v16, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1367
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/IUserManager$Stub;->setSeedAccountData(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Z)V

    .line 1368
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1369
    goto/16 :goto_0

    .line 1335
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Landroid/os/PersistableBundle;
    .end local v16    # "_arg4":Z
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1337
    .local v14, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1339
    .local v15, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1341
    .local v16, "_arg2":I
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/graphics/Bitmap;

    .line 1343
    .local v17, "_arg3":Landroid/graphics/Bitmap;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1345
    .local v18, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 1347
    .local v19, "_arg5":Ljava/lang/String;
    sget-object v0, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/os/PersistableBundle;

    .line 1348
    .local v20, "_arg6":Landroid/os/PersistableBundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1349
    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v15

    move/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/os/IUserManager$Stub;->createUserWithAttributes(Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)Landroid/os/UserHandle;

    move-result-object v0

    .line 1350
    .local v0, "_result":Landroid/os/UserHandle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1351
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1352
    goto/16 :goto_0

    .line 1325
    .end local v0    # "_result":Landroid/os/UserHandle;
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v15    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":Landroid/graphics/Bitmap;
    .end local v18    # "_arg4":Ljava/lang/String;
    .end local v19    # "_arg5":Ljava/lang/String;
    .end local v20    # "_arg6":Landroid/os/PersistableBundle;
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1326
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1327
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->isQuietModeEnabled(I)Z

    move-result v1

    .line 1328
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1329
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1330
    goto/16 :goto_0

    .line 1317
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_21
    invoke-virtual/range {p0 .. p0}, Landroid/os/IUserManager$Stub;->findCurrentGuestUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1318
    .local v0, "_result":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1319
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1320
    goto/16 :goto_0

    .line 1308
    .end local v0    # "_result":Landroid/content/pm/UserInfo;
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1309
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1310
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->markGuestForDeletion(I)Z

    move-result v1

    .line 1311
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1312
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1313
    goto/16 :goto_0

    .line 1296
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1298
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1299
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1300
    invoke-virtual {v8, v0, v1}, Landroid/os/IUserManager$Stub;->removeUserWhenPossible(IZ)I

    move-result v2

    .line 1301
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1302
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1303
    goto/16 :goto_0

    .line 1288
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":I
    :pswitch_24
    invoke-virtual/range {p0 .. p0}, Landroid/os/IUserManager$Stub;->getDefaultGuestRestrictions()Landroid/os/Bundle;

    move-result-object v0

    .line 1289
    .local v0, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1290
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1291
    goto/16 :goto_0

    .line 1280
    .end local v0    # "_result":Landroid/os/Bundle;
    :pswitch_25
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1281
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1282
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->setDefaultGuestRestrictions(Landroid/os/Bundle;)V

    .line 1283
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1284
    goto/16 :goto_0

    .line 1268
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1270
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1271
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1272
    invoke-virtual {v8, v0, v1}, Landroid/os/IUserManager$Stub;->getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v2

    .line 1273
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1274
    invoke-virtual {v11, v2, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1275
    goto/16 :goto_0

    .line 1258
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1259
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1260
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1261
    .local v1, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1262
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1263
    goto/16 :goto_0

    .line 1245
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Landroid/os/Bundle;
    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1247
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1249
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1250
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1251
    invoke-virtual {v8, v0, v1, v2}, Landroid/os/IUserManager$Stub;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 1252
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1253
    goto/16 :goto_0

    .line 1232
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg2":I
    :pswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1234
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1236
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1237
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1238
    invoke-virtual {v8, v0, v1, v2}, Landroid/os/IUserManager$Stub;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 1239
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1240
    goto/16 :goto_0

    .line 1223
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":I
    :pswitch_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IUserRestrictionsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserRestrictionsListener;

    move-result-object v0

    .line 1224
    .local v0, "_arg0":Landroid/os/IUserRestrictionsListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1225
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->addUserRestrictionsListener(Landroid/os/IUserRestrictionsListener;)V

    .line 1226
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1227
    goto/16 :goto_0

    .line 1207
    .end local v0    # "_arg0":Landroid/os/IUserRestrictionsListener;
    :pswitch_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1209
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1211
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1213
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1214
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1215
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/os/IUserManager$Stub;->isSettingRestrictedForUser(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v4

    .line 1216
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1217
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1218
    goto/16 :goto_0

    .line 1197
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :pswitch_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1198
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1199
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->hasUserRestrictionOnAnyUser(Ljava/lang/String;)Z

    move-result v1

    .line 1200
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1201
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1202
    goto/16 :goto_0

    .line 1185
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1187
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1188
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1189
    invoke-virtual {v8, v0, v1}, Landroid/os/IUserManager$Stub;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v2

    .line 1190
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1191
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1192
    goto/16 :goto_0

    .line 1173
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1175
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1176
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1177
    invoke-virtual {v8, v0, v1}, Landroid/os/IUserManager$Stub;->hasBaseUserRestriction(Ljava/lang/String;I)Z

    move-result v2

    .line 1178
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1179
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1180
    goto/16 :goto_0

    .line 1163
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1164
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1165
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v1

    .line 1166
    .local v1, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1167
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1168
    goto/16 :goto_0

    .line 1151
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/os/Bundle;
    :pswitch_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1153
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1154
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1155
    invoke-virtual {v8, v0, v1}, Landroid/os/IUserManager$Stub;->getUserRestrictionSources(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 1156
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserManager$EnforcingUser;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1157
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1158
    goto/16 :goto_0

    .line 1139
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserManager$EnforcingUser;>;"
    :pswitch_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1141
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1142
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1143
    invoke-virtual {v8, v0, v1}, Landroid/os/IUserManager$Stub;->getUserRestrictionSource(Ljava/lang/String;I)I

    move-result v2

    .line 1144
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1145
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1146
    goto/16 :goto_0

    .line 1129
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1130
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1131
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->getUserHandle(I)I

    move-result v1

    .line 1132
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1133
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1134
    goto/16 :goto_0

    .line 1119
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1120
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1121
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->getUserSerialNumber(I)I

    move-result v1

    .line 1122
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1123
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1124
    goto/16 :goto_0

    .line 1109
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1110
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1111
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->canHaveRestrictedProfile(I)Z

    move-result v1

    .line 1112
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1113
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1114
    goto/16 :goto_0

    .line 1099
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1100
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1101
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->isRestricted(I)Z

    move-result v1

    .line 1102
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1103
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1104
    goto/16 :goto_0

    .line 1089
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1090
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1091
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->getUserCreationTime(I)J

    move-result-wide v1

    .line 1092
    .local v1, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1093
    invoke-virtual {v11, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1094
    goto/16 :goto_0

    .line 1078
    .end local v0    # "_arg0":I
    .end local v1    # "_result":J
    :pswitch_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1080
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1081
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1082
    invoke-virtual {v8, v0, v1}, Landroid/os/IUserManager$Stub;->setUserAccount(ILjava/lang/String;)V

    .line 1083
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1084
    goto/16 :goto_0

    .line 1068
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1069
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1070
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->getUserAccount(I)Ljava/lang/String;

    move-result-object v1

    .line 1071
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1072
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1073
    goto/16 :goto_0

    .line 1058
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1059
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1060
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1061
    .local v1, "_result":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1062
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1063
    goto/16 :goto_0

    .line 1046
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/content/pm/UserInfo;
    :pswitch_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1048
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1049
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1050
    invoke-virtual {v8, v0, v1}, Landroid/os/IUserManager$Stub;->isUserOfType(ILjava/lang/String;)Z

    move-result v2

    .line 1051
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1052
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1053
    goto/16 :goto_0

    .line 1034
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1036
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1037
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1038
    invoke-virtual {v8, v0, v1}, Landroid/os/IUserManager$Stub;->isSameProfileGroup(II)Z

    move-result v2

    .line 1039
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1040
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1041
    goto/16 :goto_0

    .line 1024
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1025
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1026
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1027
    .local v1, "_result":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1028
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1029
    goto/16 :goto_0

    .line 1012
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/content/pm/UserInfo;
    :pswitch_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1014
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1015
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1016
    invoke-virtual {v8, v0, v1}, Landroid/os/IUserManager$Stub;->canAddMoreManagedProfiles(IZ)Z

    move-result v2

    .line 1017
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1018
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1019
    goto/16 :goto_0

    .line 998
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :pswitch_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1000
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1002
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1003
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1004
    invoke-virtual {v8, v0, v1, v2}, Landroid/os/IUserManager$Stub;->canAddMoreProfilesToUser(Ljava/lang/String;IZ)Z

    move-result v3

    .line 1005
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1006
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1007
    goto/16 :goto_0

    .line 986
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    .end local v3    # "_result":Z
    :pswitch_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 988
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 989
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 990
    invoke-virtual {v8, v0, v1}, Landroid/os/IUserManager$Stub;->getRemainingCreatableProfileCount(Ljava/lang/String;I)I

    move-result v2

    .line 991
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 992
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 993
    goto/16 :goto_0

    .line 976
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 977
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 978
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->getRemainingCreatableUserCount(Ljava/lang/String;)I

    move-result v1

    .line 979
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 980
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 981
    goto/16 :goto_0

    .line 966
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 967
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 968
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->canAddMoreUsersOfType(Ljava/lang/String;)Z

    move-result v1

    .line 969
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 970
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 971
    goto/16 :goto_0

    .line 956
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 957
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 958
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->isUserTypeEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 959
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 960
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 961
    goto/16 :goto_0

    .line 944
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 946
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 947
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 948
    invoke-virtual {v8, v0, v1}, Landroid/os/IUserManager$Stub;->getProfileIds(IZ)[I

    move-result-object v2

    .line 949
    .local v2, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 950
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 951
    goto/16 :goto_0

    .line 932
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":[I
    :pswitch_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 934
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 935
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 936
    invoke-virtual {v8, v0, v1}, Landroid/os/IUserManager$Stub;->getProfiles(IZ)Ljava/util/List;

    move-result-object v2

    .line 937
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 938
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 939
    goto/16 :goto_0

    .line 918
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :pswitch_45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 920
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 922
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 923
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 924
    invoke-virtual {v8, v0, v1, v2}, Landroid/os/IUserManager$Stub;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v3

    .line 925
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 926
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 927
    goto/16 :goto_0

    .line 910
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Z
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :pswitch_46
    invoke-virtual/range {p0 .. p0}, Landroid/os/IUserManager$Stub;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 911
    .local v0, "_result":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 912
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 913
    goto/16 :goto_0

    .line 901
    .end local v0    # "_result":Landroid/content/pm/UserInfo;
    :pswitch_47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 902
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 903
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->getUserIcon(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 904
    .local v1, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 905
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 906
    goto/16 :goto_0

    .line 890
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 892
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 893
    .local v1, "_arg1":Landroid/graphics/Bitmap;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 894
    invoke-virtual {v8, v0, v1}, Landroid/os/IUserManager$Stub;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 895
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 896
    goto/16 :goto_0

    .line 879
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/graphics/Bitmap;
    :pswitch_49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 881
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 882
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 883
    invoke-virtual {v8, v0, v1}, Landroid/os/IUserManager$Stub;->setUserName(ILjava/lang/String;)V

    .line 884
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 885
    goto/16 :goto_0

    .line 869
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 870
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 871
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->removeUserEvenWhenDisallowed(I)Z

    move-result v1

    .line 872
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 873
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 874
    goto/16 :goto_0

    .line 859
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 860
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 861
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->removeUser(I)Z

    move-result v1

    .line 862
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 863
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 864
    goto/16 :goto_0

    .line 850
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 851
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 852
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->evictCredentialEncryptionKey(I)V

    .line 853
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 854
    goto/16 :goto_0

    .line 841
    .end local v0    # "_arg0":I
    :pswitch_4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 842
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 843
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->setUserAdmin(I)V

    .line 844
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 845
    goto/16 :goto_0

    .line 832
    .end local v0    # "_arg0":I
    :pswitch_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 833
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 834
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->setUserEnabled(I)V

    .line 835
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 836
    goto/16 :goto_0

    .line 822
    .end local v0    # "_arg0":I
    :pswitch_4f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 823
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 824
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->getPreInstallableSystemPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 825
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 826
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 827
    goto/16 :goto_0

    .line 810
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 812
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 813
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 814
    invoke-virtual {v8, v0, v1}, Landroid/os/IUserManager$Stub;->createRestrictedProfileWithThrow(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 815
    .local v2, "_result":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 816
    invoke-virtual {v11, v2, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 817
    goto/16 :goto_0

    .line 792
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/content/pm/UserInfo;
    :pswitch_51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 794
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 796
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 798
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 800
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v16

    .line 801
    .local v16, "_arg4":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 802
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/IUserManager$Stub;->createProfileForUserWithThrow(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 803
    .local v0, "_result":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 805
    goto :goto_0

    .line 782
    .end local v0    # "_result":Landroid/content/pm/UserInfo;
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":[Ljava/lang/String;
    :pswitch_52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 783
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 784
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->preCreateUserWithThrow(Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 785
    .local v1, "_result":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 786
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 787
    goto :goto_0

    .line 768
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Landroid/content/pm/UserInfo;
    :pswitch_53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 770
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 772
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 773
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 774
    invoke-virtual {v8, v0, v1, v2}, Landroid/os/IUserManager$Stub;->createUserWithThrow(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 775
    .local v3, "_result":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 776
    invoke-virtual {v11, v3, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 777
    goto :goto_0

    .line 758
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Landroid/content/pm/UserInfo;
    :pswitch_54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 759
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 760
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->getProfileParentId(I)I

    move-result v1

    .line 761
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 762
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 763
    goto :goto_0

    .line 748
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 749
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 750
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->getCredentialOwnerProfile(I)I

    move-result v1

    .line 751
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 752
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 753
    nop

    .line 1676
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :goto_0
    return v13

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
