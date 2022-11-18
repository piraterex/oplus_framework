.class public abstract Landroid/gsi/IImageService$Stub;
.super Landroid/os/Binder;
.source "IImageService.java"

# interfaces
.implements Landroid/gsi/IImageService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gsi/IImageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/gsi/IImageService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_backingImageExists:I = 0x5

.field static final blacklist TRANSACTION_createBackingImage:I = 0x1

.field static final blacklist TRANSACTION_deleteBackingImage:I = 0x2

.field static final blacklist TRANSACTION_getAllBackingImages:I = 0x8

.field static final blacklist TRANSACTION_getAvbPublicKey:I = 0x7

.field static final blacklist TRANSACTION_getMappedImageDevice:I = 0xd

.field static final blacklist TRANSACTION_isImageDisabled:I = 0xc

.field static final blacklist TRANSACTION_isImageMapped:I = 0x6

.field static final blacklist TRANSACTION_mapImageDevice:I = 0x3

.field static final blacklist TRANSACTION_removeAllImages:I = 0xa

.field static final blacklist TRANSACTION_removeDisabledImages:I = 0xb

.field static final blacklist TRANSACTION_unmapImageDevice:I = 0x4

.field static final blacklist TRANSACTION_zeroFillNewImage:I = 0x9


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 143
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 144
    const-string v0, "android.gsi.IImageService"

    invoke-virtual {p0, p0, v0}, Landroid/gsi/IImageService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/gsi/IImageService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 152
    if-nez p0, :cond_0

    .line 153
    const/4 v0, 0x0

    return-object v0

    .line 155
    :cond_0
    const-string v0, "android.gsi.IImageService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 156
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/gsi/IImageService;

    if-eqz v1, :cond_1

    .line 157
    move-object v1, v0

    check-cast v1, Landroid/gsi/IImageService;

    return-object v1

    .line 159
    :cond_1
    new-instance v1, Landroid/gsi/IImageService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/gsi/IImageService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 168
    packed-switch p0, :pswitch_data_0

    .line 224
    const/4 v0, 0x0

    return-object v0

    .line 220
    :pswitch_0
    const-string v0, "getMappedImageDevice"

    return-object v0

    .line 216
    :pswitch_1
    const-string v0, "isImageDisabled"

    return-object v0

    .line 212
    :pswitch_2
    const-string/jumbo v0, "removeDisabledImages"

    return-object v0

    .line 208
    :pswitch_3
    const-string/jumbo v0, "removeAllImages"

    return-object v0

    .line 204
    :pswitch_4
    const-string/jumbo v0, "zeroFillNewImage"

    return-object v0

    .line 200
    :pswitch_5
    const-string v0, "getAllBackingImages"

    return-object v0

    .line 196
    :pswitch_6
    const-string v0, "getAvbPublicKey"

    return-object v0

    .line 192
    :pswitch_7
    const-string v0, "isImageMapped"

    return-object v0

    .line 188
    :pswitch_8
    const-string v0, "backingImageExists"

    return-object v0

    .line 184
    :pswitch_9
    const-string/jumbo v0, "unmapImageDevice"

    return-object v0

    .line 180
    :pswitch_a
    const-string/jumbo v0, "mapImageDevice"

    return-object v0

    .line 176
    :pswitch_b
    const-string v0, "deleteBackingImage"

    return-object v0

    .line 172
    :pswitch_c
    const-string v0, "createBackingImage"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 163
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 716
    const/16 v0, 0xc

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 231
    invoke-static {p1}, Landroid/gsi/IImageService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 235
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p3

    const-string v9, "android.gsi.IImageService"

    .line 236
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v7, v10, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 237
    move-object/from16 v11, p2

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    .line 236
    :cond_0
    move-object/from16 v11, p2

    .line 239
    :goto_0
    packed-switch v7, :pswitch_data_0

    .line 247
    packed-switch v7, :pswitch_data_1

    .line 381
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 243
    :pswitch_0
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    return v10

    .line 372
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 374
    invoke-virtual {v6, v0}, Landroid/gsi/IImageService$Stub;->getMappedImageDevice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 377
    goto/16 :goto_1

    .line 362
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 363
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 364
    invoke-virtual {v6, v0}, Landroid/gsi/IImageService$Stub;->isImageDisabled(Ljava/lang/String;)Z

    move-result v1

    .line 365
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 367
    goto/16 :goto_1

    .line 355
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/gsi/IImageService$Stub;->removeDisabledImages()V

    .line 356
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    goto/16 :goto_1

    .line 349
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/gsi/IImageService$Stub;->removeAllImages()V

    .line 350
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    goto/16 :goto_1

    .line 339
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 341
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 342
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 343
    invoke-virtual {v6, v0, v1, v2}, Landroid/gsi/IImageService$Stub;->zeroFillNewImage(Ljava/lang/String;J)V

    .line 344
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    goto/16 :goto_1

    .line 331
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":J
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/gsi/IImageService$Stub;->getAllBackingImages()Ljava/util/List;

    move-result-object v0

    .line 332
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 334
    goto/16 :goto_1

    .line 319
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "_arg0":Ljava/lang/String;
    new-instance v1, Landroid/gsi/AvbPublicKey;

    invoke-direct {v1}, Landroid/gsi/AvbPublicKey;-><init>()V

    .line 322
    .local v1, "_arg1":Landroid/gsi/AvbPublicKey;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 323
    invoke-virtual {v6, v0, v1}, Landroid/gsi/IImageService$Stub;->getAvbPublicKey(Ljava/lang/String;Landroid/gsi/AvbPublicKey;)I

    move-result v2

    .line 324
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    invoke-virtual {v8, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 327
    goto/16 :goto_1

    .line 309
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/gsi/AvbPublicKey;
    .end local v2    # "_result":I
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 310
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 311
    invoke-virtual {v6, v0}, Landroid/gsi/IImageService$Stub;->isImageMapped(Ljava/lang/String;)Z

    move-result v1

    .line 312
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 314
    goto/16 :goto_1

    .line 299
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 300
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 301
    invoke-virtual {v6, v0}, Landroid/gsi/IImageService$Stub;->backingImageExists(Ljava/lang/String;)Z

    move-result v1

    .line 302
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 304
    goto :goto_1

    .line 290
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 291
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 292
    invoke-virtual {v6, v0}, Landroid/gsi/IImageService$Stub;->unmapImageDevice(Ljava/lang/String;)V

    .line 293
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    goto :goto_1

    .line 276
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 278
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 280
    .local v1, "_arg1":I
    new-instance v2, Landroid/gsi/MappedImage;

    invoke-direct {v2}, Landroid/gsi/MappedImage;-><init>()V

    .line 281
    .local v2, "_arg2":Landroid/gsi/MappedImage;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 282
    invoke-virtual {v6, v0, v1, v2}, Landroid/gsi/IImageService$Stub;->mapImageDevice(Ljava/lang/String;ILandroid/gsi/MappedImage;)V

    .line 283
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    invoke-virtual {v8, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 285
    goto :goto_1

    .line 267
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/gsi/MappedImage;
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 268
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    invoke-virtual {v6, v0}, Landroid/gsi/IImageService$Stub;->deleteBackingImage(Ljava/lang/String;)V

    .line 270
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    goto :goto_1

    .line 252
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 254
    .local v12, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 256
    .local v13, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 258
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/gsi/IProgressCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/gsi/IProgressCallback;

    move-result-object v16

    .line 259
    .local v16, "_arg3":Landroid/gsi/IProgressCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 260
    move-object/from16 v0, p0

    move-object v1, v12

    move-wide v2, v13

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/gsi/IImageService$Stub;->createBackingImage(Ljava/lang/String;JILandroid/gsi/IProgressCallback;)V

    .line 261
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    nop

    .line 384
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":J
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":Landroid/gsi/IProgressCallback;
    :goto_1
    return v10

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
