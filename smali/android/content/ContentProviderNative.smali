.class public abstract Landroid/content/ContentProviderNative;
.super Landroid/os/Binder;
.source "ContentProviderNative.java"

# interfaces
.implements Landroid/content/IContentProvider;


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 49
    const-string v0, "android.content.IContentProvider"

    invoke-virtual {p0, p0, v0}, Landroid/content/ContentProviderNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/content/IContentProvider;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 59
    if-nez p0, :cond_0

    .line 60
    const/4 v0, 0x0

    return-object v0

    .line 62
    :cond_0
    nop

    .line 63
    const-string v0, "android.content.IContentProvider"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/content/IContentProvider;

    .line 64
    .local v0, "in":Landroid/content/IContentProvider;
    if-eqz v0, :cond_1

    .line 65
    return-object v0

    .line 68
    :cond_1
    new-instance v1, Landroid/content/ContentProviderProxy;

    invoke-direct {v1, p0}, Landroid/content/ContentProviderProxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 435
    return-object p0
.end method

.method public abstract greylist-max-o getProviderName()Ljava/lang/String;
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 82
    const/4 v0, 0x0

    const-string v1, "android.content.IContentProvider"

    const/4 v10, 0x1

    packed-switch p1, :pswitch_data_0

    .line 427
    :pswitch_0
    goto/16 :goto_8

    .line 386
    :pswitch_1
    :try_start_0
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 388
    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 389
    .local v0, "attributionSource":Landroid/content/AttributionSource;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 390
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallback;

    .line 391
    .local v2, "callback":Landroid/os/RemoteCallback;
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentProviderNative;->uncanonicalizeAsync(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/RemoteCallback;)V

    .line 392
    return v10

    .line 363
    .end local v0    # "attributionSource":Landroid/content/AttributionSource;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "callback":Landroid/os/RemoteCallback;
    :pswitch_2
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 365
    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 366
    .restart local v0    # "attributionSource":Landroid/content/AttributionSource;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 367
    .restart local v1    # "uri":Landroid/net/Uri;
    sget-object v2, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallback;

    .line 368
    .restart local v2    # "callback":Landroid/os/RemoteCallback;
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentProviderNative;->canonicalizeAsync(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/RemoteCallback;)V

    .line 369
    return v10

    .line 152
    .end local v0    # "attributionSource":Landroid/content/AttributionSource;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "callback":Landroid/os/RemoteCallback;
    :pswitch_3
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 154
    .local v0, "url":Landroid/net/Uri;
    sget-object v1, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallback;

    .line 155
    .local v1, "callback":Landroid/os/RemoteCallback;
    invoke-virtual {p0, v0, v1}, Landroid/content/ContentProviderNative;->getTypeAsync(Landroid/net/Uri;Landroid/os/RemoteCallback;)V

    .line 156
    return v10

    .line 411
    .end local v0    # "url":Landroid/net/Uri;
    .end local v1    # "callback":Landroid/os/RemoteCallback;
    :pswitch_4
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 413
    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 414
    .local v0, "attributionSource":Landroid/content/AttributionSource;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 415
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 416
    .local v2, "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 418
    .local v3, "modeFlags":I
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/content/ContentProviderNative;->checkUriPermission(Landroid/content/AttributionSource;Landroid/net/Uri;II)I

    move-result v4

    .line 419
    .local v4, "out":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 421
    return v10

    .line 396
    .end local v0    # "attributionSource":Landroid/content/AttributionSource;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "uid":I
    .end local v3    # "modeFlags":I
    .end local v4    # "out":I
    :pswitch_5
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 398
    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 399
    .local v1, "attributionSource":Landroid/content/AttributionSource;
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 400
    .local v2, "url":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 401
    .local v3, "extras":Landroid/os/Bundle;
    nop

    .line 402
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 401
    invoke-static {v4}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object v4

    .line 404
    .local v4, "signal":Landroid/os/ICancellationSignal;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/ContentProviderNative;->refresh(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Z

    move-result v5

    .line 405
    .local v5, "out":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    return v10

    .line 374
    .end local v1    # "attributionSource":Landroid/content/AttributionSource;
    .end local v2    # "url":Landroid/net/Uri;
    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v4    # "signal":Landroid/os/ICancellationSignal;
    .end local v5    # "out":Z
    :pswitch_6
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 376
    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 377
    .restart local v0    # "attributionSource":Landroid/content/AttributionSource;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 379
    .local v1, "url":Landroid/net/Uri;
    invoke-virtual {p0, v0, v1}, Landroid/content/ContentProviderNative;->uncanonicalize(Landroid/content/AttributionSource;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 380
    .local v2, "out":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    invoke-static {v9, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 382
    return v10

    .line 351
    .end local v0    # "attributionSource":Landroid/content/AttributionSource;
    .end local v1    # "url":Landroid/net/Uri;
    .end local v2    # "out":Landroid/net/Uri;
    :pswitch_7
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 353
    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 354
    .restart local v0    # "attributionSource":Landroid/content/AttributionSource;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 356
    .restart local v1    # "url":Landroid/net/Uri;
    invoke-virtual {p0, v0, v1}, Landroid/content/ContentProviderNative;->canonicalize(Landroid/content/AttributionSource;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 357
    .restart local v2    # "out":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    invoke-static {v9, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 359
    return v10

    .line 341
    .end local v0    # "attributionSource":Landroid/content/AttributionSource;
    .end local v1    # "url":Landroid/net/Uri;
    .end local v2    # "out":Landroid/net/Uri;
    :pswitch_8
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0}, Landroid/content/ContentProviderNative;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v0

    .line 344
    .local v0, "cancellationSignal":Landroid/os/ICancellationSignal;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    invoke-interface {v0}, Landroid/os/ICancellationSignal;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 346
    return v10

    .line 317
    .end local v0    # "cancellationSignal":Landroid/os/ICancellationSignal;
    :pswitch_9
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 319
    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/content/AttributionSource;

    .line 320
    .local v2, "attributionSource":Landroid/content/AttributionSource;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/net/Uri;

    .line 321
    .local v3, "url":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 322
    .local v4, "mimeType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v5

    .line 323
    .local v5, "opts":Landroid/os/Bundle;
    nop

    .line 324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 323
    invoke-static {v1}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object v6

    .line 327
    .local v6, "signal":Landroid/os/ICancellationSignal;
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderNative;->openTypedAssetFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 328
    .local v1, "fd":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    if-eqz v1, :cond_1

    .line 330
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    invoke-virtual {v1, v9, v10}, Landroid/content/res/AssetFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 334
    :cond_1
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    :goto_1
    return v10

    .line 305
    .end local v1    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v2    # "attributionSource":Landroid/content/AttributionSource;
    .end local v3    # "url":Landroid/net/Uri;
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v5    # "opts":Landroid/os/Bundle;
    .end local v6    # "signal":Landroid/os/ICancellationSignal;
    :pswitch_a
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 307
    .local v0, "url":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, "mimeTypeFilter":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/content/ContentProviderNative;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 309
    .local v2, "types":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 312
    return v10

    .line 286
    .end local v0    # "url":Landroid/net/Uri;
    .end local v1    # "mimeTypeFilter":Ljava/lang/String;
    .end local v2    # "types":[Ljava/lang/String;
    :pswitch_b
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 289
    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/AttributionSource;

    .line 290
    .local v2, "attributionSource":Landroid/content/AttributionSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 291
    .local v3, "authority":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 292
    .local v4, "method":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 293
    .local v5, "stringArg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v6

    .line 295
    .local v6, "extras":Landroid/os/Bundle;
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderNative;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 298
    .local v0, "responseBundle":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 300
    return v10

    .line 190
    .end local v0    # "responseBundle":Landroid/os/Bundle;
    .end local v2    # "attributionSource":Landroid/content/AttributionSource;
    .end local v3    # "authority":Ljava/lang/String;
    .end local v4    # "method":Ljava/lang/String;
    .end local v5    # "stringArg":Ljava/lang/String;
    .end local v6    # "extras":Landroid/os/Bundle;
    :pswitch_c
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 192
    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 193
    .local v1, "attributionSource":Landroid/content/AttributionSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "authority":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 195
    .local v3, "numOperations":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 197
    .local v4, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v3, :cond_2

    .line 198
    sget-object v6, Landroid/content/ContentProviderOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentProviderOperation;

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 197
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 200
    .end local v5    # "i":I
    :cond_2
    invoke-virtual {p0, v1, v2, v4}, Landroid/content/ContentProviderNative;->applyBatch(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v5

    .line 202
    .local v5, "results":[Landroid/content/ContentProviderResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {v9, v5, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 204
    return v10

    .line 263
    .end local v1    # "attributionSource":Landroid/content/AttributionSource;
    .end local v2    # "authority":Ljava/lang/String;
    .end local v3    # "numOperations":I
    .end local v4    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v5    # "results":[Landroid/content/ContentProviderResult;
    :pswitch_d
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 265
    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 266
    .restart local v1    # "attributionSource":Landroid/content/AttributionSource;
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 267
    .local v2, "url":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 268
    .local v3, "mode":Ljava/lang/String;
    nop

    .line 269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 268
    invoke-static {v4}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object v4

    .line 272
    .local v4, "signal":Landroid/os/ICancellationSignal;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/ContentProviderNative;->openAssetFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v5

    .line 273
    .local v5, "fd":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    if-eqz v5, :cond_3

    .line 275
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    invoke-virtual {v5, v9, v10}, Landroid/content/res/AssetFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 279
    :cond_3
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    :goto_3
    return v10

    .line 240
    .end local v1    # "attributionSource":Landroid/content/AttributionSource;
    .end local v2    # "url":Landroid/net/Uri;
    .end local v3    # "mode":Ljava/lang/String;
    .end local v4    # "signal":Landroid/os/ICancellationSignal;
    .end local v5    # "fd":Landroid/content/res/AssetFileDescriptor;
    :pswitch_e
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 242
    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 243
    .restart local v1    # "attributionSource":Landroid/content/AttributionSource;
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 244
    .restart local v2    # "url":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 245
    .restart local v3    # "mode":Ljava/lang/String;
    nop

    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 245
    invoke-static {v4}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object v4

    .line 249
    .restart local v4    # "signal":Landroid/os/ICancellationSignal;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/ContentProviderNative;->openFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 250
    .local v5, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    if-eqz v5, :cond_4

    .line 252
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    invoke-virtual {v5, v9, v10}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 256
    :cond_4
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    :goto_4
    return v10

    .line 176
    .end local v1    # "attributionSource":Landroid/content/AttributionSource;
    .end local v2    # "url":Landroid/net/Uri;
    .end local v3    # "mode":Ljava/lang/String;
    .end local v4    # "signal":Landroid/os/ICancellationSignal;
    .end local v5    # "fd":Landroid/os/ParcelFileDescriptor;
    :pswitch_f
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 178
    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 179
    .local v0, "attributionSource":Landroid/content/AttributionSource;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 180
    .local v1, "url":Landroid/net/Uri;
    sget-object v2, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/ContentValues;

    .line 182
    .local v2, "values":[Landroid/content/ContentValues;
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentProviderNative;->bulkInsert(Landroid/content/AttributionSource;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v3

    .line 183
    .local v3, "count":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    return v10

    .line 224
    .end local v0    # "attributionSource":Landroid/content/AttributionSource;
    .end local v1    # "url":Landroid/net/Uri;
    .end local v2    # "values":[Landroid/content/ContentValues;
    .end local v3    # "count":I
    :pswitch_10
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 226
    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 227
    .restart local v0    # "attributionSource":Landroid/content/AttributionSource;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 228
    .restart local v1    # "url":Landroid/net/Uri;
    sget-object v2, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 229
    .local v2, "values":Landroid/content/ContentValues;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 231
    .local v3, "extras":Landroid/os/Bundle;
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/content/ContentProviderNative;->update(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    move-result v4

    .line 233
    .local v4, "count":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    return v10

    .line 209
    .end local v0    # "attributionSource":Landroid/content/AttributionSource;
    .end local v1    # "url":Landroid/net/Uri;
    .end local v2    # "values":Landroid/content/ContentValues;
    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v4    # "count":I
    :pswitch_11
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 211
    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 212
    .restart local v0    # "attributionSource":Landroid/content/AttributionSource;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 213
    .restart local v1    # "url":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 215
    .local v2, "extras":Landroid/os/Bundle;
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentProviderNative;->delete(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/Bundle;)I

    move-result v3

    .line 217
    .local v3, "count":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    return v10

    .line 161
    .end local v0    # "attributionSource":Landroid/content/AttributionSource;
    .end local v1    # "url":Landroid/net/Uri;
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v3    # "count":I
    :pswitch_12
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 163
    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 164
    .restart local v0    # "attributionSource":Landroid/content/AttributionSource;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 165
    .restart local v1    # "url":Landroid/net/Uri;
    sget-object v2, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 166
    .local v2, "values":Landroid/content/ContentValues;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 168
    .local v3, "extras":Landroid/os/Bundle;
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/content/ContentProviderNative;->insert(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v4

    .line 169
    .local v4, "out":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-static {v9, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 171
    return v10

    .line 142
    .end local v0    # "attributionSource":Landroid/content/AttributionSource;
    .end local v1    # "url":Landroid/net/Uri;
    .end local v2    # "values":Landroid/content/ContentValues;
    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v4    # "out":Landroid/net/Uri;
    :pswitch_13
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 144
    .local v0, "url":Landroid/net/Uri;
    invoke-virtual {p0, v0}, Landroid/content/ContentProviderNative;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "type":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    return v10

    .line 85
    .end local v0    # "url":Landroid/net/Uri;
    .end local v1    # "type":Ljava/lang/String;
    :pswitch_14
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 88
    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/content/AttributionSource;

    .line 89
    .local v2, "attributionSource":Landroid/content/AttributionSource;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/net/Uri;

    .line 92
    .local v3, "url":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    move v11, v1

    .line 93
    .local v11, "num":I
    const/4 v1, 0x0

    .line 94
    .local v1, "projection":[Ljava/lang/String;
    if-lez v11, :cond_6

    .line 95
    new-array v4, v11, [Ljava/lang/String;

    move-object v1, v4

    .line 96
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    if-ge v4, v11, :cond_5

    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 96
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_5
    move-object v12, v1

    goto :goto_6

    .line 94
    .end local v4    # "i":I
    :cond_6
    move-object v12, v1

    .line 101
    .end local v1    # "projection":[Ljava/lang/String;
    .local v12, "projection":[Ljava/lang/String;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v5

    .line 102
    .local v5, "queryArgs":Landroid/os/Bundle;
    nop

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 102
    invoke-static {v1}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v1

    move-object v13, v1

    .line 104
    .local v13, "observer":Landroid/database/IContentObserver;
    nop

    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 104
    invoke-static {v1}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object v6

    .line 107
    .local v6, "cancellationSignal":Landroid/os/ICancellationSignal;
    move-object v1, p0

    move-object v4, v12

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderNative;->query(Landroid/content/AttributionSource;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_b

    .line 110
    const/4 v4, 0x0

    .line 113
    .local v4, "adaptor":Landroid/database/CursorToBulkCursorAdaptor;
    :try_start_1
    new-instance v0, Landroid/database/CursorToBulkCursorAdaptor;

    .line 114
    invoke-virtual {p0}, Landroid/content/ContentProviderNative;->getProviderName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v1, v13, v14}, Landroid/database/CursorToBulkCursorAdaptor;-><init>(Landroid/database/Cursor;Landroid/database/IContentObserver;Ljava/lang/String;)V

    move-object v4, v0

    .line 115
    const/4 v1, 0x0

    .line 117
    invoke-virtual {v4}, Landroid/database/CursorToBulkCursorAdaptor;->getBulkCursorDescriptor()Landroid/database/BulkCursorDescriptor;

    move-result-object v0

    .line 118
    .local v0, "d":Landroid/database/BulkCursorDescriptor;
    const/4 v4, 0x0

    .line 120
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    invoke-virtual {v0, v9, v10}, Landroid/database/BulkCursorDescriptor;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    .end local v0    # "d":Landroid/database/BulkCursorDescriptor;
    if-eqz v4, :cond_7

    .line 126
    :try_start_2
    invoke-virtual {v4}, Landroid/database/CursorToBulkCursorAdaptor;->close()V

    .line 128
    :cond_7
    if-eqz v1, :cond_8

    .line 129
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 132
    .end local v4    # "adaptor":Landroid/database/CursorToBulkCursorAdaptor;
    :cond_8
    goto :goto_7

    .line 125
    .restart local v4    # "adaptor":Landroid/database/CursorToBulkCursorAdaptor;
    :catchall_0
    move-exception v0

    if-eqz v4, :cond_9

    .line 126
    invoke-virtual {v4}, Landroid/database/CursorToBulkCursorAdaptor;->close()V

    .line 128
    :cond_9
    if-eqz v1, :cond_a

    .line 129
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 131
    :cond_a
    nop

    .end local p0    # "this":Landroid/content/ContentProviderNative;
    .end local p1    # "code":I
    .end local p2    # "data":Landroid/os/Parcel;
    .end local p3    # "reply":Landroid/os/Parcel;
    .end local p4    # "flags":I
    throw v0

    .line 133
    .end local v4    # "adaptor":Landroid/database/CursorToBulkCursorAdaptor;
    .restart local p0    # "this":Landroid/content/ContentProviderNative;
    .restart local p1    # "code":I
    .restart local p2    # "data":Landroid/os/Parcel;
    .restart local p3    # "reply":Landroid/os/Parcel;
    .restart local p4    # "flags":I
    :cond_b
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 137
    :goto_7
    return v10

    .line 424
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v2    # "attributionSource":Landroid/content/AttributionSource;
    .end local v3    # "url":Landroid/net/Uri;
    .end local v5    # "queryArgs":Landroid/os/Bundle;
    .end local v6    # "cancellationSignal":Landroid/os/ICancellationSignal;
    .end local v11    # "num":I
    .end local v12    # "projection":[Ljava/lang/String;
    .end local v13    # "observer":Landroid/database/IContentObserver;
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v9, v0}, Landroid/database/DatabaseUtils;->writeExceptionToParcel(Landroid/os/Parcel;Ljava/lang/Exception;)V

    .line 426
    return v10

    .line 429
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_8
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
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
