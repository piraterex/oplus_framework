.class public abstract Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;
.super Landroid/os/Binder;
.source "ITvInteractiveAppSession.java"

# interfaces
.implements Landroid/media/tv/interactive/ITvInteractiveAppSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/ITvInteractiveAppSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createBiInteractiveApp:I = 0x4

.field static final blacklist TRANSACTION_createMediaView:I = 0x1b

.field static final blacklist TRANSACTION_destroyBiInteractiveApp:I = 0x5

.field static final blacklist TRANSACTION_dispatchSurfaceChanged:I = 0x18

.field static final blacklist TRANSACTION_notifyAdResponse:I = 0x1a

.field static final blacklist TRANSACTION_notifyBroadcastInfoResponse:I = 0x19

.field static final blacklist TRANSACTION_notifyContentAllowed:I = 0x14

.field static final blacklist TRANSACTION_notifyContentBlocked:I = 0x15

.field static final blacklist TRANSACTION_notifyError:I = 0xd

.field static final blacklist TRANSACTION_notifySignalStrength:I = 0x16

.field static final blacklist TRANSACTION_notifyTrackSelected:I = 0x10

.field static final blacklist TRANSACTION_notifyTracksChanged:I = 0x11

.field static final blacklist TRANSACTION_notifyTuned:I = 0xf

.field static final blacklist TRANSACTION_notifyVideoAvailable:I = 0x12

.field static final blacklist TRANSACTION_notifyVideoUnavailable:I = 0x13

.field static final blacklist TRANSACTION_relayoutMediaView:I = 0x1c

.field static final blacklist TRANSACTION_release:I = 0xe

.field static final blacklist TRANSACTION_removeMediaView:I = 0x1d

.field static final blacklist TRANSACTION_resetInteractiveApp:I = 0x3

.field static final blacklist TRANSACTION_sendCurrentChannelLcn:I = 0x8

.field static final blacklist TRANSACTION_sendCurrentChannelUri:I = 0x7

.field static final blacklist TRANSACTION_sendCurrentTvInputId:I = 0xb

.field static final blacklist TRANSACTION_sendSigningResult:I = 0xc

.field static final blacklist TRANSACTION_sendStreamVolume:I = 0x9

.field static final blacklist TRANSACTION_sendTrackInfoList:I = 0xa

.field static final blacklist TRANSACTION_setSurface:I = 0x17

.field static final blacklist TRANSACTION_setTeletextAppEnabled:I = 0x6

.field static final blacklist TRANSACTION_startInteractiveApp:I = 0x1

.field static final blacklist TRANSACTION_stopInteractiveApp:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 112
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 113
    const-string v0, "android.media.tv.interactive.ITvInteractiveAppSession"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/interactive/ITvInteractiveAppSession;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 121
    if-nez p0, :cond_0

    .line 122
    const/4 v0, 0x0

    return-object v0

    .line 124
    :cond_0
    const-string v0, "android.media.tv.interactive.ITvInteractiveAppSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 125
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/tv/interactive/ITvInteractiveAppSession;

    if-eqz v1, :cond_1

    .line 126
    move-object v1, v0

    check-cast v1, Landroid/media/tv/interactive/ITvInteractiveAppSession;

    return-object v1

    .line 128
    :cond_1
    new-instance v1, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 137
    packed-switch p0, :pswitch_data_0

    .line 257
    const/4 v0, 0x0

    return-object v0

    .line 253
    :pswitch_0
    const-string v0, "removeMediaView"

    return-object v0

    .line 249
    :pswitch_1
    const-string v0, "relayoutMediaView"

    return-object v0

    .line 245
    :pswitch_2
    const-string v0, "createMediaView"

    return-object v0

    .line 241
    :pswitch_3
    const-string v0, "notifyAdResponse"

    return-object v0

    .line 237
    :pswitch_4
    const-string v0, "notifyBroadcastInfoResponse"

    return-object v0

    .line 233
    :pswitch_5
    const-string v0, "dispatchSurfaceChanged"

    return-object v0

    .line 229
    :pswitch_6
    const-string v0, "setSurface"

    return-object v0

    .line 225
    :pswitch_7
    const-string v0, "notifySignalStrength"

    return-object v0

    .line 221
    :pswitch_8
    const-string v0, "notifyContentBlocked"

    return-object v0

    .line 217
    :pswitch_9
    const-string v0, "notifyContentAllowed"

    return-object v0

    .line 213
    :pswitch_a
    const-string v0, "notifyVideoUnavailable"

    return-object v0

    .line 209
    :pswitch_b
    const-string v0, "notifyVideoAvailable"

    return-object v0

    .line 205
    :pswitch_c
    const-string v0, "notifyTracksChanged"

    return-object v0

    .line 201
    :pswitch_d
    const-string v0, "notifyTrackSelected"

    return-object v0

    .line 197
    :pswitch_e
    const-string v0, "notifyTuned"

    return-object v0

    .line 193
    :pswitch_f
    const-string v0, "release"

    return-object v0

    .line 189
    :pswitch_10
    const-string v0, "notifyError"

    return-object v0

    .line 185
    :pswitch_11
    const-string v0, "sendSigningResult"

    return-object v0

    .line 181
    :pswitch_12
    const-string v0, "sendCurrentTvInputId"

    return-object v0

    .line 177
    :pswitch_13
    const-string v0, "sendTrackInfoList"

    return-object v0

    .line 173
    :pswitch_14
    const-string v0, "sendStreamVolume"

    return-object v0

    .line 169
    :pswitch_15
    const-string v0, "sendCurrentChannelLcn"

    return-object v0

    .line 165
    :pswitch_16
    const-string v0, "sendCurrentChannelUri"

    return-object v0

    .line 161
    :pswitch_17
    const-string v0, "setTeletextAppEnabled"

    return-object v0

    .line 157
    :pswitch_18
    const-string v0, "destroyBiInteractiveApp"

    return-object v0

    .line 153
    :pswitch_19
    const-string v0, "createBiInteractiveApp"

    return-object v0

    .line 149
    :pswitch_1a
    const-string v0, "resetInteractiveApp"

    return-object v0

    .line 145
    :pswitch_1b
    const-string v0, "stopInteractiveApp"

    return-object v0

    .line 141
    :pswitch_1c
    const-string v0, "startInteractiveApp"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 132
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 910
    const/16 v0, 0x1c

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 264
    invoke-static {p1}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 268
    const-string v0, "android.media.tv.interactive.ITvInteractiveAppSession"

    .line 269
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 270
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 280
    packed-switch p1, :pswitch_data_1

    .line 509
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 276
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 277
    return v1

    .line 504
    :pswitch_1
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->removeMediaView()V

    .line 505
    goto/16 :goto_0

    .line 497
    :pswitch_2
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 498
    .local v2, "_arg0":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 499
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->relayoutMediaView(Landroid/graphics/Rect;)V

    .line 500
    goto/16 :goto_0

    .line 487
    .end local v2    # "_arg0":Landroid/graphics/Rect;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 489
    .local v2, "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 490
    .local v3, "_arg1":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 491
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->createMediaView(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 492
    goto/16 :goto_0

    .line 479
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/graphics/Rect;
    :pswitch_4
    sget-object v2, Landroid/media/tv/AdResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/AdResponse;

    .line 480
    .local v2, "_arg0":Landroid/media/tv/AdResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 481
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyAdResponse(Landroid/media/tv/AdResponse;)V

    .line 482
    goto/16 :goto_0

    .line 471
    .end local v2    # "_arg0":Landroid/media/tv/AdResponse;
    :pswitch_5
    sget-object v2, Landroid/media/tv/BroadcastInfoResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/BroadcastInfoResponse;

    .line 472
    .local v2, "_arg0":Landroid/media/tv/BroadcastInfoResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 473
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyBroadcastInfoResponse(Landroid/media/tv/BroadcastInfoResponse;)V

    .line 474
    goto/16 :goto_0

    .line 459
    .end local v2    # "_arg0":Landroid/media/tv/BroadcastInfoResponse;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 461
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 463
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 464
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 465
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->dispatchSurfaceChanged(III)V

    .line 466
    goto/16 :goto_0

    .line 451
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_7
    sget-object v2, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 452
    .local v2, "_arg0":Landroid/view/Surface;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 453
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->setSurface(Landroid/view/Surface;)V

    .line 454
    goto/16 :goto_0

    .line 443
    .end local v2    # "_arg0":Landroid/view/Surface;
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 444
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 445
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifySignalStrength(I)V

    .line 446
    goto/16 :goto_0

    .line 435
    .end local v2    # "_arg0":I
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 436
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 437
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyContentBlocked(Ljava/lang/String;)V

    .line 438
    goto/16 :goto_0

    .line 429
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_a
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyContentAllowed()V

    .line 430
    goto/16 :goto_0

    .line 422
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 423
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 424
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyVideoUnavailable(I)V

    .line 425
    goto/16 :goto_0

    .line 416
    .end local v2    # "_arg0":I
    :pswitch_c
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyVideoAvailable()V

    .line 417
    goto/16 :goto_0

    .line 409
    :pswitch_d
    sget-object v2, Landroid/media/tv/TvTrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 410
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 411
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyTracksChanged(Ljava/util/List;)V

    .line 412
    goto/16 :goto_0

    .line 399
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 401
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 402
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 403
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyTrackSelected(ILjava/lang/String;)V

    .line 404
    goto/16 :goto_0

    .line 391
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_f
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 392
    .local v2, "_arg0":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 393
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyTuned(Landroid/net/Uri;)V

    .line 394
    goto/16 :goto_0

    .line 385
    .end local v2    # "_arg0":Landroid/net/Uri;
    :pswitch_10
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->release()V

    .line 386
    goto/16 :goto_0

    .line 376
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 378
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 379
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 380
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 381
    goto/16 :goto_0

    .line 366
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 368
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 369
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 370
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->sendSigningResult(Ljava/lang/String;[B)V

    .line 371
    goto/16 :goto_0

    .line 358
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[B
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 359
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 360
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->sendCurrentTvInputId(Ljava/lang/String;)V

    .line 361
    goto/16 :goto_0

    .line 350
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_14
    sget-object v2, Landroid/media/tv/TvTrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 351
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 352
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->sendTrackInfoList(Ljava/util/List;)V

    .line 353
    goto :goto_0

    .line 342
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 343
    .local v2, "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 344
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->sendStreamVolume(F)V

    .line 345
    goto :goto_0

    .line 334
    .end local v2    # "_arg0":F
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 335
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 336
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->sendCurrentChannelLcn(I)V

    .line 337
    goto :goto_0

    .line 326
    .end local v2    # "_arg0":I
    :pswitch_17
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 327
    .local v2, "_arg0":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 328
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->sendCurrentChannelUri(Landroid/net/Uri;)V

    .line 329
    goto :goto_0

    .line 318
    .end local v2    # "_arg0":Landroid/net/Uri;
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 319
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 320
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->setTeletextAppEnabled(Z)V

    .line 321
    goto :goto_0

    .line 310
    .end local v2    # "_arg0":Z
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 312
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->destroyBiInteractiveApp(Ljava/lang/String;)V

    .line 313
    goto :goto_0

    .line 300
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_1a
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 302
    .local v2, "_arg0":Landroid/net/Uri;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 303
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 304
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->createBiInteractiveApp(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 305
    goto :goto_0

    .line 294
    .end local v2    # "_arg0":Landroid/net/Uri;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_1b
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->resetInteractiveApp()V

    .line 295
    goto :goto_0

    .line 289
    :pswitch_1c
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->stopInteractiveApp()V

    .line 290
    goto :goto_0

    .line 284
    :pswitch_1d
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->startInteractiveApp()V

    .line 285
    nop

    .line 512
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
