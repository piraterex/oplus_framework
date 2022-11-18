.class public abstract Landroid/media/tv/ITvInputSession$Stub;
.super Landroid/os/Binder;
.source "ITvInputSession.java"

# interfaces
.implements Landroid/media/tv/ITvInputSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputSession$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.tv.ITvInputSession"

.field static final greylist-max-o TRANSACTION_appPrivateCommand:I = 0xa

.field static final greylist-max-o TRANSACTION_createOverlayView:I = 0xb

.field static final greylist-max-o TRANSACTION_dispatchSurfaceChanged:I = 0x4

.field static final blacklist TRANSACTION_pauseRecording:I = 0x17

.field static final greylist-max-o TRANSACTION_relayoutOverlayView:I = 0xc

.field static final greylist-max-o TRANSACTION_release:I = 0x1

.field static final blacklist TRANSACTION_removeBroadcastInfo:I = 0x1a

.field static final greylist-max-o TRANSACTION_removeOverlayView:I = 0xd

.field static final blacklist TRANSACTION_requestAd:I = 0x1b

.field static final blacklist TRANSACTION_requestBroadcastInfo:I = 0x19

.field static final blacklist TRANSACTION_resumeRecording:I = 0x18

.field static final greylist-max-o TRANSACTION_selectTrack:I = 0x8

.field static final greylist-max-o TRANSACTION_setCaptionEnabled:I = 0x7

.field static final blacklist TRANSACTION_setInteractiveAppNotificationEnabled:I = 0x9

.field static final greylist-max-o TRANSACTION_setMain:I = 0x2

.field static final greylist-max-o TRANSACTION_setSurface:I = 0x3

.field static final greylist-max-o TRANSACTION_setVolume:I = 0x5

.field static final greylist-max-o TRANSACTION_startRecording:I = 0x15

.field static final greylist-max-o TRANSACTION_stopRecording:I = 0x16

.field static final greylist-max-o TRANSACTION_timeShiftEnablePositionTracking:I = 0x14

.field static final greylist-max-o TRANSACTION_timeShiftPause:I = 0x10

.field static final greylist-max-o TRANSACTION_timeShiftPlay:I = 0xf

.field static final greylist-max-o TRANSACTION_timeShiftResume:I = 0x11

.field static final greylist-max-o TRANSACTION_timeShiftSeekTo:I = 0x12

.field static final greylist-max-o TRANSACTION_timeShiftSetPlaybackParams:I = 0x13

.field static final greylist-max-o TRANSACTION_tune:I = 0x6

.field static final greylist-max-o TRANSACTION_unblockContent:I = 0xe


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 111
    const-string v0, "android.media.tv.ITvInputSession"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ITvInputSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputSession;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 119
    if-nez p0, :cond_0

    .line 120
    const/4 v0, 0x0

    return-object v0

    .line 122
    :cond_0
    const-string v0, "android.media.tv.ITvInputSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 123
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/tv/ITvInputSession;

    if-eqz v1, :cond_1

    .line 124
    move-object v1, v0

    check-cast v1, Landroid/media/tv/ITvInputSession;

    return-object v1

    .line 126
    :cond_1
    new-instance v1, Landroid/media/tv/ITvInputSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/ITvInputSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 135
    packed-switch p0, :pswitch_data_0

    .line 247
    const/4 v0, 0x0

    return-object v0

    .line 243
    :pswitch_0
    const-string v0, "requestAd"

    return-object v0

    .line 239
    :pswitch_1
    const-string v0, "removeBroadcastInfo"

    return-object v0

    .line 235
    :pswitch_2
    const-string v0, "requestBroadcastInfo"

    return-object v0

    .line 231
    :pswitch_3
    const-string v0, "resumeRecording"

    return-object v0

    .line 227
    :pswitch_4
    const-string v0, "pauseRecording"

    return-object v0

    .line 223
    :pswitch_5
    const-string v0, "stopRecording"

    return-object v0

    .line 219
    :pswitch_6
    const-string v0, "startRecording"

    return-object v0

    .line 215
    :pswitch_7
    const-string/jumbo v0, "timeShiftEnablePositionTracking"

    return-object v0

    .line 211
    :pswitch_8
    const-string/jumbo v0, "timeShiftSetPlaybackParams"

    return-object v0

    .line 207
    :pswitch_9
    const-string/jumbo v0, "timeShiftSeekTo"

    return-object v0

    .line 203
    :pswitch_a
    const-string/jumbo v0, "timeShiftResume"

    return-object v0

    .line 199
    :pswitch_b
    const-string/jumbo v0, "timeShiftPause"

    return-object v0

    .line 195
    :pswitch_c
    const-string/jumbo v0, "timeShiftPlay"

    return-object v0

    .line 191
    :pswitch_d
    const-string/jumbo v0, "unblockContent"

    return-object v0

    .line 187
    :pswitch_e
    const-string v0, "removeOverlayView"

    return-object v0

    .line 183
    :pswitch_f
    const-string v0, "relayoutOverlayView"

    return-object v0

    .line 179
    :pswitch_10
    const-string v0, "createOverlayView"

    return-object v0

    .line 175
    :pswitch_11
    const-string v0, "appPrivateCommand"

    return-object v0

    .line 171
    :pswitch_12
    const-string v0, "setInteractiveAppNotificationEnabled"

    return-object v0

    .line 167
    :pswitch_13
    const-string v0, "selectTrack"

    return-object v0

    .line 163
    :pswitch_14
    const-string v0, "setCaptionEnabled"

    return-object v0

    .line 159
    :pswitch_15
    const-string/jumbo v0, "tune"

    return-object v0

    .line 155
    :pswitch_16
    const-string v0, "setVolume"

    return-object v0

    .line 151
    :pswitch_17
    const-string v0, "dispatchSurfaceChanged"

    return-object v0

    .line 147
    :pswitch_18
    const-string v0, "setSurface"

    return-object v0

    .line 143
    :pswitch_19
    const-string v0, "setMain"

    return-object v0

    .line 139
    :pswitch_1a
    const-string v0, "release"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 130
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 872
    const/16 v0, 0x1a

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 254
    invoke-static {p1}, Landroid/media/tv/ITvInputSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 258
    const-string v0, "android.media.tv.ITvInputSession"

    .line 259
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 260
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 270
    packed-switch p1, :pswitch_data_1

    .line 489
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 266
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 267
    return v1

    .line 482
    :pswitch_1
    sget-object v2, Landroid/media/tv/AdRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/AdRequest;

    .line 483
    .local v2, "_arg0":Landroid/media/tv/AdRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 484
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->requestAd(Landroid/media/tv/AdRequest;)V

    .line 485
    goto/16 :goto_0

    .line 474
    .end local v2    # "_arg0":Landroid/media/tv/AdRequest;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 475
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 476
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->removeBroadcastInfo(I)V

    .line 477
    goto/16 :goto_0

    .line 466
    .end local v2    # "_arg0":I
    :pswitch_3
    sget-object v2, Landroid/media/tv/BroadcastInfoRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/BroadcastInfoRequest;

    .line 467
    .local v2, "_arg0":Landroid/media/tv/BroadcastInfoRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 468
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->requestBroadcastInfo(Landroid/media/tv/BroadcastInfoRequest;)V

    .line 469
    goto/16 :goto_0

    .line 458
    .end local v2    # "_arg0":Landroid/media/tv/BroadcastInfoRequest;
    :pswitch_4
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 459
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 460
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->resumeRecording(Landroid/os/Bundle;)V

    .line 461
    goto/16 :goto_0

    .line 450
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :pswitch_5
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 451
    .restart local v2    # "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 452
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->pauseRecording(Landroid/os/Bundle;)V

    .line 453
    goto/16 :goto_0

    .line 444
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :pswitch_6
    invoke-virtual {p0}, Landroid/media/tv/ITvInputSession$Stub;->stopRecording()V

    .line 445
    goto/16 :goto_0

    .line 435
    :pswitch_7
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 437
    .local v2, "_arg0":Landroid/net/Uri;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 438
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 439
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSession$Stub;->startRecording(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 440
    goto/16 :goto_0

    .line 427
    .end local v2    # "_arg0":Landroid/net/Uri;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 428
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 429
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftEnablePositionTracking(Z)V

    .line 430
    goto/16 :goto_0

    .line 419
    .end local v2    # "_arg0":Z
    :pswitch_9
    sget-object v2, Landroid/media/PlaybackParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/PlaybackParams;

    .line 420
    .local v2, "_arg0":Landroid/media/PlaybackParams;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 421
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V

    .line 422
    goto/16 :goto_0

    .line 411
    .end local v2    # "_arg0":Landroid/media/PlaybackParams;
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 412
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 413
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftSeekTo(J)V

    .line 414
    goto/16 :goto_0

    .line 405
    .end local v2    # "_arg0":J
    :pswitch_b
    invoke-virtual {p0}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftResume()V

    .line 406
    goto/16 :goto_0

    .line 400
    :pswitch_c
    invoke-virtual {p0}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftPause()V

    .line 401
    goto/16 :goto_0

    .line 393
    :pswitch_d
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 394
    .local v2, "_arg0":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 395
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftPlay(Landroid/net/Uri;)V

    .line 396
    goto/16 :goto_0

    .line 385
    .end local v2    # "_arg0":Landroid/net/Uri;
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 386
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 387
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->unblockContent(Ljava/lang/String;)V

    .line 388
    goto/16 :goto_0

    .line 379
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_f
    invoke-virtual {p0}, Landroid/media/tv/ITvInputSession$Stub;->removeOverlayView()V

    .line 380
    goto/16 :goto_0

    .line 372
    :pswitch_10
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 373
    .local v2, "_arg0":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 374
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->relayoutOverlayView(Landroid/graphics/Rect;)V

    .line 375
    goto/16 :goto_0

    .line 362
    .end local v2    # "_arg0":Landroid/graphics/Rect;
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 364
    .local v2, "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 365
    .local v3, "_arg1":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 366
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSession$Stub;->createOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 367
    goto/16 :goto_0

    .line 352
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/graphics/Rect;
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 354
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 355
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 356
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSession$Stub;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 357
    goto/16 :goto_0

    .line 344
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 345
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 346
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->setInteractiveAppNotificationEnabled(Z)V

    .line 347
    goto :goto_0

    .line 334
    .end local v2    # "_arg0":Z
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 336
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 337
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 338
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSession$Stub;->selectTrack(ILjava/lang/String;)V

    .line 339
    goto :goto_0

    .line 326
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 327
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 328
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->setCaptionEnabled(Z)V

    .line 329
    goto :goto_0

    .line 316
    .end local v2    # "_arg0":Z
    :pswitch_16
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 318
    .local v2, "_arg0":Landroid/net/Uri;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 319
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 320
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSession$Stub;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 321
    goto :goto_0

    .line 308
    .end local v2    # "_arg0":Landroid/net/Uri;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 309
    .local v2, "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 310
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->setVolume(F)V

    .line 311
    goto :goto_0

    .line 296
    .end local v2    # "_arg0":F
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 298
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 300
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 301
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 302
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/tv/ITvInputSession$Stub;->dispatchSurfaceChanged(III)V

    .line 303
    goto :goto_0

    .line 288
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_19
    sget-object v2, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 289
    .local v2, "_arg0":Landroid/view/Surface;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 290
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->setSurface(Landroid/view/Surface;)V

    .line 291
    goto :goto_0

    .line 280
    .end local v2    # "_arg0":Landroid/view/Surface;
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 281
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 282
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->setMain(Z)V

    .line 283
    goto :goto_0

    .line 274
    .end local v2    # "_arg0":Z
    :pswitch_1b
    invoke-virtual {p0}, Landroid/media/tv/ITvInputSession$Stub;->release()V

    .line 275
    nop

    .line 492
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
