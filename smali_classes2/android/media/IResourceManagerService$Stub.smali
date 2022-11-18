.class public abstract Landroid/media/IResourceManagerService$Stub;
.super Landroid/os/Binder;
.source "IResourceManagerService.java"

# interfaces
.implements Landroid/media/IResourceManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IResourceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IResourceManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addResource:I = 0x2

.field static final blacklist TRANSACTION_config:I = 0x1

.field static final blacklist TRANSACTION_markClientForPendingRemoval:I = 0x8

.field static final blacklist TRANSACTION_overridePid:I = 0x6

.field static final blacklist TRANSACTION_overrideProcessInfo:I = 0x7

.field static final blacklist TRANSACTION_reclaimResource:I = 0x5

.field static final blacklist TRANSACTION_reclaimResourcesFromClientsPendingRemoval:I = 0x9

.field static final blacklist TRANSACTION_removeClient:I = 0x4

.field static final blacklist TRANSACTION_removeResource:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 127
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 128
    const-string v0, "android.media.IResourceManagerService"

    invoke-virtual {p0, p0, v0}, Landroid/media/IResourceManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/IResourceManagerService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 136
    if-nez p0, :cond_0

    .line 137
    const/4 v0, 0x0

    return-object v0

    .line 139
    :cond_0
    const-string v0, "android.media.IResourceManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 140
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/IResourceManagerService;

    if-eqz v1, :cond_1

    .line 141
    move-object v1, v0

    check-cast v1, Landroid/media/IResourceManagerService;

    return-object v1

    .line 143
    :cond_1
    new-instance v1, Landroid/media/IResourceManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IResourceManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 152
    packed-switch p0, :pswitch_data_0

    .line 192
    const/4 v0, 0x0

    return-object v0

    .line 188
    :pswitch_0
    const-string v0, "reclaimResourcesFromClientsPendingRemoval"

    return-object v0

    .line 184
    :pswitch_1
    const-string v0, "markClientForPendingRemoval"

    return-object v0

    .line 180
    :pswitch_2
    const-string v0, "overrideProcessInfo"

    return-object v0

    .line 176
    :pswitch_3
    const-string v0, "overridePid"

    return-object v0

    .line 172
    :pswitch_4
    const-string v0, "reclaimResource"

    return-object v0

    .line 168
    :pswitch_5
    const-string v0, "removeClient"

    return-object v0

    .line 164
    :pswitch_6
    const-string v0, "removeResource"

    return-object v0

    .line 160
    :pswitch_7
    const-string v0, "addResource"

    return-object v0

    .line 156
    :pswitch_8
    const-string v0, "config"

    return-object v0

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

    .line 147
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 583
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 199
    invoke-static {p1}, Landroid/media/IResourceManagerService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 203
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "android.media.IResourceManagerService"

    .line 204
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 205
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    :cond_0
    packed-switch v8, :pswitch_data_0

    .line 215
    packed-switch v8, :pswitch_data_1

    .line 327
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 211
    :pswitch_0
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    return v12

    .line 319
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 320
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 321
    invoke-virtual {v7, v0}, Landroid/media/IResourceManagerService$Stub;->reclaimResourcesFromClientsPendingRemoval(I)V

    .line 322
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    goto/16 :goto_0

    .line 308
    .end local v0    # "_arg0":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 310
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 311
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 312
    invoke-virtual {v7, v0, v1, v2}, Landroid/media/IResourceManagerService$Stub;->markClientForPendingRemoval(IJ)V

    .line 313
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    goto/16 :goto_0

    .line 293
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":J
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IResourceManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IResourceManagerClient;

    move-result-object v0

    .line 295
    .local v0, "_arg0":Landroid/media/IResourceManagerClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 297
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 299
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 300
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 301
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/media/IResourceManagerService$Stub;->overrideProcessInfo(Landroid/media/IResourceManagerClient;III)V

    .line 302
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    goto/16 :goto_0

    .line 282
    .end local v0    # "_arg0":Landroid/media/IResourceManagerClient;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 284
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 285
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 286
    invoke-virtual {v7, v0, v1}, Landroid/media/IResourceManagerService$Stub;->overridePid(II)V

    .line 287
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    goto/16 :goto_0

    .line 270
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 272
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/media/MediaResourceParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/media/MediaResourceParcel;

    .line 273
    .local v1, "_arg1":[Landroid/media/MediaResourceParcel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 274
    invoke-virtual {v7, v0, v1}, Landroid/media/IResourceManagerService$Stub;->reclaimResource(I[Landroid/media/MediaResourceParcel;)Z

    move-result v2

    .line 275
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 277
    goto/16 :goto_0

    .line 259
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Landroid/media/MediaResourceParcel;
    .end local v2    # "_result":Z
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 261
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 262
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 263
    invoke-virtual {v7, v0, v1, v2}, Landroid/media/IResourceManagerService$Stub;->removeClient(IJ)V

    .line 264
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    goto :goto_0

    .line 246
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":J
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 248
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 250
    .restart local v1    # "_arg1":J
    sget-object v3, Landroid/media/MediaResourceParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/media/MediaResourceParcel;

    .line 251
    .local v3, "_arg2":[Landroid/media/MediaResourceParcel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 252
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/media/IResourceManagerService$Stub;->removeResource(IJ[Landroid/media/MediaResourceParcel;)V

    .line 253
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    goto :goto_0

    .line 229
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":[Landroid/media/MediaResourceParcel;
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 231
    .local v13, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 233
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 235
    .local v15, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IResourceManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IResourceManagerClient;

    move-result-object v17

    .line 237
    .local v17, "_arg3":Landroid/media/IResourceManagerClient;
    sget-object v0, Landroid/media/MediaResourceParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, [Landroid/media/MediaResourceParcel;

    .line 238
    .local v18, "_arg4":[Landroid/media/MediaResourceParcel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 239
    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move-wide v3, v15

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/media/IResourceManagerService$Stub;->addResource(IIJLandroid/media/IResourceManagerClient;[Landroid/media/MediaResourceParcel;)V

    .line 240
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    goto :goto_0

    .line 220
    .end local v13    # "_arg0":I
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":J
    .end local v17    # "_arg3":Landroid/media/IResourceManagerClient;
    .end local v18    # "_arg4":[Landroid/media/MediaResourceParcel;
    :pswitch_9
    sget-object v0, Landroid/media/MediaResourcePolicyParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/MediaResourcePolicyParcel;

    .line 221
    .local v0, "_arg0":[Landroid/media/MediaResourcePolicyParcel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 222
    invoke-virtual {v7, v0}, Landroid/media/IResourceManagerService$Stub;->config([Landroid/media/MediaResourcePolicyParcel;)V

    .line 223
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    nop

    .line 330
    .end local v0    # "_arg0":[Landroid/media/MediaResourcePolicyParcel;
    :goto_0
    return v12

    nop

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
