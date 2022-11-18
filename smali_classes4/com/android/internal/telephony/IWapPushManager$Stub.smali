.class public abstract Lcom/android/internal/telephony/IWapPushManager$Stub;
.super Landroid/os/Binder;
.source "IWapPushManager.java"

# interfaces
.implements Lcom/android/internal/telephony/IWapPushManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IWapPushManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IWapPushManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IWapPushManager"

.field static final greylist-max-o TRANSACTION_addPackage:I = 0x2

.field static final greylist-max-o TRANSACTION_deletePackage:I = 0x4

.field static final greylist-max-o TRANSACTION_processMessage:I = 0x1

.field static final greylist-max-o TRANSACTION_updatePackage:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 54
    const-string v0, "com.android.internal.telephony.IWapPushManager"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IWapPushManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IWapPushManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 62
    if-nez p0, :cond_0

    .line 63
    const/4 v0, 0x0

    return-object v0

    .line 65
    :cond_0
    const-string v0, "com.android.internal.telephony.IWapPushManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 66
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/IWapPushManager;

    if-eqz v1, :cond_1

    .line 67
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/IWapPushManager;

    return-object v1

    .line 69
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/IWapPushManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/IWapPushManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 78
    packed-switch p0, :pswitch_data_0

    .line 98
    const/4 v0, 0x0

    return-object v0

    .line 94
    :pswitch_0
    const-string v0, "deletePackage"

    return-object v0

    .line 90
    :pswitch_1
    const-string/jumbo v0, "updatePackage"

    return-object v0

    .line 86
    :pswitch_2
    const-string v0, "addPackage"

    return-object v0

    .line 82
    :pswitch_3
    const-string/jumbo v0, "processMessage"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 73
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 334
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 105
    invoke-static {p1}, Lcom/android/internal/telephony/IWapPushManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 109
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "com.android.internal.telephony.IWapPushManager"

    .line 110
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v9, v13, :cond_0

    const v0, 0xffffff

    if-gt v9, v0, :cond_0

    .line 111
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    :cond_0
    packed-switch v9, :pswitch_data_0

    .line 121
    packed-switch v9, :pswitch_data_1

    .line 199
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 117
    :pswitch_0
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    return v13

    .line 184
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 192
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/internal/telephony/IWapPushManager$Stub;->deletePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 193
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 195
    goto/16 :goto_0

    .line 162
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 164
    .local v14, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 166
    .local v15, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 168
    .local v16, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 170
    .local v17, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 172
    .local v18, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    .line 174
    .local v19, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    .line 175
    .local v20, "_arg6":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/IWapPushManager$Stub;->updatePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)Z

    move-result v0

    .line 177
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 179
    goto :goto_0

    .line 140
    .end local v0    # "_result":Z
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v15    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v17    # "_arg3":Ljava/lang/String;
    .end local v18    # "_arg4":I
    .end local v19    # "_arg5":Z
    .end local v20    # "_arg6":Z
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 142
    .restart local v14    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 144
    .restart local v15    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 146
    .restart local v16    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 148
    .restart local v17    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 150
    .restart local v18    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    .line 152
    .restart local v19    # "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    .line 153
    .restart local v20    # "_arg6":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/IWapPushManager$Stub;->addPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)Z

    move-result v0

    .line 155
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 157
    goto :goto_0

    .line 126
    .end local v0    # "_result":Z
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v15    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v17    # "_arg3":Ljava/lang/String;
    .end local v18    # "_arg4":I
    .end local v19    # "_arg5":Z
    .end local v20    # "_arg6":Z
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 130
    .restart local v1    # "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 131
    .local v2, "_arg2":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 132
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/internal/telephony/IWapPushManager$Stub;->processMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)I

    move-result v3

    .line 133
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    nop

    .line 202
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/content/Intent;
    .end local v3    # "_result":I
    :goto_0
    return v13

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
