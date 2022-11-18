.class public abstract Landroid/media/tv/ITvInputClient$Stub;
.super Landroid/os/Binder;
.source "ITvInputClient.java"

# interfaces
.implements Landroid/media/tv/ITvInputClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputClient$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.tv.ITvInputClient"

.field static final blacklist TRANSACTION_onAdResponse:I = 0x15

.field static final blacklist TRANSACTION_onAitInfoUpdated:I = 0xf

.field static final blacklist TRANSACTION_onBroadcastInfoResponse:I = 0x14

.field static final greylist-max-o TRANSACTION_onChannelRetuned:I = 0x4

.field static final greylist-max-o TRANSACTION_onContentAllowed:I = 0x9

.field static final greylist-max-o TRANSACTION_onContentBlocked:I = 0xa

.field static final greylist-max-o TRANSACTION_onError:I = 0x13

.field static final greylist-max-o TRANSACTION_onLayoutSurface:I = 0xb

.field static final greylist-max-o TRANSACTION_onRecordingStopped:I = 0x12

.field static final greylist-max-o TRANSACTION_onSessionCreated:I = 0x1

.field static final greylist-max-o TRANSACTION_onSessionEvent:I = 0x3

.field static final greylist-max-o TRANSACTION_onSessionReleased:I = 0x2

.field static final blacklist TRANSACTION_onSignalStrength:I = 0x10

.field static final greylist-max-o TRANSACTION_onTimeShiftCurrentPositionChanged:I = 0xe

.field static final greylist-max-o TRANSACTION_onTimeShiftStartPositionChanged:I = 0xd

.field static final greylist-max-o TRANSACTION_onTimeShiftStatusChanged:I = 0xc

.field static final greylist-max-o TRANSACTION_onTrackSelected:I = 0x6

.field static final greylist-max-o TRANSACTION_onTracksChanged:I = 0x5

.field static final greylist-max-o TRANSACTION_onTuned:I = 0x11

.field static final greylist-max-o TRANSACTION_onVideoAvailable:I = 0x7

.field static final greylist-max-o TRANSACTION_onVideoUnavailable:I = 0x8


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 91
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 92
    const-string v0, "android.media.tv.ITvInputClient"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ITvInputClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputClient;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 100
    if-nez p0, :cond_0

    .line 101
    const/4 v0, 0x0

    return-object v0

    .line 103
    :cond_0
    const-string v0, "android.media.tv.ITvInputClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 104
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/tv/ITvInputClient;

    if-eqz v1, :cond_1

    .line 105
    move-object v1, v0

    check-cast v1, Landroid/media/tv/ITvInputClient;

    return-object v1

    .line 107
    :cond_1
    new-instance v1, Landroid/media/tv/ITvInputClient$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/ITvInputClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 116
    packed-switch p0, :pswitch_data_0

    .line 204
    const/4 v0, 0x0

    return-object v0

    .line 200
    :pswitch_0
    const-string v0, "onAdResponse"

    return-object v0

    .line 196
    :pswitch_1
    const-string v0, "onBroadcastInfoResponse"

    return-object v0

    .line 192
    :pswitch_2
    const-string v0, "onError"

    return-object v0

    .line 188
    :pswitch_3
    const-string v0, "onRecordingStopped"

    return-object v0

    .line 184
    :pswitch_4
    const-string v0, "onTuned"

    return-object v0

    .line 180
    :pswitch_5
    const-string v0, "onSignalStrength"

    return-object v0

    .line 176
    :pswitch_6
    const-string v0, "onAitInfoUpdated"

    return-object v0

    .line 172
    :pswitch_7
    const-string v0, "onTimeShiftCurrentPositionChanged"

    return-object v0

    .line 168
    :pswitch_8
    const-string v0, "onTimeShiftStartPositionChanged"

    return-object v0

    .line 164
    :pswitch_9
    const-string v0, "onTimeShiftStatusChanged"

    return-object v0

    .line 160
    :pswitch_a
    const-string v0, "onLayoutSurface"

    return-object v0

    .line 156
    :pswitch_b
    const-string v0, "onContentBlocked"

    return-object v0

    .line 152
    :pswitch_c
    const-string v0, "onContentAllowed"

    return-object v0

    .line 148
    :pswitch_d
    const-string v0, "onVideoUnavailable"

    return-object v0

    .line 144
    :pswitch_e
    const-string v0, "onVideoAvailable"

    return-object v0

    .line 140
    :pswitch_f
    const-string v0, "onTrackSelected"

    return-object v0

    .line 136
    :pswitch_10
    const-string v0, "onTracksChanged"

    return-object v0

    .line 132
    :pswitch_11
    const-string v0, "onChannelRetuned"

    return-object v0

    .line 128
    :pswitch_12
    const-string v0, "onSessionEvent"

    return-object v0

    .line 124
    :pswitch_13
    const-string v0, "onSessionReleased"

    return-object v0

    .line 120
    :pswitch_14
    const-string v0, "onSessionCreated"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 111
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 775
    const/16 v0, 0x14

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 211
    invoke-static {p1}, Landroid/media/tv/ITvInputClient$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 215
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    const-string v9, "android.media.tv.ITvInputClient"

    .line 216
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v7, v10, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 217
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    :cond_0
    packed-switch v7, :pswitch_data_0

    .line 227
    move-object/from16 v11, p3

    packed-switch v7, :pswitch_data_1

    .line 449
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 223
    :pswitch_0
    move-object/from16 v11, p3

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    return v10

    .line 440
    :pswitch_1
    sget-object v0, Landroid/media/tv/AdResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/AdResponse;

    .line 442
    .local v0, "_arg0":Landroid/media/tv/AdResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 443
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 444
    invoke-virtual {v6, v0, v1}, Landroid/media/tv/ITvInputClient$Stub;->onAdResponse(Landroid/media/tv/AdResponse;I)V

    .line 445
    goto/16 :goto_0

    .line 430
    .end local v0    # "_arg0":Landroid/media/tv/AdResponse;
    .end local v1    # "_arg1":I
    :pswitch_2
    sget-object v0, Landroid/media/tv/BroadcastInfoResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/BroadcastInfoResponse;

    .line 432
    .local v0, "_arg0":Landroid/media/tv/BroadcastInfoResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 433
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 434
    invoke-virtual {v6, v0, v1}, Landroid/media/tv/ITvInputClient$Stub;->onBroadcastInfoResponse(Landroid/media/tv/BroadcastInfoResponse;I)V

    .line 435
    goto/16 :goto_0

    .line 420
    .end local v0    # "_arg0":Landroid/media/tv/BroadcastInfoResponse;
    .end local v1    # "_arg1":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 422
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 423
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 424
    invoke-virtual {v6, v0, v1}, Landroid/media/tv/ITvInputClient$Stub;->onError(II)V

    .line 425
    goto/16 :goto_0

    .line 410
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_4
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 412
    .local v0, "_arg0":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 413
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 414
    invoke-virtual {v6, v0, v1}, Landroid/media/tv/ITvInputClient$Stub;->onRecordingStopped(Landroid/net/Uri;I)V

    .line 415
    goto/16 :goto_0

    .line 400
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v1    # "_arg1":I
    :pswitch_5
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 402
    .restart local v0    # "_arg0":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 403
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 404
    invoke-virtual {v6, v0, v1}, Landroid/media/tv/ITvInputClient$Stub;->onTuned(Landroid/net/Uri;I)V

    .line 405
    goto/16 :goto_0

    .line 390
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v1    # "_arg1":I
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 392
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 393
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 394
    invoke-virtual {v6, v0, v1}, Landroid/media/tv/ITvInputClient$Stub;->onSignalStrength(II)V

    .line 395
    goto/16 :goto_0

    .line 380
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_7
    sget-object v0, Landroid/media/tv/AitInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/AitInfo;

    .line 382
    .local v0, "_arg0":Landroid/media/tv/AitInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 383
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 384
    invoke-virtual {v6, v0, v1}, Landroid/media/tv/ITvInputClient$Stub;->onAitInfoUpdated(Landroid/media/tv/AitInfo;I)V

    .line 385
    goto/16 :goto_0

    .line 370
    .end local v0    # "_arg0":Landroid/media/tv/AitInfo;
    .end local v1    # "_arg1":I
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 372
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 373
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 374
    invoke-virtual {v6, v0, v1, v2}, Landroid/media/tv/ITvInputClient$Stub;->onTimeShiftCurrentPositionChanged(JI)V

    .line 375
    goto/16 :goto_0

    .line 360
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 362
    .restart local v0    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 363
    .restart local v2    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 364
    invoke-virtual {v6, v0, v1, v2}, Landroid/media/tv/ITvInputClient$Stub;->onTimeShiftStartPositionChanged(JI)V

    .line 365
    goto/16 :goto_0

    .line 350
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 352
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 353
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 354
    invoke-virtual {v6, v0, v1}, Landroid/media/tv/ITvInputClient$Stub;->onTimeShiftStatusChanged(II)V

    .line 355
    goto/16 :goto_0

    .line 334
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 336
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 338
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 340
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 342
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 343
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 344
    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/media/tv/ITvInputClient$Stub;->onLayoutSurface(IIIII)V

    .line 345
    goto/16 :goto_0

    .line 324
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 327
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 328
    invoke-virtual {v6, v0, v1}, Landroid/media/tv/ITvInputClient$Stub;->onContentBlocked(Ljava/lang/String;I)V

    .line 329
    goto/16 :goto_0

    .line 316
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 317
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 318
    invoke-virtual {v6, v0}, Landroid/media/tv/ITvInputClient$Stub;->onContentAllowed(I)V

    .line 319
    goto/16 :goto_0

    .line 306
    .end local v0    # "_arg0":I
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 308
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 309
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 310
    invoke-virtual {v6, v0, v1}, Landroid/media/tv/ITvInputClient$Stub;->onVideoUnavailable(II)V

    .line 311
    goto/16 :goto_0

    .line 298
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 299
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 300
    invoke-virtual {v6, v0}, Landroid/media/tv/ITvInputClient$Stub;->onVideoAvailable(I)V

    .line 301
    goto/16 :goto_0

    .line 286
    .end local v0    # "_arg0":I
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 288
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 291
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 292
    invoke-virtual {v6, v0, v1, v2}, Landroid/media/tv/ITvInputClient$Stub;->onTrackSelected(ILjava/lang/String;I)V

    .line 293
    goto :goto_0

    .line 276
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_11
    sget-object v0, Landroid/media/tv/TvTrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 278
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 279
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 280
    invoke-virtual {v6, v0, v1}, Landroid/media/tv/ITvInputClient$Stub;->onTracksChanged(Ljava/util/List;I)V

    .line 281
    goto :goto_0

    .line 266
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    .end local v1    # "_arg1":I
    :pswitch_12
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 268
    .local v0, "_arg0":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 269
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    invoke-virtual {v6, v0, v1}, Landroid/media/tv/ITvInputClient$Stub;->onChannelRetuned(Landroid/net/Uri;I)V

    .line 271
    goto :goto_0

    .line 254
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v1    # "_arg1":I
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 258
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 259
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 260
    invoke-virtual {v6, v0, v1, v2}, Landroid/media/tv/ITvInputClient$Stub;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 261
    goto :goto_0

    .line 246
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg2":I
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 247
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {v6, v0}, Landroid/media/tv/ITvInputClient$Stub;->onSessionReleased(I)V

    .line 249
    goto :goto_0

    .line 232
    .end local v0    # "_arg0":I
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 236
    .local v1, "_arg1":Landroid/os/IBinder;
    sget-object v2, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputChannel;

    .line 238
    .local v2, "_arg2":Landroid/view/InputChannel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 239
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/media/tv/ITvInputClient$Stub;->onSessionCreated(Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 241
    nop

    .line 452
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":Landroid/view/InputChannel;
    .end local v3    # "_arg3":I
    :goto_0
    return v10

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
