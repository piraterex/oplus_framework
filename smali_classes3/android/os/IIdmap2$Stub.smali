.class public abstract Landroid/os/IIdmap2$Stub;
.super Landroid/os/Binder;
.source "IIdmap2.java"

# interfaces
.implements Landroid/os/IIdmap2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IIdmap2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IIdmap2$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acquireFabricatedOverlayIterator:I = 0x7

.field static final blacklist TRANSACTION_createFabricatedOverlay:I = 0x5

.field static final blacklist TRANSACTION_createIdmap:I = 0x4

.field static final blacklist TRANSACTION_deleteFabricatedOverlay:I = 0x6

.field static final blacklist TRANSACTION_dumpIdmap:I = 0xa

.field static final blacklist TRANSACTION_getIdmapPath:I = 0x1

.field static final blacklist TRANSACTION_nextFabricatedOverlayInfos:I = 0x9

.field static final blacklist TRANSACTION_releaseFabricatedOverlayIterator:I = 0x8

.field static final blacklist TRANSACTION_removeIdmap:I = 0x2

.field static final blacklist TRANSACTION_verifyIdmap:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 60
    const-string v0, "android.os.IIdmap2"

    invoke-virtual {p0, p0, v0}, Landroid/os/IIdmap2$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/IIdmap2;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 68
    if-nez p0, :cond_0

    .line 69
    const/4 v0, 0x0

    return-object v0

    .line 71
    :cond_0
    const-string v0, "android.os.IIdmap2"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 72
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IIdmap2;

    if-eqz v1, :cond_1

    .line 73
    move-object v1, v0

    check-cast v1, Landroid/os/IIdmap2;

    return-object v1

    .line 75
    :cond_1
    new-instance v1, Landroid/os/IIdmap2$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IIdmap2$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 84
    packed-switch p0, :pswitch_data_0

    .line 128
    const/4 v0, 0x0

    return-object v0

    .line 124
    :pswitch_0
    const-string v0, "dumpIdmap"

    return-object v0

    .line 120
    :pswitch_1
    const-string/jumbo v0, "nextFabricatedOverlayInfos"

    return-object v0

    .line 116
    :pswitch_2
    const-string/jumbo v0, "releaseFabricatedOverlayIterator"

    return-object v0

    .line 112
    :pswitch_3
    const-string v0, "acquireFabricatedOverlayIterator"

    return-object v0

    .line 108
    :pswitch_4
    const-string v0, "deleteFabricatedOverlay"

    return-object v0

    .line 104
    :pswitch_5
    const-string v0, "createFabricatedOverlay"

    return-object v0

    .line 100
    :pswitch_6
    const-string v0, "createIdmap"

    return-object v0

    .line 96
    :pswitch_7
    const-string/jumbo v0, "verifyIdmap"

    return-object v0

    .line 92
    :pswitch_8
    const-string/jumbo v0, "removeIdmap"

    return-object v0

    .line 88
    :pswitch_9
    const-string v0, "getIdmapPath"

    return-object v0

    nop

    :pswitch_data_0
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 79
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 485
    const/16 v0, 0x9

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 135
    invoke-static {p1}, Landroid/os/IIdmap2$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 139
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "android.os.IIdmap2"

    .line 140
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 141
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    :cond_0
    packed-switch v8, :pswitch_data_0

    .line 151
    packed-switch v8, :pswitch_data_1

    .line 268
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 147
    :pswitch_0
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    return v12

    .line 259
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 261
    invoke-virtual {v7, v0}, Landroid/os/IIdmap2$Stub;->dumpIdmap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 264
    goto/16 :goto_0

    .line 251
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/IIdmap2$Stub;->nextFabricatedOverlayInfos()Ljava/util/List;

    move-result-object v0

    .line 252
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/FabricatedOverlayInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 254
    goto/16 :goto_0

    .line 245
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/FabricatedOverlayInfo;>;"
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/IIdmap2$Stub;->releaseFabricatedOverlayIterator()V

    .line 246
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    goto/16 :goto_0

    .line 239
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/os/IIdmap2$Stub;->acquireFabricatedOverlayIterator()V

    .line 240
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    goto/16 :goto_0

    .line 230
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-virtual {v7, v0}, Landroid/os/IIdmap2$Stub;->deleteFabricatedOverlay(Ljava/lang/String;)Z

    move-result v1

    .line 233
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 235
    goto/16 :goto_0

    .line 220
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_6
    sget-object v0, Landroid/os/FabricatedOverlayInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/FabricatedOverlayInternal;

    .line 221
    .local v0, "_arg0":Landroid/os/FabricatedOverlayInternal;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 222
    invoke-virtual {v7, v0}, Landroid/os/IIdmap2$Stub;->createFabricatedOverlay(Landroid/os/FabricatedOverlayInternal;)Landroid/os/FabricatedOverlayInfo;

    move-result-object v1

    .line 223
    .local v1, "_result":Landroid/os/FabricatedOverlayInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 225
    goto/16 :goto_0

    .line 200
    .end local v0    # "_arg0":Landroid/os/FabricatedOverlayInternal;
    .end local v1    # "_result":Landroid/os/FabricatedOverlayInfo;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 202
    .local v13, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 204
    .local v14, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 206
    .local v15, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 208
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 210
    .local v17, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 211
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/os/IIdmap2$Stub;->createIdmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    goto :goto_0

    .line 180
    .end local v0    # "_result":Ljava/lang/String;
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":Z
    .end local v18    # "_arg5":I
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 182
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 184
    .restart local v14    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 186
    .restart local v15    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 188
    .restart local v16    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 190
    .restart local v17    # "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 191
    .restart local v18    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 192
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/os/IIdmap2$Stub;->verifyIdmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)Z

    move-result v0

    .line 193
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 195
    goto :goto_0

    .line 168
    .end local v0    # "_result":Z
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":Z
    .end local v18    # "_arg5":I
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 171
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 172
    invoke-virtual {v7, v0, v1}, Landroid/os/IIdmap2$Stub;->removeIdmap(Ljava/lang/String;I)Z

    move-result v2

    .line 173
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 175
    goto :goto_0

    .line 156
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 158
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 159
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 160
    invoke-virtual {v7, v0, v1}, Landroid/os/IIdmap2$Stub;->getIdmapPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    nop

    .line 271
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/lang/String;
    :goto_0
    return v12

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
