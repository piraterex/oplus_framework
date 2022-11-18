.class public abstract Landroid/os/IInstalld$Stub;
.super Landroid/os/Binder;
.source "IInstalld.java"

# interfaces
.implements Landroid/os/IInstalld;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IInstalld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IInstalld$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.IInstalld"

.field static final blacklist TRANSACTION_cleanupInvalidPackageDirs:I = 0x33

.field static final greylist-max-o TRANSACTION_clearAppData:I = 0x9

.field static final greylist-max-o TRANSACTION_clearAppProfiles:I = 0x1a

.field static final blacklist TRANSACTION_compileLayouts:I = 0x15

.field static final blacklist TRANSACTION_controlDexOptBlocking:I = 0x14

.field static final greylist-max-o TRANSACTION_copySystemProfile:I = 0x19

.field static final greylist-max-o TRANSACTION_createAppData:I = 0x4

.field static final blacklist TRANSACTION_createAppDataBatched:I = 0x5

.field static final greylist-max-o TRANSACTION_createOatDir:I = 0x22

.field static final greylist-max-o TRANSACTION_createProfileSnapshot:I = 0x1d

.field static final greylist-max-o TRANSACTION_createUserData:I = 0x1

.field static final greylist-max-o TRANSACTION_deleteOdex:I = 0x25

.field static final blacklist TRANSACTION_deleteReferenceProfile:I = 0x1c

.field static final greylist-max-o TRANSACTION_destroyAppData:I = 0xa

.field static final blacklist TRANSACTION_destroyAppDataSnapshot:I = 0x2d

.field static final greylist-max-o TRANSACTION_destroyAppProfiles:I = 0x1b

.field static final blacklist TRANSACTION_destroyCeSnapshotsNotSpecified:I = 0x2e

.field static final greylist-max-o TRANSACTION_destroyProfileSnapshot:I = 0x1e

.field static final greylist-max-o TRANSACTION_destroyUserData:I = 0x2

.field static final greylist-max-o TRANSACTION_dexopt:I = 0x13

.field static final greylist-max-o TRANSACTION_dumpProfiles:I = 0x18

.field static final greylist-max-o TRANSACTION_fixupAppData:I = 0xb

.field static final greylist-max-o TRANSACTION_freeCache:I = 0x20

.field static final blacklist TRANSACTION_getAppCrates:I = 0xf

.field static final greylist-max-o TRANSACTION_getAppSize:I = 0xc

.field static final greylist-max-o TRANSACTION_getExternalSize:I = 0xe

.field static final blacklist TRANSACTION_getOdexVisibility:I = 0x34

.field static final blacklist TRANSACTION_getUserCrates:I = 0x10

.field static final greylist-max-o TRANSACTION_getUserSize:I = 0xd

.field static final greylist-max-o TRANSACTION_hashSecondaryDexFile:I = 0x27

.field static final greylist-max-o TRANSACTION_invalidateMounts:I = 0x28

.field static final greylist-max-o TRANSACTION_isQuotaSupported:I = 0x29

.field static final greylist-max-o TRANSACTION_linkFile:I = 0x23

.field static final greylist-max-o TRANSACTION_linkNativeLibraryDirectory:I = 0x21

.field static final greylist-max-o TRANSACTION_mergeProfiles:I = 0x17

.field static final greylist-max-o TRANSACTION_migrateAppData:I = 0x8

.field static final blacklist TRANSACTION_migrateLegacyObbData:I = 0x31

.field static final greylist-max-o TRANSACTION_moveAb:I = 0x24

.field static final greylist-max-o TRANSACTION_moveCompleteApp:I = 0x12

.field static final blacklist TRANSACTION_onPrivateVolumeRemoved:I = 0x30

.field static final blacklist TRANSACTION_oplusCommonInterface:I = 0x32

.field static final greylist-max-o TRANSACTION_prepareAppProfile:I = 0x2a

.field static final blacklist TRANSACTION_reconcileSdkData:I = 0x6

.field static final greylist-max-o TRANSACTION_reconcileSecondaryDexFile:I = 0x26

.field static final blacklist TRANSACTION_restoreAppDataSnapshot:I = 0x2c

.field static final greylist-max-o TRANSACTION_restoreconAppData:I = 0x7

.field static final greylist-max-o TRANSACTION_rmPackageDir:I = 0x1f

.field static final greylist-max-o TRANSACTION_rmdex:I = 0x16

.field static final greylist-max-o TRANSACTION_setAppQuota:I = 0x11

.field static final blacklist TRANSACTION_setFirstBoot:I = 0x3

.field static final blacklist TRANSACTION_snapshotAppData:I = 0x2b

.field static final blacklist TRANSACTION_tryMountDataMirror:I = 0x2f


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 205
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 206
    const-string v0, "android.os.IInstalld"

    invoke-virtual {p0, p0, v0}, Landroid/os/IInstalld$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 214
    if-nez p0, :cond_0

    .line 215
    const/4 v0, 0x0

    return-object v0

    .line 217
    :cond_0
    const-string v0, "android.os.IInstalld"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 218
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IInstalld;

    if-eqz v1, :cond_1

    .line 219
    move-object v1, v0

    check-cast v1, Landroid/os/IInstalld;

    return-object v1

    .line 221
    :cond_1
    new-instance v1, Landroid/os/IInstalld$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IInstalld$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 230
    packed-switch p0, :pswitch_data_0

    .line 442
    const/4 v0, 0x0

    return-object v0

    .line 438
    :pswitch_0
    const-string v0, "getOdexVisibility"

    return-object v0

    .line 434
    :pswitch_1
    const-string v0, "cleanupInvalidPackageDirs"

    return-object v0

    .line 430
    :pswitch_2
    const-string/jumbo v0, "oplusCommonInterface"

    return-object v0

    .line 426
    :pswitch_3
    const-string/jumbo v0, "migrateLegacyObbData"

    return-object v0

    .line 422
    :pswitch_4
    const-string/jumbo v0, "onPrivateVolumeRemoved"

    return-object v0

    .line 418
    :pswitch_5
    const-string/jumbo v0, "tryMountDataMirror"

    return-object v0

    .line 414
    :pswitch_6
    const-string v0, "destroyCeSnapshotsNotSpecified"

    return-object v0

    .line 410
    :pswitch_7
    const-string v0, "destroyAppDataSnapshot"

    return-object v0

    .line 406
    :pswitch_8
    const-string/jumbo v0, "restoreAppDataSnapshot"

    return-object v0

    .line 402
    :pswitch_9
    const-string/jumbo v0, "snapshotAppData"

    return-object v0

    .line 398
    :pswitch_a
    const-string/jumbo v0, "prepareAppProfile"

    return-object v0

    .line 394
    :pswitch_b
    const-string/jumbo v0, "isQuotaSupported"

    return-object v0

    .line 390
    :pswitch_c
    const-string/jumbo v0, "invalidateMounts"

    return-object v0

    .line 386
    :pswitch_d
    const-string/jumbo v0, "hashSecondaryDexFile"

    return-object v0

    .line 382
    :pswitch_e
    const-string/jumbo v0, "reconcileSecondaryDexFile"

    return-object v0

    .line 378
    :pswitch_f
    const-string v0, "deleteOdex"

    return-object v0

    .line 374
    :pswitch_10
    const-string/jumbo v0, "moveAb"

    return-object v0

    .line 370
    :pswitch_11
    const-string/jumbo v0, "linkFile"

    return-object v0

    .line 366
    :pswitch_12
    const-string v0, "createOatDir"

    return-object v0

    .line 362
    :pswitch_13
    const-string/jumbo v0, "linkNativeLibraryDirectory"

    return-object v0

    .line 358
    :pswitch_14
    const-string v0, "freeCache"

    return-object v0

    .line 354
    :pswitch_15
    const-string/jumbo v0, "rmPackageDir"

    return-object v0

    .line 350
    :pswitch_16
    const-string v0, "destroyProfileSnapshot"

    return-object v0

    .line 346
    :pswitch_17
    const-string v0, "createProfileSnapshot"

    return-object v0

    .line 342
    :pswitch_18
    const-string v0, "deleteReferenceProfile"

    return-object v0

    .line 338
    :pswitch_19
    const-string v0, "destroyAppProfiles"

    return-object v0

    .line 334
    :pswitch_1a
    const-string v0, "clearAppProfiles"

    return-object v0

    .line 330
    :pswitch_1b
    const-string v0, "copySystemProfile"

    return-object v0

    .line 326
    :pswitch_1c
    const-string v0, "dumpProfiles"

    return-object v0

    .line 322
    :pswitch_1d
    const-string/jumbo v0, "mergeProfiles"

    return-object v0

    .line 318
    :pswitch_1e
    const-string/jumbo v0, "rmdex"

    return-object v0

    .line 314
    :pswitch_1f
    const-string v0, "compileLayouts"

    return-object v0

    .line 310
    :pswitch_20
    const-string v0, "controlDexOptBlocking"

    return-object v0

    .line 306
    :pswitch_21
    const-string v0, "dexopt"

    return-object v0

    .line 302
    :pswitch_22
    const-string/jumbo v0, "moveCompleteApp"

    return-object v0

    .line 298
    :pswitch_23
    const-string/jumbo v0, "setAppQuota"

    return-object v0

    .line 294
    :pswitch_24
    const-string/jumbo v0, "getUserCrates"

    return-object v0

    .line 290
    :pswitch_25
    const-string v0, "getAppCrates"

    return-object v0

    .line 286
    :pswitch_26
    const-string v0, "getExternalSize"

    return-object v0

    .line 282
    :pswitch_27
    const-string/jumbo v0, "getUserSize"

    return-object v0

    .line 278
    :pswitch_28
    const-string v0, "getAppSize"

    return-object v0

    .line 274
    :pswitch_29
    const-string v0, "fixupAppData"

    return-object v0

    .line 270
    :pswitch_2a
    const-string v0, "destroyAppData"

    return-object v0

    .line 266
    :pswitch_2b
    const-string v0, "clearAppData"

    return-object v0

    .line 262
    :pswitch_2c
    const-string/jumbo v0, "migrateAppData"

    return-object v0

    .line 258
    :pswitch_2d
    const-string/jumbo v0, "restoreconAppData"

    return-object v0

    .line 254
    :pswitch_2e
    const-string/jumbo v0, "reconcileSdkData"

    return-object v0

    .line 250
    :pswitch_2f
    const-string v0, "createAppDataBatched"

    return-object v0

    .line 246
    :pswitch_30
    const-string v0, "createAppData"

    return-object v0

    .line 242
    :pswitch_31
    const-string/jumbo v0, "setFirstBoot"

    return-object v0

    .line 238
    :pswitch_32
    const-string v0, "destroyUserData"

    return-object v0

    .line 234
    :pswitch_33
    const-string v0, "createUserData"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 225
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 2274
    const/16 v0, 0x33

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 449
    invoke-static {p1}, Landroid/os/IInstalld$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 34
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 453
    move-object/from16 v15, p0

    move/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    const-string v11, "android.os.IInstalld"

    .line 454
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v14, v10, :cond_0

    const v0, 0xffffff

    if-gt v14, v0, :cond_0

    .line 455
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 457
    :cond_0
    packed-switch v14, :pswitch_data_0

    .line 465
    packed-switch v14, :pswitch_data_1

    .line 1217
    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 461
    :pswitch_0
    invoke-virtual {v12, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 462
    return v10

    .line 1202
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1204
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1206
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1208
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1209
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1210
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->getOdexVisibility(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1211
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1212
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1213
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_0

    .line 1189
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1191
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1193
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1194
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1195
    invoke-virtual {v15, v0, v1, v2}, Landroid/os/IInstalld$Stub;->cleanupInvalidPackageDirs(Ljava/lang/String;II)V

    .line 1196
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1197
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_0

    .line 1177
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1179
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersistableBundle;

    .line 1180
    .local v1, "_arg1":Landroid/os/PersistableBundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1181
    invoke-virtual {v15, v0, v1}, Landroid/os/IInstalld$Stub;->oplusCommonInterface(Ljava/lang/String;Landroid/os/PersistableBundle;)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 1182
    .local v2, "_result":Landroid/os/PersistableBundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1183
    invoke-virtual {v12, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1184
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_0

    .line 1170
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/PersistableBundle;
    .end local v2    # "_result":Landroid/os/PersistableBundle;
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/os/IInstalld$Stub;->migrateLegacyObbData()V

    .line 1171
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1172
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_0

    .line 1162
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1163
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1164
    invoke-virtual {v15, v0}, Landroid/os/IInstalld$Stub;->onPrivateVolumeRemoved(Ljava/lang/String;)V

    .line 1165
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1166
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_0

    .line 1153
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1154
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1155
    invoke-virtual {v15, v0}, Landroid/os/IInstalld$Stub;->tryMountDataMirror(Ljava/lang/String;)V

    .line 1156
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1157
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_0

    .line 1140
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1142
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1144
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 1145
    .local v2, "_arg2":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1146
    invoke-virtual {v15, v0, v1, v2}, Landroid/os/IInstalld$Stub;->destroyCeSnapshotsNotSpecified(Ljava/lang/String;I[I)V

    .line 1147
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1148
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_0

    .line 1121
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[I
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1123
    .local v8, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1125
    .local v9, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1127
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 1129
    .local v17, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1131
    .local v19, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1132
    .local v20, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1133
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move/from16 v3, v16

    move-wide/from16 v4, v17

    move/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/os/IInstalld$Stub;->destroyAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;IJII)V

    .line 1134
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1135
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_0

    .line 1100
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":J
    .end local v19    # "_arg4":I
    .end local v20    # "_arg5":I
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1102
    .restart local v8    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1104
    .restart local v9    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1106
    .restart local v16    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1108
    .local v17, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1110
    .local v18, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1112
    .local v19, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1113
    .local v20, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1114
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/os/IInstalld$Stub;->restoreAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    .line 1115
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1116
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_0

    .line 1082
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":Ljava/lang/String;
    .end local v18    # "_arg4":I
    .end local v19    # "_arg5":I
    .end local v20    # "_arg6":I
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1084
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1086
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1088
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1090
    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1091
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1092
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/IInstalld$Stub;->snapshotAppData(Ljava/lang/String;Ljava/lang/String;III)J

    move-result-wide v0

    .line 1093
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1094
    invoke-virtual {v12, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1095
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_0

    .line 1062
    .end local v0    # "_result":J
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1064
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1066
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1068
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1070
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1072
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1073
    .local v18, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1074
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move v3, v9

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/os/IInstalld$Stub;->prepareAppProfile(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1075
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1076
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1077
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_0

    .line 1052
    .end local v0    # "_result":Z
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":Ljava/lang/String;
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1053
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1054
    invoke-virtual {v15, v0}, Landroid/os/IInstalld$Stub;->isQuotaSupported(Ljava/lang/String;)Z

    move-result v1

    .line 1055
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1056
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1057
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_0

    .line 1045
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Landroid/os/IInstalld$Stub;->invalidateMounts()V

    .line 1046
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1047
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_0

    .line 1028
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1030
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1032
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1034
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1036
    .local v9, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1037
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1038
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move-object v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/IInstalld$Stub;->hashSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[B

    move-result-object v0

    .line 1039
    .local v0, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1040
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1041
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_0

    .line 1008
    .end local v0    # "_result":[B
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":I
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1010
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1012
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1014
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v16

    .line 1016
    .local v16, "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1018
    .restart local v17    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1019
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1020
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move v3, v9

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/os/IInstalld$Stub;->reconcileSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 1021
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1022
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1023
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_0

    .line 992
    .end local v0    # "_result":Z
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v16    # "_arg3":[Ljava/lang/String;
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":I
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 994
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 996
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 998
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 999
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1000
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->deleteOdex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    .line 1001
    .local v4, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1002
    invoke-virtual {v12, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1003
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_0

    .line 977
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":J
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 979
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 981
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 983
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 984
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 985
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->moveAb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 987
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_0

    .line 962
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 964
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 966
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 968
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 969
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 970
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 972
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_0

    .line 949
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 951
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 953
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 954
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 955
    invoke-virtual {v15, v0, v1, v2}, Landroid/os/IInstalld$Stub;->createOatDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 957
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_0

    .line 934
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 936
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 938
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 940
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 941
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 942
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 943
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 944
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_0

    .line 921
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 923
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 925
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 926
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 927
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->freeCache(Ljava/lang/String;JI)V

    .line 928
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 929
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_0

    .line 910
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":I
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 912
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 913
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 914
    invoke-virtual {v15, v0, v1}, Landroid/os/IInstalld$Stub;->rmPackageDir(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 916
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_0

    .line 899
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 901
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 902
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 903
    invoke-virtual {v15, v0, v1}, Landroid/os/IInstalld$Stub;->destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 905
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_0

    .line 883
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 885
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 887
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 889
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 890
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 891
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->createProfileSnapshot(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 892
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 893
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 894
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_0

    .line 872
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 874
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 875
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 876
    invoke-virtual {v15, v0, v1}, Landroid/os/IInstalld$Stub;->deleteReferenceProfile(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 878
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_0

    .line 863
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 864
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 865
    invoke-virtual {v15, v0}, Landroid/os/IInstalld$Stub;->destroyAppProfiles(Ljava/lang/String;)V

    .line 866
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 867
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_0

    .line 852
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 854
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 855
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 856
    invoke-virtual {v15, v0, v1}, Landroid/os/IInstalld$Stub;->clearAppProfiles(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 858
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_0

    .line 836
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 838
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 840
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 842
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 843
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 844
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->copySystemProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 845
    .restart local v4    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 846
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 847
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_0

    .line 818
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 820
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 822
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 824
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 826
    .local v9, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 827
    .local v16, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 828
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/IInstalld$Stub;->dumpProfiles(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 829
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 830
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 831
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_0

    .line 804
    .end local v0    # "_result":Z
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Z
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 806
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 808
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 809
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 810
    invoke-virtual {v15, v0, v1, v2}, Landroid/os/IInstalld$Stub;->mergeProfiles(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 811
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 812
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 813
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_0

    .line 793
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 795
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 796
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 797
    invoke-virtual {v15, v0, v1}, Landroid/os/IInstalld$Stub;->rmdex(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 799
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_0

    .line 777
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 779
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 781
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 783
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 784
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 785
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->compileLayouts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    .line 786
    .restart local v4    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 787
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 788
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_0

    .line 768
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 769
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 770
    invoke-virtual {v15, v0}, Landroid/os/IInstalld$Stub;->controlDexOptBlocking(Z)V

    .line 771
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 772
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_0

    .line 728
    .end local v0    # "_arg0":Z
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .local v17, "_arg0":Ljava/lang/String;
    move-object/from16 v1, v17

    .line 730
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .local v18, "_arg1":I
    move/from16 v2, v18

    .line 732
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .local v19, "_arg2":Ljava/lang/String;
    move-object/from16 v3, v19

    .line 734
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .local v20, "_arg3":Ljava/lang/String;
    move-object/from16 v4, v20

    .line 736
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .local v21, "_arg4":I
    move/from16 v5, v21

    .line 738
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .local v22, "_arg5":Ljava/lang/String;
    move-object/from16 v6, v22

    .line 740
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .local v23, "_arg6":I
    move/from16 v7, v23

    .line 742
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .local v24, "_arg7":Ljava/lang/String;
    move-object/from16 v8, v24

    .line 744
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .local v25, "_arg8":Ljava/lang/String;
    move-object/from16 v9, v25

    .line 746
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    move v0, v10

    .local v26, "_arg9":Ljava/lang/String;
    move-object/from16 v10, v26

    .line 748
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v28, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .local v27, "_arg10":Ljava/lang/String;
    .local v28, "descriptor":Ljava/lang/String;
    move-object/from16 v11, v27

    .line 750
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v29

    .local v29, "_arg11":Z
    move/from16 v12, v29

    .line 752
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    .local v30, "_arg12":I
    move/from16 v13, v30

    .line 754
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .local v31, "_arg13":Ljava/lang/String;
    move-object/from16 v14, v31

    .line 756
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .local v32, "_arg14":Ljava/lang/String;
    move-object/from16 v15, v32

    .line 758
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .local v33, "_arg15":Ljava/lang/String;
    move-object/from16 v16, v33

    .line 759
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 760
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v16}, Landroid/os/IInstalld$Stub;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 761
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 762
    move-object/from16 v8, p3

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 763
    move-object/from16 v9, p0

    move-object/from16 v1, p2

    const/4 v10, 0x1

    goto/16 :goto_0

    .line 707
    .end local v0    # "_result":Z
    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v18    # "_arg1":I
    .end local v19    # "_arg2":Ljava/lang/String;
    .end local v20    # "_arg3":Ljava/lang/String;
    .end local v21    # "_arg4":I
    .end local v22    # "_arg5":Ljava/lang/String;
    .end local v23    # "_arg6":I
    .end local v24    # "_arg7":Ljava/lang/String;
    .end local v25    # "_arg8":Ljava/lang/String;
    .end local v26    # "_arg9":Ljava/lang/String;
    .end local v27    # "_arg10":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .end local v29    # "_arg11":Z
    .end local v30    # "_arg12":I
    .end local v31    # "_arg13":Ljava/lang/String;
    .end local v32    # "_arg14":Ljava/lang/String;
    .end local v33    # "_arg15":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_23
    move-object/from16 v28, v11

    move-object v8, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 709
    .local v9, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 711
    .local v10, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 713
    .local v11, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 715
    .local v12, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 717
    .local v13, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 719
    .local v14, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 720
    .local v15, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 721
    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v10

    move-object v3, v11

    move v4, v12

    move-object v5, v13

    move v6, v14

    move-object v7, v15

    invoke-virtual/range {v0 .. v7}, Landroid/os/IInstalld$Stub;->moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 722
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 723
    move-object/from16 v9, p0

    move-object/from16 v1, p2

    const/4 v10, 0x1

    goto/16 :goto_0

    .line 692
    .end local v9    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg3":I
    .end local v13    # "_arg4":Ljava/lang/String;
    .end local v14    # "_arg5":I
    .end local v15    # "_arg6":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_24
    move-object/from16 v28, v11

    move-object v8, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 694
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 696
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 698
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 699
    .local v10, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 700
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v9

    move-wide v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/os/IInstalld$Stub;->setAppQuota(Ljava/lang/String;IIJ)V

    .line 701
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 702
    move-object/from16 v9, p0

    move-object/from16 v1, p2

    const/4 v10, 0x1

    goto/16 :goto_0

    .line 680
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":J
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_25
    move-object/from16 v28, v11

    move-object v8, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 682
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 683
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 684
    move-object/from16 v9, p0

    invoke-virtual {v9, v0, v1}, Landroid/os/IInstalld$Stub;->getUserCrates(Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;

    move-result-object v2

    .line 685
    .local v2, "_result":[Landroid/os/storage/CrateMetadata;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 686
    const/4 v10, 0x1

    invoke-virtual {v8, v2, v10}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 687
    move-object/from16 v1, p2

    goto/16 :goto_0

    .line 666
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":[Landroid/os/storage/CrateMetadata;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_26
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v9, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 668
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 670
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 671
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 672
    invoke-virtual {v9, v0, v1, v2}, Landroid/os/IInstalld$Stub;->getAppCrates(Ljava/lang/String;[Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;

    move-result-object v3

    .line 673
    .local v3, "_result":[Landroid/os/storage/CrateMetadata;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 674
    invoke-virtual {v8, v3, v10}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 675
    move-object/from16 v1, p2

    goto/16 :goto_0

    .line 650
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":[Landroid/os/storage/CrateMetadata;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_27
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v9, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 652
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 654
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 656
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 657
    .local v3, "_arg3":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 658
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->getExternalSize(Ljava/lang/String;II[I)[J

    move-result-object v4

    .line 659
    .local v4, "_result":[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 660
    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 661
    move-object/from16 v1, p2

    goto/16 :goto_0

    .line 634
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":[I
    .end local v4    # "_result":[J
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_28
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v9, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 636
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 638
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 640
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 641
    .restart local v3    # "_arg3":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 642
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->getUserSize(Ljava/lang/String;II[I)[J

    move-result-object v4

    .line 643
    .restart local v4    # "_result":[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 645
    move-object/from16 v1, p2

    goto/16 :goto_0

    .line 612
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":[I
    .end local v4    # "_result":[J
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_29
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v9, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 614
    .local v11, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v12

    .line 616
    .local v12, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 618
    .local v13, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 620
    .local v14, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 622
    .local v15, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v16

    .line 624
    .local v16, "_arg5":[J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v17

    .line 625
    .local v17, "_arg6":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 626
    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v12

    move v3, v13

    move v4, v14

    move v5, v15

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Landroid/os/IInstalld$Stub;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;)[J

    move-result-object v0

    .line 627
    .local v0, "_result":[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 628
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 629
    move-object/from16 v1, p2

    goto/16 :goto_0

    .line 601
    .end local v0    # "_result":[J
    .end local v12    # "_arg1":[Ljava/lang/String;
    .end local v13    # "_arg2":I
    .end local v14    # "_arg3":I
    .end local v15    # "_arg4":I
    .end local v16    # "_arg5":[J
    .end local v17    # "_arg6":[Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_2a
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v9, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 603
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 604
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 605
    invoke-virtual {v9, v0, v1}, Landroid/os/IInstalld$Stub;->fixupAppData(Ljava/lang/String;I)V

    .line 606
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    move-object/from16 v1, p2

    goto/16 :goto_0

    .line 584
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_2b
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v9, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 586
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 588
    .local v11, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 590
    .local v12, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 592
    .local v13, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 593
    .local v14, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 594
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v11

    move v3, v12

    move v4, v13

    move-wide v5, v14

    invoke-virtual/range {v0 .. v6}, Landroid/os/IInstalld$Stub;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 595
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 596
    move-object/from16 v1, p2

    goto/16 :goto_0

    .line 567
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg2":I
    .end local v13    # "_arg3":I
    .end local v14    # "_arg4":J
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_2c
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v9, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 569
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 571
    .local v11, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 573
    .restart local v12    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 575
    .restart local v13    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 576
    .restart local v14    # "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 577
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v11

    move v3, v12

    move v4, v13

    move-wide v5, v14

    invoke-virtual/range {v0 .. v6}, Landroid/os/IInstalld$Stub;->clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 578
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    move-object/from16 v1, p2

    goto/16 :goto_0

    .line 552
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg2":I
    .end local v13    # "_arg3":I
    .end local v14    # "_arg4":J
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_2d
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v9, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 554
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 556
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 558
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 559
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 560
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->migrateAppData(Ljava/lang/String;Ljava/lang/String;II)V

    .line 561
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 562
    move-object/from16 v1, p2

    goto/16 :goto_0

    .line 533
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_2e
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v9, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 535
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 537
    .local v11, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 539
    .restart local v12    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 541
    .restart local v13    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 543
    .local v14, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 544
    .local v15, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 545
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v11

    move v3, v12

    move v4, v13

    move v5, v14

    move-object v6, v15

    invoke-virtual/range {v0 .. v6}, Landroid/os/IInstalld$Stub;->restoreconAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 546
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    move-object/from16 v1, p2

    goto/16 :goto_0

    .line 524
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg2":I
    .end local v13    # "_arg3":I
    .end local v14    # "_arg4":I
    .end local v15    # "_arg5":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_2f
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v9, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/os/ReconcileSdkDataArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ReconcileSdkDataArgs;

    .line 525
    .local v0, "_arg0":Landroid/os/ReconcileSdkDataArgs;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 526
    invoke-virtual {v9, v0}, Landroid/os/IInstalld$Stub;->reconcileSdkData(Landroid/os/ReconcileSdkDataArgs;)V

    .line 527
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 528
    goto/16 :goto_0

    .line 514
    .end local v0    # "_arg0":Landroid/os/ReconcileSdkDataArgs;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_30
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/os/CreateAppDataArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/CreateAppDataArgs;

    .line 515
    .local v0, "_arg0":[Landroid/os/CreateAppDataArgs;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 516
    invoke-virtual {v9, v0}, Landroid/os/IInstalld$Stub;->createAppDataBatched([Landroid/os/CreateAppDataArgs;)[Landroid/os/CreateAppDataResult;

    move-result-object v2

    .line 517
    .local v2, "_result":[Landroid/os/CreateAppDataResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    invoke-virtual {v8, v2, v10}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 519
    goto/16 :goto_0

    .line 504
    .end local v0    # "_arg0":[Landroid/os/CreateAppDataArgs;
    .end local v2    # "_result":[Landroid/os/CreateAppDataResult;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_31
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/os/CreateAppDataArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CreateAppDataArgs;

    .line 505
    .local v0, "_arg0":Landroid/os/CreateAppDataArgs;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 506
    invoke-virtual {v9, v0}, Landroid/os/IInstalld$Stub;->createAppData(Landroid/os/CreateAppDataArgs;)Landroid/os/CreateAppDataResult;

    move-result-object v2

    .line 507
    .local v2, "_result":Landroid/os/CreateAppDataResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 508
    invoke-virtual {v8, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 509
    goto :goto_0

    .line 497
    .end local v0    # "_arg0":Landroid/os/CreateAppDataArgs;
    .end local v2    # "_result":Landroid/os/CreateAppDataResult;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_32
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/IInstalld$Stub;->setFirstBoot()V

    .line 498
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 499
    goto :goto_0

    .line 485
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_33
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 489
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 490
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 491
    invoke-virtual {v9, v0, v2, v3}, Landroid/os/IInstalld$Stub;->destroyUserData(Ljava/lang/String;II)V

    .line 492
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    goto :goto_0

    .line 470
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_34
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 472
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 474
    .restart local v2    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 476
    .restart local v3    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 477
    .local v4, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 478
    invoke-virtual {v9, v0, v2, v3, v4}, Landroid/os/IInstalld$Stub;->createUserData(Ljava/lang/String;III)V

    .line 479
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    nop

    .line 1220
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :goto_0
    return v10

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
