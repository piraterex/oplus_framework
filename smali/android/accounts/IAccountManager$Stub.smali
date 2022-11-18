.class public abstract Landroid/accounts/IAccountManager$Stub;
.super Landroid/os/Binder;
.source "IAccountManager.java"

# interfaces
.implements Landroid/accounts/IAccountManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/IAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accounts/IAccountManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.accounts.IAccountManager"

.field static final greylist-max-o TRANSACTION_accountAuthenticated:I = 0x1b

.field static final greylist-max-o TRANSACTION_addAccount:I = 0x16

.field static final greylist-max-o TRANSACTION_addAccountAsUser:I = 0x17

.field static final greylist-max-o TRANSACTION_addAccountExplicitly:I = 0xa

.field static final greylist-max-o TRANSACTION_addAccountExplicitlyWithVisibility:I = 0x26

.field static final greylist-max-o TRANSACTION_addSharedAccountsFromParentUser:I = 0x1d

.field static final greylist-max-o TRANSACTION_clearPassword:I = 0x12

.field static final greylist-max-o TRANSACTION_confirmCredentialsAsUser:I = 0x1a

.field static final greylist-max-o TRANSACTION_copyAccountToUser:I = 0xd

.field static final greylist-max-o TRANSACTION_createRequestAccountAccessIntentSenderAsUser:I = 0x2d

.field static final greylist-max-o TRANSACTION_editProperties:I = 0x19

.field static final greylist-max-o TRANSACTION_finishSessionAsUser:I = 0x22

.field static final greylist-max-o TRANSACTION_getAccountByTypeAndFeatures:I = 0x8

.field static final greylist-max-o TRANSACTION_getAccountVisibility:I = 0x28

.field static final greylist-max-o TRANSACTION_getAccountsAndVisibilityForPackage:I = 0x29

.field static final greylist-max-o TRANSACTION_getAccountsAsUser:I = 0x6

.field static final greylist-max-o TRANSACTION_getAccountsByFeatures:I = 0x9

.field static final greylist-max-o TRANSACTION_getAccountsByTypeForPackage:I = 0x5

.field static final greylist-max-o TRANSACTION_getAccountsForPackage:I = 0x4

.field static final greylist-max-o TRANSACTION_getAuthToken:I = 0x15

.field static final greylist-max-o TRANSACTION_getAuthTokenLabel:I = 0x1c

.field static final greylist-max-o TRANSACTION_getAuthenticatorTypes:I = 0x3

.field static final greylist-max-o TRANSACTION_getPackagesAndVisibilityForAccount:I = 0x25

.field static final greylist-max-o TRANSACTION_getPassword:I = 0x1

.field static final greylist-max-o TRANSACTION_getPreviousName:I = 0x1f

.field static final greylist-max-o TRANSACTION_getUserData:I = 0x2

.field static final greylist-max-o TRANSACTION_hasAccountAccess:I = 0x2c

.field static final greylist-max-o TRANSACTION_hasFeatures:I = 0x7

.field static final greylist-max-o TRANSACTION_invalidateAuthToken:I = 0xe

.field static final greylist-max-o TRANSACTION_isCredentialsUpdateSuggested:I = 0x24

.field static final greylist-max-o TRANSACTION_onAccountAccessed:I = 0x2e

.field static final greylist-max-o TRANSACTION_peekAuthToken:I = 0xf

.field static final greylist-max-o TRANSACTION_registerAccountListener:I = 0x2a

.field static final greylist-max-o TRANSACTION_removeAccountAsUser:I = 0xb

.field static final greylist-max-o TRANSACTION_removeAccountExplicitly:I = 0xc

.field static final greylist-max-o TRANSACTION_renameAccount:I = 0x1e

.field static final greylist-max-o TRANSACTION_setAccountVisibility:I = 0x27

.field static final greylist-max-o TRANSACTION_setAuthToken:I = 0x10

.field static final greylist-max-o TRANSACTION_setPassword:I = 0x11

.field static final greylist-max-o TRANSACTION_setUserData:I = 0x13

.field static final greylist-max-o TRANSACTION_someUserHasAccount:I = 0x23

.field static final greylist-max-o TRANSACTION_startAddAccountSession:I = 0x20

.field static final greylist-max-o TRANSACTION_startUpdateCredentialsSession:I = 0x21

.field static final greylist-max-o TRANSACTION_unregisterAccountListener:I = 0x2b

.field static final greylist-max-o TRANSACTION_updateAppPermission:I = 0x14

.field static final greylist-max-o TRANSACTION_updateCredentials:I = 0x18


# direct methods
.method public constructor greylist <init>()V
    .locals 1

    .line 195
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 196
    const-string v0, "android.accounts.IAccountManager"

    invoke-virtual {p0, p0, v0}, Landroid/accounts/IAccountManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 204
    if-nez p0, :cond_0

    .line 205
    const/4 v0, 0x0

    return-object v0

    .line 207
    :cond_0
    const-string v0, "android.accounts.IAccountManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 208
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/accounts/IAccountManager;

    if-eqz v1, :cond_1

    .line 209
    move-object v1, v0

    check-cast v1, Landroid/accounts/IAccountManager;

    return-object v1

    .line 211
    :cond_1
    new-instance v1, Landroid/accounts/IAccountManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/accounts/IAccountManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 220
    packed-switch p0, :pswitch_data_0

    .line 408
    const/4 v0, 0x0

    return-object v0

    .line 404
    :pswitch_0
    const-string/jumbo v0, "onAccountAccessed"

    return-object v0

    .line 400
    :pswitch_1
    const-string v0, "createRequestAccountAccessIntentSenderAsUser"

    return-object v0

    .line 396
    :pswitch_2
    const-string v0, "hasAccountAccess"

    return-object v0

    .line 392
    :pswitch_3
    const-string/jumbo v0, "unregisterAccountListener"

    return-object v0

    .line 388
    :pswitch_4
    const-string/jumbo v0, "registerAccountListener"

    return-object v0

    .line 384
    :pswitch_5
    const-string v0, "getAccountsAndVisibilityForPackage"

    return-object v0

    .line 380
    :pswitch_6
    const-string v0, "getAccountVisibility"

    return-object v0

    .line 376
    :pswitch_7
    const-string/jumbo v0, "setAccountVisibility"

    return-object v0

    .line 372
    :pswitch_8
    const-string v0, "addAccountExplicitlyWithVisibility"

    return-object v0

    .line 368
    :pswitch_9
    const-string v0, "getPackagesAndVisibilityForAccount"

    return-object v0

    .line 364
    :pswitch_a
    const-string v0, "isCredentialsUpdateSuggested"

    return-object v0

    .line 360
    :pswitch_b
    const-string/jumbo v0, "someUserHasAccount"

    return-object v0

    .line 356
    :pswitch_c
    const-string v0, "finishSessionAsUser"

    return-object v0

    .line 352
    :pswitch_d
    const-string/jumbo v0, "startUpdateCredentialsSession"

    return-object v0

    .line 348
    :pswitch_e
    const-string/jumbo v0, "startAddAccountSession"

    return-object v0

    .line 344
    :pswitch_f
    const-string v0, "getPreviousName"

    return-object v0

    .line 340
    :pswitch_10
    const-string/jumbo v0, "renameAccount"

    return-object v0

    .line 336
    :pswitch_11
    const-string v0, "addSharedAccountsFromParentUser"

    return-object v0

    .line 332
    :pswitch_12
    const-string v0, "getAuthTokenLabel"

    return-object v0

    .line 328
    :pswitch_13
    const-string v0, "accountAuthenticated"

    return-object v0

    .line 324
    :pswitch_14
    const-string v0, "confirmCredentialsAsUser"

    return-object v0

    .line 320
    :pswitch_15
    const-string v0, "editProperties"

    return-object v0

    .line 316
    :pswitch_16
    const-string/jumbo v0, "updateCredentials"

    return-object v0

    .line 312
    :pswitch_17
    const-string v0, "addAccountAsUser"

    return-object v0

    .line 308
    :pswitch_18
    const-string v0, "addAccount"

    return-object v0

    .line 304
    :pswitch_19
    const-string v0, "getAuthToken"

    return-object v0

    .line 300
    :pswitch_1a
    const-string/jumbo v0, "updateAppPermission"

    return-object v0

    .line 296
    :pswitch_1b
    const-string/jumbo v0, "setUserData"

    return-object v0

    .line 292
    :pswitch_1c
    const-string v0, "clearPassword"

    return-object v0

    .line 288
    :pswitch_1d
    const-string/jumbo v0, "setPassword"

    return-object v0

    .line 284
    :pswitch_1e
    const-string/jumbo v0, "setAuthToken"

    return-object v0

    .line 280
    :pswitch_1f
    const-string/jumbo v0, "peekAuthToken"

    return-object v0

    .line 276
    :pswitch_20
    const-string v0, "invalidateAuthToken"

    return-object v0

    .line 272
    :pswitch_21
    const-string v0, "copyAccountToUser"

    return-object v0

    .line 268
    :pswitch_22
    const-string/jumbo v0, "removeAccountExplicitly"

    return-object v0

    .line 264
    :pswitch_23
    const-string/jumbo v0, "removeAccountAsUser"

    return-object v0

    .line 260
    :pswitch_24
    const-string v0, "addAccountExplicitly"

    return-object v0

    .line 256
    :pswitch_25
    const-string v0, "getAccountsByFeatures"

    return-object v0

    .line 252
    :pswitch_26
    const-string v0, "getAccountByTypeAndFeatures"

    return-object v0

    .line 248
    :pswitch_27
    const-string v0, "hasFeatures"

    return-object v0

    .line 244
    :pswitch_28
    const-string v0, "getAccountsAsUser"

    return-object v0

    .line 240
    :pswitch_29
    const-string v0, "getAccountsByTypeForPackage"

    return-object v0

    .line 236
    :pswitch_2a
    const-string v0, "getAccountsForPackage"

    return-object v0

    .line 232
    :pswitch_2b
    const-string v0, "getAuthenticatorTypes"

    return-object v0

    .line 228
    :pswitch_2c
    const-string v0, "getUserData"

    return-object v0

    .line 224
    :pswitch_2d
    const-string v0, "getPassword"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 215
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1991
    const/16 v0, 0x2d

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 415
    invoke-static {p1}, Landroid/accounts/IAccountManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 419
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "android.accounts.IAccountManager"

    .line 420
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v9, v13, :cond_0

    const v0, 0xffffff

    if-gt v9, v0, :cond_0

    .line 421
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    :cond_0
    packed-switch v9, :pswitch_data_0

    .line 431
    packed-switch v9, :pswitch_data_1

    .line 1061
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 427
    :pswitch_0
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 428
    return v13

    .line 1053
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1054
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1055
    invoke-virtual {v8, v0}, Landroid/accounts/IAccountManager$Stub;->onAccountAccessed(Ljava/lang/String;)V

    .line 1056
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1057
    goto/16 :goto_0

    .line 1039
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_2
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 1041
    .local v0, "_arg0":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1043
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 1044
    .local v2, "_arg2":Landroid/os/UserHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1045
    invoke-virtual {v8, v0, v1, v2}, Landroid/accounts/IAccountManager$Stub;->createRequestAccountAccessIntentSenderAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/IntentSender;

    move-result-object v3

    .line 1046
    .local v3, "_result":Landroid/content/IntentSender;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1047
    invoke-virtual {v11, v3, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1048
    goto/16 :goto_0

    .line 1025
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/UserHandle;
    .end local v3    # "_result":Landroid/content/IntentSender;
    :pswitch_3
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 1027
    .restart local v0    # "_arg0":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1029
    .restart local v1    # "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 1030
    .restart local v2    # "_arg2":Landroid/os/UserHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1031
    invoke-virtual {v8, v0, v1, v2}, Landroid/accounts/IAccountManager$Stub;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    .line 1032
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1033
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1034
    goto/16 :goto_0

    .line 1014
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/UserHandle;
    .end local v3    # "_result":Z
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 1016
    .local v0, "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1017
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1018
    invoke-virtual {v8, v0, v1}, Landroid/accounts/IAccountManager$Stub;->unregisterAccountListener([Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1020
    goto/16 :goto_0

    .line 1003
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 1005
    .restart local v0    # "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1006
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1007
    invoke-virtual {v8, v0, v1}, Landroid/accounts/IAccountManager$Stub;->registerAccountListener([Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1009
    goto/16 :goto_0

    .line 991
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 993
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 994
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 995
    invoke-virtual {v8, v0, v1}, Landroid/accounts/IAccountManager$Stub;->getAccountsAndVisibilityForPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 996
    .local v2, "_result":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 997
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 998
    goto/16 :goto_0

    .line 979
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/util/Map;
    :pswitch_7
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 981
    .local v0, "_arg0":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 982
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 983
    invoke-virtual {v8, v0, v1}, Landroid/accounts/IAccountManager$Stub;->getAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v2

    .line 984
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 985
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 986
    goto/16 :goto_0

    .line 965
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_8
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 967
    .restart local v0    # "_arg0":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 969
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 970
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 971
    invoke-virtual {v8, v0, v1, v2}, Landroid/accounts/IAccountManager$Stub;->setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v3

    .line 972
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 973
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 974
    goto/16 :goto_0

    .line 946
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_9
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/accounts/Account;

    .line 948
    .local v6, "_arg0":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 950
    .local v7, "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/os/Bundle;

    .line 952
    .local v14, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v15

    .line 953
    .local v15, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v16

    .line 955
    .local v16, "_arg3":Ljava/util/Map;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 956
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 957
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v14

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/IAccountManager$Stub;->addAccountExplicitlyWithVisibility(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    .line 958
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 959
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 960
    goto/16 :goto_0

    .line 936
    .end local v0    # "_result":Z
    .end local v6    # "_arg0":Landroid/accounts/Account;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Landroid/os/Bundle;
    .end local v15    # "cl":Ljava/lang/ClassLoader;
    .end local v16    # "_arg3":Ljava/util/Map;
    .end local v17    # "_arg4":Ljava/lang/String;
    :pswitch_a
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 937
    .local v0, "_arg0":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 938
    invoke-virtual {v8, v0}, Landroid/accounts/IAccountManager$Stub;->getPackagesAndVisibilityForAccount(Landroid/accounts/Account;)Ljava/util/Map;

    move-result-object v1

    .line 939
    .local v1, "_result":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 940
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 941
    goto/16 :goto_0

    .line 923
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v1    # "_result":Ljava/util/Map;
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v0

    .line 925
    .local v0, "_arg0":Landroid/accounts/IAccountManagerResponse;
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 927
    .local v1, "_arg1":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 928
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 929
    invoke-virtual {v8, v0, v1, v2}, Landroid/accounts/IAccountManager$Stub;->isCredentialsUpdateSuggested(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 930
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 931
    goto/16 :goto_0

    .line 913
    .end local v0    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v1    # "_arg1":Landroid/accounts/Account;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_c
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 914
    .local v0, "_arg0":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 915
    invoke-virtual {v8, v0}, Landroid/accounts/IAccountManager$Stub;->someUserHasAccount(Landroid/accounts/Account;)Z

    move-result v1

    .line 916
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 917
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 918
    goto/16 :goto_0

    .line 896
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v1    # "_result":Z
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v6

    .line 898
    .local v6, "_arg0":Landroid/accounts/IAccountManagerResponse;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/Bundle;

    .line 900
    .local v7, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v14

    .line 902
    .local v14, "_arg2":Z
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/os/Bundle;

    .line 904
    .local v15, "_arg3":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 905
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 906
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/IAccountManager$Stub;->finishSessionAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;ZLandroid/os/Bundle;I)V

    .line 907
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 908
    goto/16 :goto_0

    .line 879
    .end local v6    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v7    # "_arg1":Landroid/os/Bundle;
    .end local v14    # "_arg2":Z
    .end local v15    # "_arg3":Landroid/os/Bundle;
    .end local v16    # "_arg4":I
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v6

    .line 881
    .restart local v6    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/accounts/Account;

    .line 883
    .local v7, "_arg1":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 885
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    .line 887
    .local v15, "_arg3":Z
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/Bundle;

    .line 888
    .local v16, "_arg4":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 889
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/IAccountManager$Stub;->startUpdateCredentialsSession(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 890
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 891
    goto/16 :goto_0

    .line 860
    .end local v6    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v7    # "_arg1":Landroid/accounts/Account;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Z
    .end local v16    # "_arg4":Landroid/os/Bundle;
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v7

    .line 862
    .local v7, "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 864
    .local v14, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 866
    .local v15, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v16

    .line 868
    .local v16, "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 870
    .local v17, "_arg4":Z
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/Bundle;

    .line 871
    .local v18, "_arg5":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 872
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/IAccountManager$Stub;->startAddAccountSession(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 873
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 874
    goto/16 :goto_0

    .line 850
    .end local v7    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":[Ljava/lang/String;
    .end local v17    # "_arg4":Z
    .end local v18    # "_arg5":Landroid/os/Bundle;
    :pswitch_10
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 851
    .restart local v0    # "_arg0":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 852
    invoke-virtual {v8, v0}, Landroid/accounts/IAccountManager$Stub;->getPreviousName(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    .line 853
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 854
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 855
    goto/16 :goto_0

    .line 837
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v0

    .line 839
    .local v0, "_arg0":Landroid/accounts/IAccountManagerResponse;
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 841
    .local v1, "_arg1":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 842
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 843
    invoke-virtual {v8, v0, v1, v2}, Landroid/accounts/IAccountManager$Stub;->renameAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 844
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 845
    goto/16 :goto_0

    .line 824
    .end local v0    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v1    # "_arg1":Landroid/accounts/Account;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 826
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 828
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 829
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 830
    invoke-virtual {v8, v0, v1, v2}, Landroid/accounts/IAccountManager$Stub;->addSharedAccountsFromParentUser(IILjava/lang/String;)V

    .line 831
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 832
    goto/16 :goto_0

    .line 811
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v0

    .line 813
    .local v0, "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 815
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 816
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 817
    invoke-virtual {v8, v0, v1, v2}, Landroid/accounts/IAccountManager$Stub;->getAuthTokenLabel(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 819
    goto/16 :goto_0

    .line 801
    .end local v0    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_14
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 802
    .local v0, "_arg0":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 803
    invoke-virtual {v8, v0}, Landroid/accounts/IAccountManager$Stub;->accountAuthenticated(Landroid/accounts/Account;)Z

    move-result v1

    .line 804
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 805
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 806
    goto/16 :goto_0

    .line 784
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v1    # "_result":Z
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v6

    .line 786
    .restart local v6    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/accounts/Account;

    .line 788
    .local v7, "_arg1":Landroid/accounts/Account;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/os/Bundle;

    .line 790
    .local v14, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    .line 792
    .local v15, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 793
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 794
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/IAccountManager$Stub;->confirmCredentialsAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;ZI)V

    .line 795
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 796
    goto/16 :goto_0

    .line 771
    .end local v6    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v7    # "_arg1":Landroid/accounts/Account;
    .end local v14    # "_arg2":Landroid/os/Bundle;
    .end local v15    # "_arg3":Z
    .end local v16    # "_arg4":I
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v0

    .line 773
    .local v0, "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 775
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 776
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 777
    invoke-virtual {v8, v0, v1, v2}, Landroid/accounts/IAccountManager$Stub;->editProperties(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Z)V

    .line 778
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 779
    goto/16 :goto_0

    .line 754
    .end local v0    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Z
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v6

    .line 756
    .restart local v6    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/accounts/Account;

    .line 758
    .restart local v7    # "_arg1":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 760
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    .line 762
    .restart local v15    # "_arg3":Z
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/Bundle;

    .line 763
    .local v16, "_arg4":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 764
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/IAccountManager$Stub;->updateCredentials(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 765
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    goto/16 :goto_0

    .line 733
    .end local v6    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v7    # "_arg1":Landroid/accounts/Account;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Z
    .end local v16    # "_arg4":Landroid/os/Bundle;
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v14

    .line 735
    .local v14, "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 737
    .local v15, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 739
    .local v16, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v17

    .line 741
    .local v17, "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 743
    .local v18, "_arg4":Z
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/Bundle;

    .line 745
    .local v19, "_arg5":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 746
    .local v20, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 747
    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v5, v18

    move-object/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/IAccountManager$Stub;->addAccountAsUser(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;I)V

    .line 748
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 749
    goto/16 :goto_0

    .line 714
    .end local v14    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v15    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v17    # "_arg3":[Ljava/lang/String;
    .end local v18    # "_arg4":Z
    .end local v19    # "_arg5":Landroid/os/Bundle;
    .end local v20    # "_arg6":I
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v7

    .line 716
    .local v7, "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 718
    .local v14, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 720
    .local v15, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v16

    .line 722
    .local v16, "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 724
    .local v17, "_arg4":Z
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/Bundle;

    .line 725
    .local v18, "_arg5":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 726
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/IAccountManager$Stub;->addAccount(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 727
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 728
    goto/16 :goto_0

    .line 695
    .end local v7    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":[Ljava/lang/String;
    .end local v17    # "_arg4":Z
    .end local v18    # "_arg5":Landroid/os/Bundle;
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v7

    .line 697
    .restart local v7    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/accounts/Account;

    .line 699
    .local v14, "_arg1":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 701
    .restart local v15    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 703
    .local v16, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 705
    .restart local v17    # "_arg4":Z
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/Bundle;

    .line 706
    .restart local v18    # "_arg5":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 707
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v14

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/IAccountManager$Stub;->getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;)V

    .line 708
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 709
    goto/16 :goto_0

    .line 680
    .end local v7    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v14    # "_arg1":Landroid/accounts/Account;
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":Z
    .end local v17    # "_arg4":Z
    .end local v18    # "_arg5":Landroid/os/Bundle;
    :pswitch_1b
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 682
    .local v0, "_arg0":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 684
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 686
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 687
    .local v3, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 688
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/accounts/IAccountManager$Stub;->updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V

    .line 689
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 690
    goto/16 :goto_0

    .line 667
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Z
    :pswitch_1c
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 669
    .restart local v0    # "_arg0":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 671
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 672
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 673
    invoke-virtual {v8, v0, v1, v2}, Landroid/accounts/IAccountManager$Stub;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 675
    goto/16 :goto_0

    .line 658
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_1d
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 659
    .restart local v0    # "_arg0":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 660
    invoke-virtual {v8, v0}, Landroid/accounts/IAccountManager$Stub;->clearPassword(Landroid/accounts/Account;)V

    .line 661
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    goto/16 :goto_0

    .line 647
    .end local v0    # "_arg0":Landroid/accounts/Account;
    :pswitch_1e
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 649
    .restart local v0    # "_arg0":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 650
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 651
    invoke-virtual {v8, v0, v1}, Landroid/accounts/IAccountManager$Stub;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 652
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    goto/16 :goto_0

    .line 634
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_1f
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 636
    .restart local v0    # "_arg0":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 638
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 639
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 640
    invoke-virtual {v8, v0, v1, v2}, Landroid/accounts/IAccountManager$Stub;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 642
    goto/16 :goto_0

    .line 622
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_20
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 624
    .restart local v0    # "_arg0":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 625
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 626
    invoke-virtual {v8, v0, v1}, Landroid/accounts/IAccountManager$Stub;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 627
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 628
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 629
    goto/16 :goto_0

    .line 611
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 613
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 614
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 615
    invoke-virtual {v8, v0, v1}, Landroid/accounts/IAccountManager$Stub;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 617
    goto/16 :goto_0

    .line 596
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v0

    .line 598
    .local v0, "_arg0":Landroid/accounts/IAccountManagerResponse;
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 600
    .local v1, "_arg1":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 602
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 603
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 604
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/accounts/IAccountManager$Stub;->copyAccountToUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V

    .line 605
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 606
    goto/16 :goto_0

    .line 586
    .end local v0    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v1    # "_arg1":Landroid/accounts/Account;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_23
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 587
    .local v0, "_arg0":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 588
    invoke-virtual {v8, v0}, Landroid/accounts/IAccountManager$Stub;->removeAccountExplicitly(Landroid/accounts/Account;)Z

    move-result v1

    .line 589
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 591
    goto/16 :goto_0

    .line 571
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v1    # "_result":Z
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v0

    .line 573
    .local v0, "_arg0":Landroid/accounts/IAccountManagerResponse;
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 575
    .local v1, "_arg1":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 577
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 578
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 579
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/accounts/IAccountManager$Stub;->removeAccountAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;ZI)V

    .line 580
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    goto/16 :goto_0

    .line 555
    .end local v0    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v1    # "_arg1":Landroid/accounts/Account;
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":I
    :pswitch_25
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 557
    .local v0, "_arg0":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 559
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 561
    .local v2, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 562
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 563
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/accounts/IAccountManager$Stub;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v4

    .line 564
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 566
    goto/16 :goto_0

    .line 540
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v0

    .line 542
    .local v0, "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 544
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 546
    .local v2, "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 547
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 548
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/accounts/IAccountManager$Stub;->getAccountsByFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    goto/16 :goto_0

    .line 525
    .end local v0    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":[Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v0

    .line 527
    .restart local v0    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 529
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 531
    .restart local v2    # "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 532
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 533
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/accounts/IAccountManager$Stub;->getAccountByTypeAndFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    goto/16 :goto_0

    .line 510
    .end local v0    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":[Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v0

    .line 512
    .restart local v0    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 514
    .local v1, "_arg1":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 516
    .restart local v2    # "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 517
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 518
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/accounts/IAccountManager$Stub;->hasFeatures(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    goto/16 :goto_0

    .line 496
    .end local v0    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v1    # "_arg1":Landroid/accounts/Account;
    .end local v2    # "_arg2":[Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 500
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 501
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 502
    invoke-virtual {v8, v0, v1, v2}, Landroid/accounts/IAccountManager$Stub;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    .line 503
    .local v3, "_result":[Landroid/accounts/Account;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    invoke-virtual {v11, v3, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 505
    goto/16 :goto_0

    .line 482
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":[Landroid/accounts/Account;
    :pswitch_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 484
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 486
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 487
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 488
    invoke-virtual {v8, v0, v1, v2}, Landroid/accounts/IAccountManager$Stub;->getAccountsByTypeForPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    .line 489
    .restart local v3    # "_result":[Landroid/accounts/Account;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    invoke-virtual {v11, v3, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 491
    goto :goto_0

    .line 468
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":[Landroid/accounts/Account;
    :pswitch_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 470
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 472
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 473
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 474
    invoke-virtual {v8, v0, v1, v2}, Landroid/accounts/IAccountManager$Stub;->getAccountsForPackage(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    .line 475
    .restart local v3    # "_result":[Landroid/accounts/Account;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    invoke-virtual {v11, v3, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 477
    goto :goto_0

    .line 458
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":[Landroid/accounts/Account;
    :pswitch_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 459
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 460
    invoke-virtual {v8, v0}, Landroid/accounts/IAccountManager$Stub;->getAuthenticatorTypes(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    .line 461
    .local v1, "_result":[Landroid/accounts/AuthenticatorDescription;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 463
    goto :goto_0

    .line 446
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[Landroid/accounts/AuthenticatorDescription;
    :pswitch_2d
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 448
    .local v0, "_arg0":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 449
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 450
    invoke-virtual {v8, v0, v1}, Landroid/accounts/IAccountManager$Stub;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 451
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 453
    goto :goto_0

    .line 436
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_2e
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 437
    .restart local v0    # "_arg0":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 438
    invoke-virtual {v8, v0}, Landroid/accounts/IAccountManager$Stub;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    .line 439
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 441
    nop

    .line 1064
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v1    # "_result":Ljava/lang/String;
    :goto_0
    return v13

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
