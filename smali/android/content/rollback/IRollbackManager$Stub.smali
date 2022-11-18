.class public abstract Landroid/content/rollback/IRollbackManager$Stub;
.super Landroid/os/Binder;
.source "IRollbackManager.java"

# interfaces
.implements Landroid/content/rollback/IRollbackManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/rollback/IRollbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/rollback/IRollbackManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_blockRollbackManager:I = 0x8

.field static final blacklist TRANSACTION_commitRollback:I = 0x3

.field static final blacklist TRANSACTION_expireRollbackForPackage:I = 0x6

.field static final blacklist TRANSACTION_getAvailableRollbacks:I = 0x1

.field static final blacklist TRANSACTION_getRecentlyCommittedRollbacks:I = 0x2

.field static final blacklist TRANSACTION_notifyStagedSession:I = 0x7

.field static final blacklist TRANSACTION_reloadPersistedData:I = 0x5

.field static final blacklist TRANSACTION_snapshotAndRestoreUserData:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 61
    const-string v0, "android.content.rollback.IRollbackManager"

    invoke-virtual {p0, p0, v0}, Landroid/content/rollback/IRollbackManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/content/rollback/IRollbackManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 69
    if-nez p0, :cond_0

    .line 70
    const/4 v0, 0x0

    return-object v0

    .line 72
    :cond_0
    const-string v0, "android.content.rollback.IRollbackManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 73
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/rollback/IRollbackManager;

    if-eqz v1, :cond_1

    .line 74
    move-object v1, v0

    check-cast v1, Landroid/content/rollback/IRollbackManager;

    return-object v1

    .line 76
    :cond_1
    new-instance v1, Landroid/content/rollback/IRollbackManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/rollback/IRollbackManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 85
    packed-switch p0, :pswitch_data_0

    .line 121
    const/4 v0, 0x0

    return-object v0

    .line 117
    :pswitch_0
    const-string v0, "blockRollbackManager"

    return-object v0

    .line 113
    :pswitch_1
    const-string/jumbo v0, "notifyStagedSession"

    return-object v0

    .line 109
    :pswitch_2
    const-string v0, "expireRollbackForPackage"

    return-object v0

    .line 105
    :pswitch_3
    const-string/jumbo v0, "reloadPersistedData"

    return-object v0

    .line 101
    :pswitch_4
    const-string/jumbo v0, "snapshotAndRestoreUserData"

    return-object v0

    .line 97
    :pswitch_5
    const-string v0, "commitRollback"

    return-object v0

    .line 93
    :pswitch_6
    const-string v0, "getRecentlyCommittedRollbacks"

    return-object v0

    .line 89
    :pswitch_7
    const-string v0, "getAvailableRollbacks"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 80
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 408
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 128
    invoke-static {p1}, Landroid/content/rollback/IRollbackManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 132
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "android.content.rollback.IRollbackManager"

    .line 133
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v9, v13, :cond_0

    const v0, 0xffffff

    if-gt v9, v0, :cond_0

    .line 134
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    :cond_0
    packed-switch v9, :pswitch_data_0

    .line 144
    packed-switch v9, :pswitch_data_1

    .line 230
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 140
    :pswitch_0
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    return v13

    .line 222
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 223
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-virtual {v8, v0, v1}, Landroid/content/rollback/IRollbackManager$Stub;->blockRollbackManager(J)V

    .line 225
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    goto/16 :goto_0

    .line 212
    .end local v0    # "_arg0":J
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 213
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    invoke-virtual {v8, v0}, Landroid/content/rollback/IRollbackManager$Stub;->notifyStagedSession(I)I

    move-result v1

    .line 215
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    goto/16 :goto_0

    .line 203
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 205
    invoke-virtual {v8, v0}, Landroid/content/rollback/IRollbackManager$Stub;->expireRollbackForPackage(Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    goto/16 :goto_0

    .line 196
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/rollback/IRollbackManager$Stub;->reloadPersistedData()V

    .line 197
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    goto :goto_0

    .line 178
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 180
    .local v14, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v15

    .line 182
    .local v15, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 184
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 186
    .local v17, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 188
    .local v19, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 189
    .local v20, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v15

    move/from16 v3, v16

    move-wide/from16 v4, v17

    move-object/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/content/rollback/IRollbackManager$Stub;->snapshotAndRestoreUserData(Ljava/lang/String;[IIJLjava/lang/String;I)V

    .line 191
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    goto :goto_0

    .line 163
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v15    # "_arg1":[I
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":J
    .end local v19    # "_arg4":Ljava/lang/String;
    .end local v20    # "_arg5":I
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 165
    .local v0, "_arg0":I
    sget-object v1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ParceledListSlice;

    .line 167
    .local v1, "_arg1":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "_arg2":Ljava/lang/String;
    sget-object v3, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentSender;

    .line 170
    .local v3, "_arg3":Landroid/content/IntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/rollback/IRollbackManager$Stub;->commitRollback(ILandroid/content/pm/ParceledListSlice;Ljava/lang/String;Landroid/content/IntentSender;)V

    .line 172
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    goto :goto_0

    .line 155
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/content/pm/ParceledListSlice;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Landroid/content/IntentSender;
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Landroid/content/rollback/IRollbackManager$Stub;->getRecentlyCommittedRollbacks()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 156
    .local v0, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 158
    goto :goto_0

    .line 148
    .end local v0    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Landroid/content/rollback/IRollbackManager$Stub;->getAvailableRollbacks()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 149
    .restart local v0    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 151
    nop

    .line 233
    .end local v0    # "_result":Landroid/content/pm/ParceledListSlice;
    :goto_0
    return v13

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
