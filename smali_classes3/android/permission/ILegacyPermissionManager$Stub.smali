.class public abstract Landroid/permission/ILegacyPermissionManager$Stub;
.super Landroid/os/Binder;
.source "ILegacyPermissionManager.java"

# interfaces
.implements Landroid/permission/ILegacyPermissionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/ILegacyPermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/permission/ILegacyPermissionManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_checkDeviceIdentifierAccess:I = 0x1

.field static final blacklist TRANSACTION_checkPhoneNumberAccess:I = 0x2

.field static final blacklist TRANSACTION_grantDefaultPermissionsToActiveLuiApp:I = 0x7

.field static final blacklist TRANSACTION_grantDefaultPermissionsToCarrierServiceApp:I = 0x9

.field static final blacklist TRANSACTION_grantDefaultPermissionsToEnabledCarrierApps:I = 0x3

.field static final blacklist TRANSACTION_grantDefaultPermissionsToEnabledImsServices:I = 0x4

.field static final blacklist TRANSACTION_grantDefaultPermissionsToEnabledTelephonyDataServices:I = 0x5

.field static final blacklist TRANSACTION_revokeDefaultPermissionsFromDisabledTelephonyDataServices:I = 0x6

.field static final blacklist TRANSACTION_revokeDefaultPermissionsFromLuiApps:I = 0x8


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 56
    const-string v0, "android.permission.ILegacyPermissionManager"

    invoke-virtual {p0, p0, v0}, Landroid/permission/ILegacyPermissionManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/permission/ILegacyPermissionManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 64
    if-nez p0, :cond_0

    .line 65
    const/4 v0, 0x0

    return-object v0

    .line 67
    :cond_0
    const-string v0, "android.permission.ILegacyPermissionManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 68
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/permission/ILegacyPermissionManager;

    if-eqz v1, :cond_1

    .line 69
    move-object v1, v0

    check-cast v1, Landroid/permission/ILegacyPermissionManager;

    return-object v1

    .line 71
    :cond_1
    new-instance v1, Landroid/permission/ILegacyPermissionManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/permission/ILegacyPermissionManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 80
    packed-switch p0, :pswitch_data_0

    .line 120
    const/4 v0, 0x0

    return-object v0

    .line 116
    :pswitch_0
    const-string/jumbo v0, "grantDefaultPermissionsToCarrierServiceApp"

    return-object v0

    .line 112
    :pswitch_1
    const-string/jumbo v0, "revokeDefaultPermissionsFromLuiApps"

    return-object v0

    .line 108
    :pswitch_2
    const-string/jumbo v0, "grantDefaultPermissionsToActiveLuiApp"

    return-object v0

    .line 104
    :pswitch_3
    const-string/jumbo v0, "revokeDefaultPermissionsFromDisabledTelephonyDataServices"

    return-object v0

    .line 100
    :pswitch_4
    const-string/jumbo v0, "grantDefaultPermissionsToEnabledTelephonyDataServices"

    return-object v0

    .line 96
    :pswitch_5
    const-string/jumbo v0, "grantDefaultPermissionsToEnabledImsServices"

    return-object v0

    .line 92
    :pswitch_6
    const-string/jumbo v0, "grantDefaultPermissionsToEnabledCarrierApps"

    return-object v0

    .line 88
    :pswitch_7
    const-string v0, "checkPhoneNumberAccess"

    return-object v0

    .line 84
    :pswitch_8
    const-string v0, "checkDeviceIdentifierAccess"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 75
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 449
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 127
    invoke-static {p1}, Landroid/permission/ILegacyPermissionManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 131
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p3

    const-string v9, "android.permission.ILegacyPermissionManager"

    .line 132
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v7, v10, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 133
    move-object/from16 v11, p2

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_0
    move-object/from16 v11, p2

    .line 135
    :goto_0
    packed-switch v7, :pswitch_data_0

    .line 143
    packed-switch v7, :pswitch_data_1

    .line 260
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 139
    :pswitch_0
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    return v10

    .line 250
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 253
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 254
    invoke-virtual {v6, v0, v1}, Landroid/permission/ILegacyPermissionManager$Stub;->grantDefaultPermissionsToCarrierServiceApp(Ljava/lang/String;I)V

    .line 255
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    goto/16 :goto_1

    .line 239
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 242
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 243
    invoke-virtual {v6, v0, v1}, Landroid/permission/ILegacyPermissionManager$Stub;->revokeDefaultPermissionsFromLuiApps([Ljava/lang/String;I)V

    .line 244
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    goto/16 :goto_1

    .line 228
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 231
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-virtual {v6, v0, v1}, Landroid/permission/ILegacyPermissionManager$Stub;->grantDefaultPermissionsToActiveLuiApp(Ljava/lang/String;I)V

    .line 233
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    goto/16 :goto_1

    .line 217
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 220
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 221
    invoke-virtual {v6, v0, v1}, Landroid/permission/ILegacyPermissionManager$Stub;->revokeDefaultPermissionsFromDisabledTelephonyDataServices([Ljava/lang/String;I)V

    .line 222
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    goto/16 :goto_1

    .line 206
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 208
    .restart local v0    # "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 209
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 210
    invoke-virtual {v6, v0, v1}, Landroid/permission/ILegacyPermissionManager$Stub;->grantDefaultPermissionsToEnabledTelephonyDataServices([Ljava/lang/String;I)V

    .line 211
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    goto/16 :goto_1

    .line 195
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 197
    .restart local v0    # "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 198
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    invoke-virtual {v6, v0, v1}, Landroid/permission/ILegacyPermissionManager$Stub;->grantDefaultPermissionsToEnabledImsServices([Ljava/lang/String;I)V

    .line 200
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    goto/16 :goto_1

    .line 184
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 186
    .restart local v0    # "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 187
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 188
    invoke-virtual {v6, v0, v1}, Landroid/permission/ILegacyPermissionManager$Stub;->grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;I)V

    .line 189
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    goto :goto_1

    .line 166
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 168
    .local v12, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 170
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 172
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 174
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 175
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/permission/ILegacyPermissionManager$Stub;->checkPhoneNumberAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    .line 177
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    goto :goto_1

    .line 148
    .end local v0    # "_result":I
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 150
    .restart local v12    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 152
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 154
    .restart local v14    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 156
    .restart local v15    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 157
    .restart local v16    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 158
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/permission/ILegacyPermissionManager$Stub;->checkDeviceIdentifierAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    .line 159
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    nop

    .line 263
    .end local v0    # "_result":I
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :goto_1
    return v10

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
