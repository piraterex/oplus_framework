.class public abstract Landroid/app/slice/ISliceManager$Stub;
.super Landroid/os/Binder;
.source "ISliceManager.java"

# interfaces
.implements Landroid/app/slice/ISliceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/slice/ISliceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/slice/ISliceManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.slice.ISliceManager"

.field static final greylist-max-o TRANSACTION_applyRestore:I = 0x7

.field static final greylist-max-o TRANSACTION_checkSlicePermission:I = 0xa

.field static final greylist-max-o TRANSACTION_getBackupPayload:I = 0x6

.field static final greylist-max-o TRANSACTION_getPinnedSlices:I = 0x5

.field static final greylist-max-o TRANSACTION_getPinnedSpecs:I = 0x4

.field static final greylist-max-o TRANSACTION_grantPermissionFromUser:I = 0xb

.field static final greylist-max-o TRANSACTION_grantSlicePermission:I = 0x8

.field static final greylist-max-o TRANSACTION_hasSliceAccess:I = 0x3

.field static final greylist-max-o TRANSACTION_pinSlice:I = 0x1

.field static final greylist-max-o TRANSACTION_revokeSlicePermission:I = 0x9

.field static final greylist-max-o TRANSACTION_unpinSlice:I = 0x2


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 61
    const-string v0, "android.app.slice.ISliceManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/slice/ISliceManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/app/slice/ISliceManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 69
    if-nez p0, :cond_0

    .line 70
    const/4 v0, 0x0

    return-object v0

    .line 72
    :cond_0
    const-string v0, "android.app.slice.ISliceManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 73
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/slice/ISliceManager;

    if-eqz v1, :cond_1

    .line 74
    move-object v1, v0

    check-cast v1, Landroid/app/slice/ISliceManager;

    return-object v1

    .line 76
    :cond_1
    new-instance v1, Landroid/app/slice/ISliceManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/slice/ISliceManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 85
    packed-switch p0, :pswitch_data_0

    .line 133
    const/4 v0, 0x0

    return-object v0

    .line 129
    :pswitch_0
    const-string v0, "grantPermissionFromUser"

    return-object v0

    .line 125
    :pswitch_1
    const-string v0, "checkSlicePermission"

    return-object v0

    .line 121
    :pswitch_2
    const-string/jumbo v0, "revokeSlicePermission"

    return-object v0

    .line 117
    :pswitch_3
    const-string v0, "grantSlicePermission"

    return-object v0

    .line 113
    :pswitch_4
    const-string v0, "applyRestore"

    return-object v0

    .line 109
    :pswitch_5
    const-string v0, "getBackupPayload"

    return-object v0

    .line 105
    :pswitch_6
    const-string v0, "getPinnedSlices"

    return-object v0

    .line 101
    :pswitch_7
    const-string v0, "getPinnedSpecs"

    return-object v0

    .line 97
    :pswitch_8
    const-string v0, "hasSliceAccess"

    return-object v0

    .line 93
    :pswitch_9
    const-string/jumbo v0, "unpinSlice"

    return-object v0

    .line 89
    :pswitch_a
    const-string/jumbo v0, "pinSlice"

    return-object v0

    nop

    :pswitch_data_0
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

    .line 538
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 140
    invoke-static {p1}, Landroid/app/slice/ISliceManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 144
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "android.app.slice.ISliceManager"

    .line 145
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 146
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    :cond_0
    packed-switch v8, :pswitch_data_0

    .line 156
    packed-switch v8, :pswitch_data_1

    .line 302
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 152
    :pswitch_0
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    return v12

    .line 288
    :pswitch_1
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 290
    .local v0, "_arg0":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 295
    .local v3, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 296
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/app/slice/ISliceManager$Stub;->grantPermissionFromUser(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 297
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    goto/16 :goto_0

    .line 268
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Z
    :pswitch_2
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/net/Uri;

    .line 270
    .local v13, "_arg0":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 272
    .local v14, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 274
    .local v15, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 276
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 278
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v18

    .line 279
    .local v18, "_arg5":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 280
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/app/slice/ISliceManager$Stub;->checkSlicePermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)I

    move-result v0

    .line 281
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    goto/16 :goto_0

    .line 255
    .end local v0    # "_result":I
    .end local v13    # "_arg0":Landroid/net/Uri;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":[Ljava/lang/String;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 259
    .restart local v1    # "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 260
    .local v2, "_arg2":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 261
    invoke-virtual {v7, v0, v1, v2}, Landroid/app/slice/ISliceManager$Stub;->revokeSlicePermission(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 262
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    goto/16 :goto_0

    .line 242
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/net/Uri;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 244
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 246
    .restart local v1    # "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 247
    .restart local v2    # "_arg2":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {v7, v0, v1, v2}, Landroid/app/slice/ISliceManager$Stub;->grantSlicePermission(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 249
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    goto/16 :goto_0

    .line 231
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/net/Uri;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 233
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 234
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {v7, v0, v1}, Landroid/app/slice/ISliceManager$Stub;->applyRestore([BI)V

    .line 236
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    goto/16 :goto_0

    .line 221
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 222
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual {v7, v0}, Landroid/app/slice/ISliceManager$Stub;->getBackupPayload(I)[B

    move-result-object v1

    .line 224
    .local v1, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 226
    goto/16 :goto_0

    .line 211
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[B
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    invoke-virtual {v7, v0}, Landroid/app/slice/ISliceManager$Stub;->getPinnedSlices(Ljava/lang/String;)[Landroid/net/Uri;

    move-result-object v1

    .line 214
    .local v1, "_result":[Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 216
    goto :goto_0

    .line 199
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":[Landroid/net/Uri;
    :pswitch_8
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 201
    .local v0, "_arg0":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 203
    invoke-virtual {v7, v0, v1}, Landroid/app/slice/ISliceManager$Stub;->getPinnedSpecs(Landroid/net/Uri;Ljava/lang/String;)[Landroid/app/slice/SliceSpec;

    move-result-object v2

    .line 204
    .local v2, "_result":[Landroid/app/slice/SliceSpec;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {v10, v2, v12}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 206
    goto :goto_0

    .line 189
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":[Landroid/app/slice/SliceSpec;
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 191
    invoke-virtual {v7, v0}, Landroid/app/slice/ISliceManager$Stub;->hasSliceAccess(Ljava/lang/String;)Z

    move-result v1

    .line 192
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 194
    goto :goto_0

    .line 176
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 178
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 180
    .local v1, "_arg1":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 181
    .local v2, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 182
    invoke-virtual {v7, v0, v1, v2}, Landroid/app/slice/ISliceManager$Stub;->unpinSlice(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)V

    .line 183
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    goto :goto_0

    .line 161
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/net/Uri;
    .end local v2    # "_arg2":Landroid/os/IBinder;
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 163
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 165
    .restart local v1    # "_arg1":Landroid/net/Uri;
    sget-object v2, Landroid/app/slice/SliceSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/app/slice/SliceSpec;

    .line 167
    .local v2, "_arg2":[Landroid/app/slice/SliceSpec;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 168
    .local v3, "_arg3":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/app/slice/ISliceManager$Stub;->pinSlice(Ljava/lang/String;Landroid/net/Uri;[Landroid/app/slice/SliceSpec;Landroid/os/IBinder;)V

    .line 170
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    nop

    .line 305
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/net/Uri;
    .end local v2    # "_arg2":[Landroid/app/slice/SliceSpec;
    .end local v3    # "_arg3":Landroid/os/IBinder;
    :goto_0
    return v12

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
