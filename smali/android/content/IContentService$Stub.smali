.class public abstract Landroid/content/IContentService$Stub;
.super Landroid/os/Binder;
.source "IContentService.java"

# interfaces
.implements Landroid/content/IContentService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/IContentService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.content.IContentService"

.field static final greylist-max-o TRANSACTION_addPeriodicSync:I = 0xf

.field static final greylist-max-o TRANSACTION_addStatusChangeListener:I = 0x24

.field static final greylist-max-o TRANSACTION_cancelRequest:I = 0x9

.field static final greylist-max-o TRANSACTION_cancelSync:I = 0x7

.field static final greylist-max-o TRANSACTION_cancelSyncAsUser:I = 0x8

.field static final greylist-max-o TRANSACTION_getCache:I = 0x27

.field static final greylist-max-o TRANSACTION_getCurrentSyncs:I = 0x19

.field static final greylist-max-o TRANSACTION_getCurrentSyncsAsUser:I = 0x1a

.field static final greylist-max-o TRANSACTION_getIsSyncable:I = 0x11

.field static final greylist-max-o TRANSACTION_getIsSyncableAsUser:I = 0x12

.field static final greylist-max-o TRANSACTION_getMasterSyncAutomatically:I = 0x17

.field static final greylist-max-o TRANSACTION_getMasterSyncAutomaticallyAsUser:I = 0x18

.field static final greylist-max-o TRANSACTION_getPeriodicSyncs:I = 0xe

.field static final blacklist TRANSACTION_getSyncAdapterPackageAsUser:I = 0x1e

.field static final greylist-max-o TRANSACTION_getSyncAdapterPackagesForAuthorityAsUser:I = 0x1d

.field static final greylist-max-o TRANSACTION_getSyncAdapterTypes:I = 0x1b

.field static final greylist-max-o TRANSACTION_getSyncAdapterTypesAsUser:I = 0x1c

.field static final greylist-max-o TRANSACTION_getSyncAutomatically:I = 0xa

.field static final greylist-max-o TRANSACTION_getSyncAutomaticallyAsUser:I = 0xb

.field static final greylist-max-o TRANSACTION_getSyncStatus:I = 0x20

.field static final greylist-max-o TRANSACTION_getSyncStatusAsUser:I = 0x21

.field static final greylist-max-o TRANSACTION_isSyncActive:I = 0x1f

.field static final greylist-max-o TRANSACTION_isSyncPending:I = 0x22

.field static final greylist-max-o TRANSACTION_isSyncPendingAsUser:I = 0x23

.field static final greylist-max-o TRANSACTION_notifyChange:I = 0x3

.field static final blacklist TRANSACTION_onDbCorruption:I = 0x29

.field static final greylist-max-o TRANSACTION_putCache:I = 0x26

.field static final greylist-max-o TRANSACTION_registerContentObserver:I = 0x2

.field static final greylist-max-o TRANSACTION_removePeriodicSync:I = 0x10

.field static final greylist-max-o TRANSACTION_removeStatusChangeListener:I = 0x25

.field static final greylist-max-o TRANSACTION_requestSync:I = 0x4

.field static final greylist-max-o TRANSACTION_resetTodayStats:I = 0x28

.field static final greylist-max-o TRANSACTION_setIsSyncable:I = 0x13

.field static final blacklist TRANSACTION_setIsSyncableAsUser:I = 0x14

.field static final greylist-max-o TRANSACTION_setMasterSyncAutomatically:I = 0x15

.field static final greylist-max-o TRANSACTION_setMasterSyncAutomaticallyAsUser:I = 0x16

.field static final greylist-max-o TRANSACTION_setSyncAutomatically:I = 0xc

.field static final greylist-max-o TRANSACTION_setSyncAutomaticallyAsUser:I = 0xd

.field static final greylist-max-o TRANSACTION_sync:I = 0x5

.field static final greylist-max-o TRANSACTION_syncAsUser:I = 0x6

.field static final greylist-max-o TRANSACTION_unregisterContentObserver:I = 0x1


# direct methods
.method public constructor greylist <init>()V
    .locals 1

    .line 246
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 247
    const-string v0, "android.content.IContentService"

    invoke-virtual {p0, p0, v0}, Landroid/content/IContentService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/content/IContentService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 255
    if-nez p0, :cond_0

    .line 256
    const/4 v0, 0x0

    return-object v0

    .line 258
    :cond_0
    const-string v0, "android.content.IContentService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 259
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/IContentService;

    if-eqz v1, :cond_1

    .line 260
    move-object v1, v0

    check-cast v1, Landroid/content/IContentService;

    return-object v1

    .line 262
    :cond_1
    new-instance v1, Landroid/content/IContentService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/IContentService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 271
    packed-switch p0, :pswitch_data_0

    .line 439
    const/4 v0, 0x0

    return-object v0

    .line 435
    :pswitch_0
    const-string/jumbo v0, "onDbCorruption"

    return-object v0

    .line 431
    :pswitch_1
    const-string/jumbo v0, "resetTodayStats"

    return-object v0

    .line 427
    :pswitch_2
    const-string v0, "getCache"

    return-object v0

    .line 423
    :pswitch_3
    const-string/jumbo v0, "putCache"

    return-object v0

    .line 419
    :pswitch_4
    const-string/jumbo v0, "removeStatusChangeListener"

    return-object v0

    .line 415
    :pswitch_5
    const-string v0, "addStatusChangeListener"

    return-object v0

    .line 411
    :pswitch_6
    const-string v0, "isSyncPendingAsUser"

    return-object v0

    .line 407
    :pswitch_7
    const-string v0, "isSyncPending"

    return-object v0

    .line 403
    :pswitch_8
    const-string v0, "getSyncStatusAsUser"

    return-object v0

    .line 399
    :pswitch_9
    const-string v0, "getSyncStatus"

    return-object v0

    .line 395
    :pswitch_a
    const-string v0, "isSyncActive"

    return-object v0

    .line 391
    :pswitch_b
    const-string v0, "getSyncAdapterPackageAsUser"

    return-object v0

    .line 387
    :pswitch_c
    const-string v0, "getSyncAdapterPackagesForAuthorityAsUser"

    return-object v0

    .line 383
    :pswitch_d
    const-string v0, "getSyncAdapterTypesAsUser"

    return-object v0

    .line 379
    :pswitch_e
    const-string v0, "getSyncAdapterTypes"

    return-object v0

    .line 375
    :pswitch_f
    const-string v0, "getCurrentSyncsAsUser"

    return-object v0

    .line 371
    :pswitch_10
    const-string v0, "getCurrentSyncs"

    return-object v0

    .line 367
    :pswitch_11
    const-string v0, "getMasterSyncAutomaticallyAsUser"

    return-object v0

    .line 363
    :pswitch_12
    const-string v0, "getMasterSyncAutomatically"

    return-object v0

    .line 359
    :pswitch_13
    const-string/jumbo v0, "setMasterSyncAutomaticallyAsUser"

    return-object v0

    .line 355
    :pswitch_14
    const-string/jumbo v0, "setMasterSyncAutomatically"

    return-object v0

    .line 351
    :pswitch_15
    const-string/jumbo v0, "setIsSyncableAsUser"

    return-object v0

    .line 347
    :pswitch_16
    const-string/jumbo v0, "setIsSyncable"

    return-object v0

    .line 343
    :pswitch_17
    const-string v0, "getIsSyncableAsUser"

    return-object v0

    .line 339
    :pswitch_18
    const-string v0, "getIsSyncable"

    return-object v0

    .line 335
    :pswitch_19
    const-string/jumbo v0, "removePeriodicSync"

    return-object v0

    .line 331
    :pswitch_1a
    const-string v0, "addPeriodicSync"

    return-object v0

    .line 327
    :pswitch_1b
    const-string v0, "getPeriodicSyncs"

    return-object v0

    .line 323
    :pswitch_1c
    const-string/jumbo v0, "setSyncAutomaticallyAsUser"

    return-object v0

    .line 319
    :pswitch_1d
    const-string/jumbo v0, "setSyncAutomatically"

    return-object v0

    .line 315
    :pswitch_1e
    const-string v0, "getSyncAutomaticallyAsUser"

    return-object v0

    .line 311
    :pswitch_1f
    const-string v0, "getSyncAutomatically"

    return-object v0

    .line 307
    :pswitch_20
    const-string v0, "cancelRequest"

    return-object v0

    .line 303
    :pswitch_21
    const-string v0, "cancelSyncAsUser"

    return-object v0

    .line 299
    :pswitch_22
    const-string v0, "cancelSync"

    return-object v0

    .line 295
    :pswitch_23
    const-string/jumbo v0, "syncAsUser"

    return-object v0

    .line 291
    :pswitch_24
    const-string/jumbo v0, "sync"

    return-object v0

    .line 287
    :pswitch_25
    const-string/jumbo v0, "requestSync"

    return-object v0

    .line 283
    :pswitch_26
    const-string/jumbo v0, "notifyChange"

    return-object v0

    .line 279
    :pswitch_27
    const-string/jumbo v0, "registerContentObserver"

    return-object v0

    .line 275
    :pswitch_28
    const-string/jumbo v0, "unregisterContentObserver"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 266
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1863
    const/16 v0, 0x28

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 446
    invoke-static {p1}, Landroid/content/IContentService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 450
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "android.content.IContentService"

    .line 451
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v9, v13, :cond_0

    const v0, 0xffffff

    if-gt v9, v0, :cond_0

    .line 452
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    :cond_0
    packed-switch v9, :pswitch_data_0

    .line 462
    packed-switch v9, :pswitch_data_1

    .line 978
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 458
    :pswitch_0
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 459
    return v13

    .line 966
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 968
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 970
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 971
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 972
    invoke-virtual {v8, v0, v1, v2}, Landroid/content/IContentService$Stub;->onDbCorruption(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 974
    goto/16 :goto_0

    .line 959
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/IContentService$Stub;->resetTodayStats()V

    .line 960
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 961
    goto/16 :goto_0

    .line 946
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 948
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 950
    .local v1, "_arg1":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 951
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 952
    invoke-virtual {v8, v0, v1, v2}, Landroid/content/IContentService$Stub;->getCache(Ljava/lang/String;Landroid/net/Uri;I)Landroid/os/Bundle;

    move-result-object v3

    .line 953
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 954
    invoke-virtual {v11, v3, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 955
    goto/16 :goto_0

    .line 931
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/net/Uri;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Landroid/os/Bundle;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 933
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 935
    .restart local v1    # "_arg1":Landroid/net/Uri;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 937
    .local v2, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 938
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 939
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/IContentService$Stub;->putCache(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;I)V

    .line 940
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 941
    goto/16 :goto_0

    .line 922
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/net/Uri;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_arg3":I
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ISyncStatusObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncStatusObserver;

    move-result-object v0

    .line 923
    .local v0, "_arg0":Landroid/content/ISyncStatusObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 924
    invoke-virtual {v8, v0}, Landroid/content/IContentService$Stub;->removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V

    .line 925
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 926
    goto/16 :goto_0

    .line 911
    .end local v0    # "_arg0":Landroid/content/ISyncStatusObserver;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 913
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ISyncStatusObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncStatusObserver;

    move-result-object v1

    .line 914
    .local v1, "_arg1":Landroid/content/ISyncStatusObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 915
    invoke-virtual {v8, v0, v1}, Landroid/content/IContentService$Stub;->addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V

    .line 916
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 917
    goto/16 :goto_0

    .line 895
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/content/ISyncStatusObserver;
    :pswitch_7
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 897
    .local v0, "_arg0":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 899
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 901
    .local v2, "_arg2":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 902
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 903
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/IContentService$Stub;->isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Z

    move-result v4

    .line 904
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 905
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 906
    goto/16 :goto_0

    .line 881
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/content/ComponentName;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :pswitch_8
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 883
    .restart local v0    # "_arg0":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 885
    .restart local v1    # "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 886
    .restart local v2    # "_arg2":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 887
    invoke-virtual {v8, v0, v1, v2}, Landroid/content/IContentService$Stub;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v3

    .line 888
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 889
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 890
    goto/16 :goto_0

    .line 865
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_9
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 867
    .restart local v0    # "_arg0":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 869
    .restart local v1    # "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 871
    .restart local v2    # "_arg2":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 872
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 873
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/IContentService$Stub;->getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Landroid/content/SyncStatusInfo;

    move-result-object v4

    .line 874
    .local v4, "_result":Landroid/content/SyncStatusInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 875
    invoke-virtual {v11, v4, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 876
    goto/16 :goto_0

    .line 851
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/content/ComponentName;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Landroid/content/SyncStatusInfo;
    :pswitch_a
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 853
    .restart local v0    # "_arg0":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 855
    .restart local v1    # "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 856
    .restart local v2    # "_arg2":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 857
    invoke-virtual {v8, v0, v1, v2}, Landroid/content/IContentService$Stub;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Landroid/content/SyncStatusInfo;

    move-result-object v3

    .line 858
    .local v3, "_result":Landroid/content/SyncStatusInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 859
    invoke-virtual {v11, v3, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 860
    goto/16 :goto_0

    .line 837
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/content/ComponentName;
    .end local v3    # "_result":Landroid/content/SyncStatusInfo;
    :pswitch_b
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 839
    .restart local v0    # "_arg0":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 841
    .restart local v1    # "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 842
    .restart local v2    # "_arg2":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 843
    invoke-virtual {v8, v0, v1, v2}, Landroid/content/IContentService$Stub;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v3

    .line 844
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 845
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 846
    goto/16 :goto_0

    .line 823
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 825
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 827
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 828
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 829
    invoke-virtual {v8, v0, v1, v2}, Landroid/content/IContentService$Stub;->getSyncAdapterPackageAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 830
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 831
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 832
    goto/16 :goto_0

    .line 811
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 813
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 814
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 815
    invoke-virtual {v8, v0, v1}, Landroid/content/IContentService$Stub;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 816
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 817
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 818
    goto/16 :goto_0

    .line 801
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 802
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 803
    invoke-virtual {v8, v0}, Landroid/content/IContentService$Stub;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v1

    .line 804
    .local v1, "_result":[Landroid/content/SyncAdapterType;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 805
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 806
    goto/16 :goto_0

    .line 793
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[Landroid/content/SyncAdapterType;
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Landroid/content/IContentService$Stub;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v0

    .line 794
    .local v0, "_result":[Landroid/content/SyncAdapterType;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 795
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 796
    goto/16 :goto_0

    .line 784
    .end local v0    # "_result":[Landroid/content/SyncAdapterType;
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 785
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 786
    invoke-virtual {v8, v0}, Landroid/content/IContentService$Stub;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v1

    .line 787
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 788
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 789
    goto/16 :goto_0

    .line 776
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Landroid/content/IContentService$Stub;->getCurrentSyncs()Ljava/util/List;

    move-result-object v0

    .line 777
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 778
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 779
    goto/16 :goto_0

    .line 767
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 768
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 769
    invoke-virtual {v8, v0}, Landroid/content/IContentService$Stub;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v1

    .line 770
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 771
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 772
    goto/16 :goto_0

    .line 759
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Landroid/content/IContentService$Stub;->getMasterSyncAutomatically()Z

    move-result v0

    .line 760
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 761
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 762
    goto/16 :goto_0

    .line 749
    .end local v0    # "_result":Z
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 751
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 752
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 753
    invoke-virtual {v8, v0, v1}, Landroid/content/IContentService$Stub;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 754
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 755
    goto/16 :goto_0

    .line 740
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 741
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 742
    invoke-virtual {v8, v0}, Landroid/content/IContentService$Stub;->setMasterSyncAutomatically(Z)V

    .line 743
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 744
    goto/16 :goto_0

    .line 725
    .end local v0    # "_arg0":Z
    :pswitch_16
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 727
    .local v0, "_arg0":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 729
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 731
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 732
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 733
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/IContentService$Stub;->setIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;II)V

    .line 734
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 735
    goto/16 :goto_0

    .line 712
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_17
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 714
    .restart local v0    # "_arg0":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 716
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 717
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 718
    invoke-virtual {v8, v0, v1, v2}, Landroid/content/IContentService$Stub;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 719
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 720
    goto/16 :goto_0

    .line 698
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_18
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 700
    .restart local v0    # "_arg0":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 702
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 703
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 704
    invoke-virtual {v8, v0, v1, v2}, Landroid/content/IContentService$Stub;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v3

    .line 705
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 706
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 707
    goto/16 :goto_0

    .line 686
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :pswitch_19
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 688
    .restart local v0    # "_arg0":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 689
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 690
    invoke-virtual {v8, v0, v1}, Landroid/content/IContentService$Stub;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v2

    .line 691
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 693
    goto/16 :goto_0

    .line 673
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_1a
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 675
    .restart local v0    # "_arg0":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 677
    .restart local v1    # "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 678
    .local v2, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 679
    invoke-virtual {v8, v0, v1, v2}, Landroid/content/IContentService$Stub;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 680
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 681
    goto/16 :goto_0

    .line 658
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :pswitch_1b
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/accounts/Account;

    .line 660
    .local v6, "_arg0":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 662
    .local v7, "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/os/Bundle;

    .line 664
    .local v14, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 665
    .local v15, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 666
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v14

    move-wide v4, v15

    invoke-virtual/range {v0 .. v5}, Landroid/content/IContentService$Stub;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 667
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    goto/16 :goto_0

    .line 644
    .end local v6    # "_arg0":Landroid/accounts/Account;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Landroid/os/Bundle;
    .end local v15    # "_arg3":J
    :pswitch_1c
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 646
    .restart local v0    # "_arg0":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 648
    .restart local v1    # "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 649
    .local v2, "_arg2":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 650
    invoke-virtual {v8, v0, v1, v2}, Landroid/content/IContentService$Stub;->getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 651
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/PeriodicSync;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 652
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 653
    goto/16 :goto_0

    .line 629
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/PeriodicSync;>;"
    :pswitch_1d
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 631
    .restart local v0    # "_arg0":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 633
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 635
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 636
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 637
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/IContentService$Stub;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    .line 638
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 639
    goto/16 :goto_0

    .line 616
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":I
    :pswitch_1e
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 618
    .restart local v0    # "_arg0":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 620
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 621
    .restart local v2    # "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 622
    invoke-virtual {v8, v0, v1, v2}, Landroid/content/IContentService$Stub;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 623
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    goto/16 :goto_0

    .line 602
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Z
    :pswitch_1f
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 604
    .restart local v0    # "_arg0":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 606
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 607
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 608
    invoke-virtual {v8, v0, v1, v2}, Landroid/content/IContentService$Stub;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v3

    .line 609
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 610
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 611
    goto/16 :goto_0

    .line 590
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_20
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 592
    .restart local v0    # "_arg0":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 593
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 594
    invoke-virtual {v8, v0, v1}, Landroid/content/IContentService$Stub;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    .line 595
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 596
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 597
    goto/16 :goto_0

    .line 581
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_21
    sget-object v0, Landroid/content/SyncRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncRequest;

    .line 582
    .local v0, "_arg0":Landroid/content/SyncRequest;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 583
    invoke-virtual {v8, v0}, Landroid/content/IContentService$Stub;->cancelRequest(Landroid/content/SyncRequest;)V

    .line 584
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    goto/16 :goto_0

    .line 566
    .end local v0    # "_arg0":Landroid/content/SyncRequest;
    :pswitch_22
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 568
    .local v0, "_arg0":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 570
    .restart local v1    # "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 572
    .local v2, "_arg2":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 573
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 574
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/IContentService$Stub;->cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)V

    .line 575
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    goto/16 :goto_0

    .line 553
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/content/ComponentName;
    .end local v3    # "_arg3":I
    :pswitch_23
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 555
    .restart local v0    # "_arg0":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 557
    .restart local v1    # "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 558
    .restart local v2    # "_arg2":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 559
    invoke-virtual {v8, v0, v1, v2}, Landroid/content/IContentService$Stub;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)V

    .line 560
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    goto/16 :goto_0

    .line 540
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/content/ComponentName;
    :pswitch_24
    sget-object v0, Landroid/content/SyncRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncRequest;

    .line 542
    .local v0, "_arg0":Landroid/content/SyncRequest;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 544
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 545
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 546
    invoke-virtual {v8, v0, v1, v2}, Landroid/content/IContentService$Stub;->syncAsUser(Landroid/content/SyncRequest;ILjava/lang/String;)V

    .line 547
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    goto/16 :goto_0

    .line 529
    .end local v0    # "_arg0":Landroid/content/SyncRequest;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_25
    sget-object v0, Landroid/content/SyncRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncRequest;

    .line 531
    .restart local v0    # "_arg0":Landroid/content/SyncRequest;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 532
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 533
    invoke-virtual {v8, v0, v1}, Landroid/content/IContentService$Stub;->sync(Landroid/content/SyncRequest;Ljava/lang/String;)V

    .line 534
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    goto/16 :goto_0

    .line 514
    .end local v0    # "_arg0":Landroid/content/SyncRequest;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_26
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 516
    .local v0, "_arg0":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 518
    .restart local v1    # "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 520
    .local v2, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 521
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 522
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/IContentService$Stub;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 523
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 524
    goto/16 :goto_0

    .line 493
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_27
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, [Landroid/net/Uri;

    .line 495
    .local v14, "_arg0":[Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v15

    .line 497
    .local v15, "_arg1":Landroid/database/IContentObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 499
    .local v16, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 501
    .local v17, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 503
    .local v18, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 505
    .local v19, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 506
    .local v20, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 507
    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/content/IContentService$Stub;->notifyChange([Landroid/net/Uri;Landroid/database/IContentObserver;ZIIILjava/lang/String;)V

    .line 508
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    goto :goto_0

    .line 476
    .end local v14    # "_arg0":[Landroid/net/Uri;
    .end local v15    # "_arg1":Landroid/database/IContentObserver;
    .end local v16    # "_arg2":Z
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":I
    .end local v19    # "_arg5":I
    .end local v20    # "_arg6":Ljava/lang/String;
    :pswitch_28
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/net/Uri;

    .line 478
    .local v6, "_arg0":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 480
    .local v7, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v14

    .line 482
    .local v14, "_arg2":Landroid/database/IContentObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 484
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 485
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 486
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move-object v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/content/IContentService$Stub;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;II)V

    .line 487
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    goto :goto_0

    .line 467
    .end local v6    # "_arg0":Landroid/net/Uri;
    .end local v7    # "_arg1":Z
    .end local v14    # "_arg2":Landroid/database/IContentObserver;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v0

    .line 468
    .local v0, "_arg0":Landroid/database/IContentObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 469
    invoke-virtual {v8, v0}, Landroid/content/IContentService$Stub;->unregisterContentObserver(Landroid/database/IContentObserver;)V

    .line 470
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    nop

    .line 981
    .end local v0    # "_arg0":Landroid/database/IContentObserver;
    :goto_0
    return v13

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
