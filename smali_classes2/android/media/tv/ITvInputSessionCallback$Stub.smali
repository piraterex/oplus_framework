.class public abstract Landroid/media/tv/ITvInputSessionCallback$Stub;
.super Landroid/os/Binder;
.source "ITvInputSessionCallback.java"

# interfaces
.implements Landroid/media/tv/ITvInputSessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputSessionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputSessionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.tv.ITvInputSessionCallback"

.field static final blacklist TRANSACTION_onAdResponse:I = 0x14

.field static final blacklist TRANSACTION_onAitInfoUpdated:I = 0xe

.field static final blacklist TRANSACTION_onBroadcastInfoResponse:I = 0x13

.field static final greylist-max-o TRANSACTION_onChannelRetuned:I = 0x3

.field static final greylist-max-o TRANSACTION_onContentAllowed:I = 0x8

.field static final greylist-max-o TRANSACTION_onContentBlocked:I = 0x9

.field static final greylist-max-o TRANSACTION_onError:I = 0x12

.field static final greylist-max-o TRANSACTION_onLayoutSurface:I = 0xa

.field static final greylist-max-o TRANSACTION_onRecordingStopped:I = 0x11

.field static final greylist-max-o TRANSACTION_onSessionCreated:I = 0x1

.field static final greylist-max-o TRANSACTION_onSessionEvent:I = 0x2

.field static final blacklist TRANSACTION_onSignalStrength:I = 0xf

.field static final greylist-max-o TRANSACTION_onTimeShiftCurrentPositionChanged:I = 0xd

.field static final greylist-max-o TRANSACTION_onTimeShiftStartPositionChanged:I = 0xc

.field static final greylist-max-o TRANSACTION_onTimeShiftStatusChanged:I = 0xb

.field static final greylist-max-o TRANSACTION_onTrackSelected:I = 0x5

.field static final greylist-max-o TRANSACTION_onTracksChanged:I = 0x4

.field static final greylist-max-o TRANSACTION_onTuned:I = 0x10

.field static final greylist-max-o TRANSACTION_onVideoAvailable:I = 0x6

.field static final greylist-max-o TRANSACTION_onVideoUnavailable:I = 0x7


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 89
    const-string v0, "android.media.tv.ITvInputSessionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ITvInputSessionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputSessionCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 97
    if-nez p0, :cond_0

    .line 98
    const/4 v0, 0x0

    return-object v0

    .line 100
    :cond_0
    const-string v0, "android.media.tv.ITvInputSessionCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 101
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/tv/ITvInputSessionCallback;

    if-eqz v1, :cond_1

    .line 102
    move-object v1, v0

    check-cast v1, Landroid/media/tv/ITvInputSessionCallback;

    return-object v1

    .line 104
    :cond_1
    new-instance v1, Landroid/media/tv/ITvInputSessionCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/ITvInputSessionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 113
    packed-switch p0, :pswitch_data_0

    .line 197
    const/4 v0, 0x0

    return-object v0

    .line 193
    :pswitch_0
    const-string v0, "onAdResponse"

    return-object v0

    .line 189
    :pswitch_1
    const-string v0, "onBroadcastInfoResponse"

    return-object v0

    .line 185
    :pswitch_2
    const-string v0, "onError"

    return-object v0

    .line 181
    :pswitch_3
    const-string v0, "onRecordingStopped"

    return-object v0

    .line 177
    :pswitch_4
    const-string v0, "onTuned"

    return-object v0

    .line 173
    :pswitch_5
    const-string v0, "onSignalStrength"

    return-object v0

    .line 169
    :pswitch_6
    const-string v0, "onAitInfoUpdated"

    return-object v0

    .line 165
    :pswitch_7
    const-string v0, "onTimeShiftCurrentPositionChanged"

    return-object v0

    .line 161
    :pswitch_8
    const-string v0, "onTimeShiftStartPositionChanged"

    return-object v0

    .line 157
    :pswitch_9
    const-string v0, "onTimeShiftStatusChanged"

    return-object v0

    .line 153
    :pswitch_a
    const-string v0, "onLayoutSurface"

    return-object v0

    .line 149
    :pswitch_b
    const-string v0, "onContentBlocked"

    return-object v0

    .line 145
    :pswitch_c
    const-string v0, "onContentAllowed"

    return-object v0

    .line 141
    :pswitch_d
    const-string v0, "onVideoUnavailable"

    return-object v0

    .line 137
    :pswitch_e
    const-string v0, "onVideoAvailable"

    return-object v0

    .line 133
    :pswitch_f
    const-string v0, "onTrackSelected"

    return-object v0

    .line 129
    :pswitch_10
    const-string v0, "onTracksChanged"

    return-object v0

    .line 125
    :pswitch_11
    const-string v0, "onChannelRetuned"

    return-object v0

    .line 121
    :pswitch_12
    const-string v0, "onSessionEvent"

    return-object v0

    .line 117
    :pswitch_13
    const-string v0, "onSessionCreated"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 108
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 682
    const/16 v0, 0x13

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 204
    invoke-static {p1}, Landroid/media/tv/ITvInputSessionCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 208
    const-string v0, "android.media.tv.ITvInputSessionCallback"

    .line 209
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 210
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 220
    packed-switch p1, :pswitch_data_1

    .line 390
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 216
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    return v1

    .line 383
    :pswitch_1
    sget-object v2, Landroid/media/tv/AdResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/AdResponse;

    .line 384
    .local v2, "_arg0":Landroid/media/tv/AdResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 385
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onAdResponse(Landroid/media/tv/AdResponse;)V

    .line 386
    goto/16 :goto_0

    .line 375
    .end local v2    # "_arg0":Landroid/media/tv/AdResponse;
    :pswitch_2
    sget-object v2, Landroid/media/tv/BroadcastInfoResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/BroadcastInfoResponse;

    .line 376
    .local v2, "_arg0":Landroid/media/tv/BroadcastInfoResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 377
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onBroadcastInfoResponse(Landroid/media/tv/BroadcastInfoResponse;)V

    .line 378
    goto/16 :goto_0

    .line 367
    .end local v2    # "_arg0":Landroid/media/tv/BroadcastInfoResponse;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 368
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 369
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onError(I)V

    .line 370
    goto/16 :goto_0

    .line 359
    .end local v2    # "_arg0":I
    :pswitch_4
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 360
    .local v2, "_arg0":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 361
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onRecordingStopped(Landroid/net/Uri;)V

    .line 362
    goto/16 :goto_0

    .line 351
    .end local v2    # "_arg0":Landroid/net/Uri;
    :pswitch_5
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 352
    .restart local v2    # "_arg0":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 353
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onTuned(Landroid/net/Uri;)V

    .line 354
    goto/16 :goto_0

    .line 343
    .end local v2    # "_arg0":Landroid/net/Uri;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 344
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 345
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onSignalStrength(I)V

    .line 346
    goto/16 :goto_0

    .line 335
    .end local v2    # "_arg0":I
    :pswitch_7
    sget-object v2, Landroid/media/tv/AitInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/AitInfo;

    .line 336
    .local v2, "_arg0":Landroid/media/tv/AitInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 337
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onAitInfoUpdated(Landroid/media/tv/AitInfo;)V

    .line 338
    goto/16 :goto_0

    .line 327
    .end local v2    # "_arg0":Landroid/media/tv/AitInfo;
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 328
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 329
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onTimeShiftCurrentPositionChanged(J)V

    .line 330
    goto/16 :goto_0

    .line 319
    .end local v2    # "_arg0":J
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 320
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 321
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onTimeShiftStartPositionChanged(J)V

    .line 322
    goto/16 :goto_0

    .line 311
    .end local v2    # "_arg0":J
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 312
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 313
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onTimeShiftStatusChanged(I)V

    .line 314
    goto/16 :goto_0

    .line 297
    .end local v2    # "_arg0":I
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 299
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 301
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 303
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 304
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onLayoutSurface(IIII)V

    .line 306
    goto/16 :goto_0

    .line 289
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 290
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 291
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onContentBlocked(Ljava/lang/String;)V

    .line 292
    goto :goto_0

    .line 283
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_d
    invoke-virtual {p0}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onContentAllowed()V

    .line 284
    goto :goto_0

    .line 276
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 277
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 278
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onVideoUnavailable(I)V

    .line 279
    goto :goto_0

    .line 270
    .end local v2    # "_arg0":I
    :pswitch_f
    invoke-virtual {p0}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onVideoAvailable()V

    .line 271
    goto :goto_0

    .line 261
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 263
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 264
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 265
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onTrackSelected(ILjava/lang/String;)V

    .line 266
    goto :goto_0

    .line 253
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_11
    sget-object v2, Landroid/media/tv/TvTrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 254
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 255
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onTracksChanged(Ljava/util/List;)V

    .line 256
    goto :goto_0

    .line 245
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    :pswitch_12
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 246
    .local v2, "_arg0":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 247
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onChannelRetuned(Landroid/net/Uri;)V

    .line 248
    goto :goto_0

    .line 235
    .end local v2    # "_arg0":Landroid/net/Uri;
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 238
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 239
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 240
    goto :goto_0

    .line 225
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/tv/ITvInputSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputSession;

    move-result-object v2

    .line 227
    .local v2, "_arg0":Landroid/media/tv/ITvInputSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 228
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V

    .line 230
    nop

    .line 393
    .end local v2    # "_arg0":Landroid/media/tv/ITvInputSession;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
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
    .end packed-switch
.end method
