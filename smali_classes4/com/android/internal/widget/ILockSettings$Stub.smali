.class public abstract Lcom/android/internal/widget/ILockSettings$Stub;
.super Landroid/os/Binder;
.source "ILockSettings.java"

# interfaces
.implements Lcom/android/internal/widget/ILockSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ILockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ILockSettings$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.widget.ILockSettings"

.field static final blacklist TRANSACTION_addWeakEscrowToken:I = 0x31

.field static final greylist-max-o TRANSACTION_checkCredential:I = 0x9

.field static final greylist-max-o TRANSACTION_closeSession:I = 0x2b

.field static final greylist-max-o TRANSACTION_generateKey:I = 0x1d

.field static final blacklist TRANSACTION_generateKeyWithMetadata:I = 0x1e

.field static final greylist-max-o TRANSACTION_getBoolean:I = 0x4

.field static final blacklist TRANSACTION_getCredentialType:I = 0xe

.field static final greylist-max-o TRANSACTION_getHashFactor:I = 0xf

.field static final greylist-max-o TRANSACTION_getKey:I = 0x21

.field static final greylist-max-o TRANSACTION_getKeyChainSnapshot:I = 0x1c

.field static final greylist-max-o TRANSACTION_getLong:I = 0x5

.field static final blacklist TRANSACTION_getPassword:I = 0x36

.field static final greylist-max-o TRANSACTION_getRecoverySecretTypes:I = 0x28

.field static final greylist-max-o TRANSACTION_getRecoveryStatus:I = 0x26

.field static final greylist-max-o TRANSACTION_getSeparateProfileChallengeEnabled:I = 0x11

.field static final greylist-max-o TRANSACTION_getString:I = 0x6

.field static final greylist-max-o TRANSACTION_getStrongAuthForUser:I = 0x19

.field static final blacklist TRANSACTION_hasPendingEscrowToken:I = 0x1a

.field static final blacklist TRANSACTION_hasSecureLockScreen:I = 0x2c

.field static final greylist-max-o TRANSACTION_importKey:I = 0x1f

.field static final blacklist TRANSACTION_importKeyWithMetadata:I = 0x20

.field static final greylist-max-o TRANSACTION_initRecoveryServiceWithSigFile:I = 0x1b

.field static final blacklist TRANSACTION_isWeakEscrowTokenActive:I = 0x33

.field static final blacklist TRANSACTION_isWeakEscrowTokenValid:I = 0x34

.field static final greylist-max-o TRANSACTION_recoverKeyChainSnapshot:I = 0x2a

.field static final greylist-max-o TRANSACTION_registerStrongAuthTracker:I = 0x12

.field static final blacklist TRANSACTION_registerWeakEscrowTokenRemovedListener:I = 0x2f

.field static final blacklist TRANSACTION_removeCachedUnifiedChallenge:I = 0x2e

.field static final blacklist TRANSACTION_removeGatekeeperPasswordHandle:I = 0xd

.field static final greylist-max-o TRANSACTION_removeKey:I = 0x22

.field static final blacklist TRANSACTION_removeWeakEscrowToken:I = 0x32

.field static final blacklist TRANSACTION_reportSuccessfulBiometricUnlock:I = 0x15

.field static final greylist-max-o TRANSACTION_requireStrongAuth:I = 0x14

.field static final greylist-max-o TRANSACTION_resetKeyStore:I = 0x8

.field static final blacklist TRANSACTION_sanitizePassword:I = 0x35

.field static final blacklist TRANSACTION_scheduleNonStrongBiometricIdleTimeout:I = 0x16

.field static final greylist-max-o TRANSACTION_setBoolean:I = 0x1

.field static final greylist-max-o TRANSACTION_setLockCredential:I = 0x7

.field static final greylist-max-o TRANSACTION_setLong:I = 0x2

.field static final greylist-max-o TRANSACTION_setRecoverySecretTypes:I = 0x27

.field static final greylist-max-o TRANSACTION_setRecoveryStatus:I = 0x25

.field static final greylist-max-o TRANSACTION_setSeparateProfileChallengeEnabled:I = 0x10

.field static final greylist-max-o TRANSACTION_setServerParams:I = 0x24

.field static final greylist-max-o TRANSACTION_setSnapshotCreatedPendingIntent:I = 0x23

.field static final greylist-max-o TRANSACTION_setString:I = 0x3

.field static final greylist-max-o TRANSACTION_startRecoverySessionWithCertPath:I = 0x29

.field static final greylist-max-o TRANSACTION_systemReady:I = 0x17

.field static final blacklist TRANSACTION_tryUnlockWithCachedUnifiedChallenge:I = 0x2d

.field static final greylist-max-o TRANSACTION_unregisterStrongAuthTracker:I = 0x13

.field static final blacklist TRANSACTION_unregisterWeakEscrowTokenRemovedListener:I = 0x30

.field static final greylist-max-o TRANSACTION_userPresent:I = 0x18

.field static final greylist-max-o TRANSACTION_verifyCredential:I = 0xa

.field static final blacklist TRANSACTION_verifyGatekeeperPasswordHandle:I = 0xc

.field static final greylist-max-o TRANSACTION_verifyTiedProfileChallenge:I = 0xb


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 220
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 221
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 229
    if-nez p0, :cond_0

    .line 230
    const/4 v0, 0x0

    return-object v0

    .line 232
    :cond_0
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 233
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/widget/ILockSettings;

    if-eqz v1, :cond_1

    .line 234
    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/ILockSettings;

    return-object v1

    .line 236
    :cond_1
    new-instance v1, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 245
    packed-switch p0, :pswitch_data_0

    .line 465
    const/4 v0, 0x0

    return-object v0

    .line 461
    :pswitch_0
    const-string v0, "getPassword"

    return-object v0

    .line 457
    :pswitch_1
    const-string/jumbo v0, "sanitizePassword"

    return-object v0

    .line 453
    :pswitch_2
    const-string/jumbo v0, "isWeakEscrowTokenValid"

    return-object v0

    .line 449
    :pswitch_3
    const-string/jumbo v0, "isWeakEscrowTokenActive"

    return-object v0

    .line 445
    :pswitch_4
    const-string/jumbo v0, "removeWeakEscrowToken"

    return-object v0

    .line 441
    :pswitch_5
    const-string v0, "addWeakEscrowToken"

    return-object v0

    .line 437
    :pswitch_6
    const-string/jumbo v0, "unregisterWeakEscrowTokenRemovedListener"

    return-object v0

    .line 433
    :pswitch_7
    const-string/jumbo v0, "registerWeakEscrowTokenRemovedListener"

    return-object v0

    .line 429
    :pswitch_8
    const-string/jumbo v0, "removeCachedUnifiedChallenge"

    return-object v0

    .line 425
    :pswitch_9
    const-string/jumbo v0, "tryUnlockWithCachedUnifiedChallenge"

    return-object v0

    .line 421
    :pswitch_a
    const-string v0, "hasSecureLockScreen"

    return-object v0

    .line 417
    :pswitch_b
    const-string v0, "closeSession"

    return-object v0

    .line 413
    :pswitch_c
    const-string/jumbo v0, "recoverKeyChainSnapshot"

    return-object v0

    .line 409
    :pswitch_d
    const-string/jumbo v0, "startRecoverySessionWithCertPath"

    return-object v0

    .line 405
    :pswitch_e
    const-string v0, "getRecoverySecretTypes"

    return-object v0

    .line 401
    :pswitch_f
    const-string/jumbo v0, "setRecoverySecretTypes"

    return-object v0

    .line 397
    :pswitch_10
    const-string v0, "getRecoveryStatus"

    return-object v0

    .line 393
    :pswitch_11
    const-string/jumbo v0, "setRecoveryStatus"

    return-object v0

    .line 389
    :pswitch_12
    const-string/jumbo v0, "setServerParams"

    return-object v0

    .line 385
    :pswitch_13
    const-string/jumbo v0, "setSnapshotCreatedPendingIntent"

    return-object v0

    .line 381
    :pswitch_14
    const-string/jumbo v0, "removeKey"

    return-object v0

    .line 377
    :pswitch_15
    const-string v0, "getKey"

    return-object v0

    .line 373
    :pswitch_16
    const-string v0, "importKeyWithMetadata"

    return-object v0

    .line 369
    :pswitch_17
    const-string v0, "importKey"

    return-object v0

    .line 365
    :pswitch_18
    const-string v0, "generateKeyWithMetadata"

    return-object v0

    .line 361
    :pswitch_19
    const-string v0, "generateKey"

    return-object v0

    .line 357
    :pswitch_1a
    const-string v0, "getKeyChainSnapshot"

    return-object v0

    .line 353
    :pswitch_1b
    const-string v0, "initRecoveryServiceWithSigFile"

    return-object v0

    .line 349
    :pswitch_1c
    const-string v0, "hasPendingEscrowToken"

    return-object v0

    .line 345
    :pswitch_1d
    const-string v0, "getStrongAuthForUser"

    return-object v0

    .line 341
    :pswitch_1e
    const-string/jumbo v0, "userPresent"

    return-object v0

    .line 337
    :pswitch_1f
    const-string/jumbo v0, "systemReady"

    return-object v0

    .line 333
    :pswitch_20
    const-string/jumbo v0, "scheduleNonStrongBiometricIdleTimeout"

    return-object v0

    .line 329
    :pswitch_21
    const-string/jumbo v0, "reportSuccessfulBiometricUnlock"

    return-object v0

    .line 325
    :pswitch_22
    const-string/jumbo v0, "requireStrongAuth"

    return-object v0

    .line 321
    :pswitch_23
    const-string/jumbo v0, "unregisterStrongAuthTracker"

    return-object v0

    .line 317
    :pswitch_24
    const-string/jumbo v0, "registerStrongAuthTracker"

    return-object v0

    .line 313
    :pswitch_25
    const-string v0, "getSeparateProfileChallengeEnabled"

    return-object v0

    .line 309
    :pswitch_26
    const-string/jumbo v0, "setSeparateProfileChallengeEnabled"

    return-object v0

    .line 305
    :pswitch_27
    const-string v0, "getHashFactor"

    return-object v0

    .line 301
    :pswitch_28
    const-string v0, "getCredentialType"

    return-object v0

    .line 297
    :pswitch_29
    const-string/jumbo v0, "removeGatekeeperPasswordHandle"

    return-object v0

    .line 293
    :pswitch_2a
    const-string/jumbo v0, "verifyGatekeeperPasswordHandle"

    return-object v0

    .line 289
    :pswitch_2b
    const-string/jumbo v0, "verifyTiedProfileChallenge"

    return-object v0

    .line 285
    :pswitch_2c
    const-string/jumbo v0, "verifyCredential"

    return-object v0

    .line 281
    :pswitch_2d
    const-string v0, "checkCredential"

    return-object v0

    .line 277
    :pswitch_2e
    const-string/jumbo v0, "resetKeyStore"

    return-object v0

    .line 273
    :pswitch_2f
    const-string/jumbo v0, "setLockCredential"

    return-object v0

    .line 269
    :pswitch_30
    const-string v0, "getString"

    return-object v0

    .line 265
    :pswitch_31
    const-string v0, "getLong"

    return-object v0

    .line 261
    :pswitch_32
    const-string v0, "getBoolean"

    return-object v0

    .line 257
    :pswitch_33
    const-string/jumbo v0, "setString"

    return-object v0

    .line 253
    :pswitch_34
    const-string/jumbo v0, "setLong"

    return-object v0

    .line 249
    :pswitch_35
    const-string/jumbo v0, "setBoolean"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 240
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 2115
    const/16 v0, 0x35

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 472
    invoke-static {p1}, Lcom/android/internal/widget/ILockSettings$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 476
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "com.android.internal.widget.ILockSettings"

    .line 477
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 478
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 480
    :cond_0
    packed-switch v8, :pswitch_data_0

    .line 488
    packed-switch v8, :pswitch_data_1

    .line 1083
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 484
    :pswitch_0
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 485
    return v12

    .line 1076
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ILockSettings$Stub;->getPassword()Ljava/lang/String;

    move-result-object v0

    .line 1077
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1078
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1079
    goto/16 :goto_0

    .line 1070
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ILockSettings$Stub;->sanitizePassword()V

    .line 1071
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1072
    goto/16 :goto_0

    .line 1057
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 1059
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 1061
    .local v2, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1062
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1063
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/android/internal/widget/ILockSettings$Stub;->isWeakEscrowTokenValid(J[BI)Z

    move-result v4

    .line 1064
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1065
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1066
    goto/16 :goto_0

    .line 1045
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Z
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 1047
    .restart local v0    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1048
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1049
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->isWeakEscrowTokenActive(JI)Z

    move-result v3

    .line 1050
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1051
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1052
    goto/16 :goto_0

    .line 1033
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 1035
    .restart local v0    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1036
    .restart local v2    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1037
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->removeWeakEscrowToken(JI)Z

    move-result v3

    .line 1038
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1039
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1040
    goto/16 :goto_0

    .line 1019
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 1021
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1023
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;

    move-result-object v2

    .line 1024
    .local v2, "_arg2":Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1025
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->addWeakEscrowToken([BILcom/android/internal/widget/IWeakEscrowTokenActivatedListener;)J

    move-result-wide v3

    .line 1026
    .local v3, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1027
    invoke-virtual {v10, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 1028
    goto/16 :goto_0

    .line 1009
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;
    .end local v3    # "_result":J
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;

    move-result-object v0

    .line 1010
    .local v0, "_arg0":Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1011
    invoke-virtual {v7, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->unregisterWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z

    move-result v1

    .line 1012
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1013
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1014
    goto/16 :goto_0

    .line 999
    .end local v0    # "_arg0":Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;
    .end local v1    # "_result":Z
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;

    move-result-object v0

    .line 1000
    .restart local v0    # "_arg0":Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1001
    invoke-virtual {v7, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->registerWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z

    move-result v1

    .line 1002
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1003
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1004
    goto/16 :goto_0

    .line 990
    .end local v0    # "_arg0":Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;
    .end local v1    # "_result":Z
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 991
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 992
    invoke-virtual {v7, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->removeCachedUnifiedChallenge(I)V

    .line 993
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 994
    goto/16 :goto_0

    .line 980
    .end local v0    # "_arg0":I
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 981
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 982
    invoke-virtual {v7, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->tryUnlockWithCachedUnifiedChallenge(I)Z

    move-result v1

    .line 983
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 984
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 985
    goto/16 :goto_0

    .line 972
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ILockSettings$Stub;->hasSecureLockScreen()Z

    move-result v0

    .line 973
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 974
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 975
    goto/16 :goto_0

    .line 964
    .end local v0    # "_result":Z
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 965
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 966
    invoke-virtual {v7, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->closeSession(Ljava/lang/String;)V

    .line 967
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 968
    goto/16 :goto_0

    .line 950
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 952
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 954
    .local v1, "_arg1":[B
    sget-object v2, Landroid/security/keystore/recovery/WrappedApplicationKey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 955
    .local v2, "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/WrappedApplicationKey;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 956
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->recoverKeyChainSnapshot(Ljava/lang/String;[BLjava/util/List;)Ljava/util/Map;

    move-result-object v3

    .line 957
    .local v3, "_result":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 958
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 959
    goto/16 :goto_0

    .line 930
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/WrappedApplicationKey;>;"
    .end local v3    # "_result":Ljava/util/Map;
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 932
    .local v13, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 934
    .local v14, "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/security/keystore/recovery/RecoveryCertPath;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/security/keystore/recovery/RecoveryCertPath;

    .line 936
    .local v15, "_arg2":Landroid/security/keystore/recovery/RecoveryCertPath;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 938
    .local v16, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    .line 940
    .local v17, "_arg4":[B
    sget-object v0, Landroid/security/keystore/recovery/KeyChainProtectionParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v18

    .line 941
    .local v18, "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/KeyChainProtectionParams;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 942
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/ILockSettings$Stub;->startRecoverySessionWithCertPath(Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/recovery/RecoveryCertPath;[B[BLjava/util/List;)[B

    move-result-object v0

    .line 943
    .local v0, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 944
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 945
    goto/16 :goto_0

    .line 922
    .end local v0    # "_result":[B
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":Landroid/security/keystore/recovery/RecoveryCertPath;
    .end local v16    # "_arg3":[B
    .end local v17    # "_arg4":[B
    .end local v18    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/KeyChainProtectionParams;>;"
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ILockSettings$Stub;->getRecoverySecretTypes()[I

    move-result-object v0

    .line 923
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 924
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 925
    goto/16 :goto_0

    .line 914
    .end local v0    # "_result":[I
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 915
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 916
    invoke-virtual {v7, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->setRecoverySecretTypes([I)V

    .line 917
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 918
    goto/16 :goto_0

    .line 906
    .end local v0    # "_arg0":[I
    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ILockSettings$Stub;->getRecoveryStatus()Ljava/util/Map;

    move-result-object v0

    .line 907
    .local v0, "_result":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 908
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 909
    goto/16 :goto_0

    .line 896
    .end local v0    # "_result":Ljava/util/Map;
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 898
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 899
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 900
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setRecoveryStatus(Ljava/lang/String;I)V

    .line 901
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 902
    goto/16 :goto_0

    .line 887
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 888
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 889
    invoke-virtual {v7, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->setServerParams([B)V

    .line 890
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 891
    goto/16 :goto_0

    .line 878
    .end local v0    # "_arg0":[B
    :pswitch_14
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 879
    .local v0, "_arg0":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 880
    invoke-virtual {v7, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->setSnapshotCreatedPendingIntent(Landroid/app/PendingIntent;)V

    .line 881
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 882
    goto/16 :goto_0

    .line 869
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 870
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 871
    invoke-virtual {v7, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->removeKey(Ljava/lang/String;)V

    .line 872
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 873
    goto/16 :goto_0

    .line 859
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 860
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 861
    invoke-virtual {v7, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 862
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 863
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 864
    goto/16 :goto_0

    .line 845
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 847
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 849
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 850
    .local v2, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 851
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->importKeyWithMetadata(Ljava/lang/String;[B[B)Ljava/lang/String;

    move-result-object v3

    .line 852
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 853
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 854
    goto/16 :goto_0

    .line 833
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":[B
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 835
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 836
    .restart local v1    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 837
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->importKey(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v2

    .line 838
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 839
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 840
    goto/16 :goto_0

    .line 821
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 823
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 824
    .restart local v1    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 825
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->generateKeyWithMetadata(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v2

    .line 826
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 827
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 828
    goto/16 :goto_0

    .line 811
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 812
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 813
    invoke-virtual {v7, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->generateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 814
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 815
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 816
    goto/16 :goto_0

    .line 803
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ILockSettings$Stub;->getKeyChainSnapshot()Landroid/security/keystore/recovery/KeyChainSnapshot;

    move-result-object v0

    .line 804
    .local v0, "_result":Landroid/security/keystore/recovery/KeyChainSnapshot;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 805
    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 806
    goto/16 :goto_0

    .line 791
    .end local v0    # "_result":Landroid/security/keystore/recovery/KeyChainSnapshot;
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 793
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 795
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 796
    .local v2, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 797
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->initRecoveryServiceWithSigFile(Ljava/lang/String;[B[B)V

    .line 798
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 799
    goto/16 :goto_0

    .line 781
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":[B
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 782
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 783
    invoke-virtual {v7, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->hasPendingEscrowToken(I)Z

    move-result v1

    .line 784
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 785
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 786
    goto/16 :goto_0

    .line 771
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 772
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 773
    invoke-virtual {v7, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->getStrongAuthForUser(I)I

    move-result v1

    .line 774
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 775
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 776
    goto/16 :goto_0

    .line 762
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 763
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 764
    invoke-virtual {v7, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->userPresent(I)V

    .line 765
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    goto/16 :goto_0

    .line 755
    .end local v0    # "_arg0":I
    :pswitch_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ILockSettings$Stub;->systemReady()V

    .line 756
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 757
    goto/16 :goto_0

    .line 747
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 748
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 749
    invoke-virtual {v7, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->scheduleNonStrongBiometricIdleTimeout(I)V

    .line 750
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 751
    goto/16 :goto_0

    .line 736
    .end local v0    # "_arg0":I
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 738
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 739
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 740
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->reportSuccessfulBiometricUnlock(ZI)V

    .line 741
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 742
    goto/16 :goto_0

    .line 725
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 727
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 728
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 729
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->requireStrongAuth(II)V

    .line 730
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 731
    goto/16 :goto_0

    .line 716
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/trust/IStrongAuthTracker$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/IStrongAuthTracker;

    move-result-object v0

    .line 717
    .local v0, "_arg0":Landroid/app/trust/IStrongAuthTracker;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 718
    invoke-virtual {v7, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    .line 719
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 720
    goto/16 :goto_0

    .line 707
    .end local v0    # "_arg0":Landroid/app/trust/IStrongAuthTracker;
    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/trust/IStrongAuthTracker$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/IStrongAuthTracker;

    move-result-object v0

    .line 708
    .restart local v0    # "_arg0":Landroid/app/trust/IStrongAuthTracker;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 709
    invoke-virtual {v7, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    .line 710
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 711
    goto/16 :goto_0

    .line 697
    .end local v0    # "_arg0":Landroid/app/trust/IStrongAuthTracker;
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 698
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 699
    invoke-virtual {v7, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->getSeparateProfileChallengeEnabled(I)Z

    move-result v1

    .line 700
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 701
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 702
    goto/16 :goto_0

    .line 684
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 686
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 688
    .local v1, "_arg1":Z
    sget-object v2, Lcom/android/internal/widget/LockscreenCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/LockscreenCredential;

    .line 689
    .local v2, "_arg2":Lcom/android/internal/widget/LockscreenCredential;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 690
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->setSeparateProfileChallengeEnabled(IZLcom/android/internal/widget/LockscreenCredential;)V

    .line 691
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    goto/16 :goto_0

    .line 672
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Lcom/android/internal/widget/LockscreenCredential;
    :pswitch_28
    sget-object v0, Lcom/android/internal/widget/LockscreenCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockscreenCredential;

    .line 674
    .local v0, "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 675
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 676
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->getHashFactor(Lcom/android/internal/widget/LockscreenCredential;I)[B

    move-result-object v2

    .line 677
    .local v2, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 678
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 679
    goto/16 :goto_0

    .line 662
    .end local v0    # "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":[B
    :pswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 663
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 664
    invoke-virtual {v7, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->getCredentialType(I)I

    move-result v1

    .line 665
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 667
    goto/16 :goto_0

    .line 653
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 654
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 655
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->removeGatekeeperPasswordHandle(J)V

    .line 656
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 657
    goto/16 :goto_0

    .line 639
    .end local v0    # "_arg0":J
    :pswitch_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 641
    .local v13, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 643
    .local v15, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 644
    .local v6, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 645
    move-object/from16 v0, p0

    move-wide v1, v13

    move-wide v3, v15

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ILockSettings$Stub;->verifyGatekeeperPasswordHandle(JJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 646
    .local v0, "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 647
    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 648
    goto/16 :goto_0

    .line 625
    .end local v0    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v6    # "_arg2":I
    .end local v13    # "_arg0":J
    .end local v15    # "_arg1":J
    :pswitch_2c
    sget-object v0, Lcom/android/internal/widget/LockscreenCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockscreenCredential;

    .line 627
    .local v0, "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 629
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 630
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 631
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->verifyTiedProfileChallenge(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v3

    .line 632
    .local v3, "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    invoke-virtual {v10, v3, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 634
    goto/16 :goto_0

    .line 611
    .end local v0    # "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :pswitch_2d
    sget-object v0, Lcom/android/internal/widget/LockscreenCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockscreenCredential;

    .line 613
    .restart local v0    # "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 615
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 616
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 617
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->verifyCredential(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v3

    .line 618
    .restart local v3    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    invoke-virtual {v10, v3, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 620
    goto/16 :goto_0

    .line 597
    .end local v0    # "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :pswitch_2e
    sget-object v0, Lcom/android/internal/widget/LockscreenCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockscreenCredential;

    .line 599
    .restart local v0    # "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 601
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/ICheckCredentialProgressCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ICheckCredentialProgressCallback;

    move-result-object v2

    .line 602
    .local v2, "_arg2":Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 603
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->checkCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v3

    .line 604
    .restart local v3    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    invoke-virtual {v10, v3, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 606
    goto/16 :goto_0

    .line 588
    .end local v0    # "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    .end local v3    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :pswitch_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 589
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 590
    invoke-virtual {v7, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->resetKeyStore(I)V

    .line 591
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    goto/16 :goto_0

    .line 574
    .end local v0    # "_arg0":I
    :pswitch_30
    sget-object v0, Lcom/android/internal/widget/LockscreenCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockscreenCredential;

    .line 576
    .local v0, "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    sget-object v1, Lcom/android/internal/widget/LockscreenCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/LockscreenCredential;

    .line 578
    .local v1, "_arg1":Lcom/android/internal/widget/LockscreenCredential;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 579
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 580
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z

    move-result v3

    .line 581
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 582
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 583
    goto/16 :goto_0

    .line 560
    .end local v0    # "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    .end local v1    # "_arg1":Lcom/android/internal/widget/LockscreenCredential;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 562
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 564
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 565
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 566
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 567
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 568
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 569
    goto/16 :goto_0

    .line 546
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 548
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 550
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 551
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 552
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/android/internal/widget/ILockSettings$Stub;->getLong(Ljava/lang/String;JI)J

    move-result-wide v4

    .line 553
    .local v4, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 554
    invoke-virtual {v10, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 555
    goto :goto_0

    .line 532
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":I
    .end local v4    # "_result":J
    :pswitch_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 534
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 536
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 537
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 538
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v3

    .line 539
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 541
    goto :goto_0

    .line 519
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 521
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 523
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 524
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 525
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 526
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    goto :goto_0

    .line 506
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 508
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 510
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 511
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 512
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/android/internal/widget/ILockSettings$Stub;->setLong(Ljava/lang/String;JI)V

    .line 513
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    goto :goto_0

    .line 493
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":I
    :pswitch_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 495
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 497
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 498
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 499
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->setBoolean(Ljava/lang/String;ZI)V

    .line 500
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    nop

    .line 1086
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":I
    :goto_0
    return v12

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
