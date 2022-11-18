.class public abstract Landroid/media/session/ISessionController$Stub;
.super Landroid/os/Binder;
.source "ISessionController.java"

# interfaces
.implements Landroid/media/session/ISessionController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/ISessionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/ISessionController$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.session.ISessionController"

.field static final greylist-max-o TRANSACTION_adjustVolume:I = 0xb

.field static final greylist-max-o TRANSACTION_fastForward:I = 0x1a

.field static final greylist-max-o TRANSACTION_getExtras:I = 0x24

.field static final greylist-max-o TRANSACTION_getFlags:I = 0x9

.field static final greylist-max-o TRANSACTION_getLaunchPendingIntent:I = 0x8

.field static final greylist-max-o TRANSACTION_getMetadata:I = 0x20

.field static final greylist-max-o TRANSACTION_getPackageName:I = 0x5

.field static final greylist-max-o TRANSACTION_getPlaybackState:I = 0x21

.field static final greylist-max-o TRANSACTION_getQueue:I = 0x22

.field static final greylist-max-o TRANSACTION_getQueueTitle:I = 0x23

.field static final greylist-max-o TRANSACTION_getRatingType:I = 0x25

.field static final blacklist TRANSACTION_getSessionInfo:I = 0x7

.field static final greylist-max-o TRANSACTION_getTag:I = 0x6

.field static final greylist-max-o TRANSACTION_getVolumeAttributes:I = 0xa

.field static final greylist-max-o TRANSACTION_next:I = 0x18

.field static final greylist-max-o TRANSACTION_pause:I = 0x16

.field static final greylist-max-o TRANSACTION_play:I = 0x11

.field static final greylist-max-o TRANSACTION_playFromMediaId:I = 0x12

.field static final greylist-max-o TRANSACTION_playFromSearch:I = 0x13

.field static final greylist-max-o TRANSACTION_playFromUri:I = 0x14

.field static final greylist-max-o TRANSACTION_prepare:I = 0xd

.field static final greylist-max-o TRANSACTION_prepareFromMediaId:I = 0xe

.field static final greylist-max-o TRANSACTION_prepareFromSearch:I = 0xf

.field static final greylist-max-o TRANSACTION_prepareFromUri:I = 0x10

.field static final greylist-max-o TRANSACTION_previous:I = 0x19

.field static final greylist-max-o TRANSACTION_rate:I = 0x1d

.field static final blacklist TRANSACTION_registerCallback:I = 0x3

.field static final greylist-max-o TRANSACTION_rewind:I = 0x1b

.field static final greylist-max-o TRANSACTION_seekTo:I = 0x1c

.field static final greylist-max-o TRANSACTION_sendCommand:I = 0x1

.field static final greylist-max-o TRANSACTION_sendCustomAction:I = 0x1f

.field static final greylist-max-o TRANSACTION_sendMediaButton:I = 0x2

.field static final blacklist TRANSACTION_setPlaybackSpeed:I = 0x1e

.field static final greylist-max-o TRANSACTION_setVolumeTo:I = 0xc

.field static final greylist-max-o TRANSACTION_skipToQueueItem:I = 0x15

.field static final greylist-max-o TRANSACTION_stop:I = 0x17

.field static final blacklist TRANSACTION_unregisterCallback:I = 0x4


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 149
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 150
    const-string v0, "android.media.session.ISessionController"

    invoke-virtual {p0, p0, v0}, Landroid/media/session/ISessionController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionController;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 158
    if-nez p0, :cond_0

    .line 159
    const/4 v0, 0x0

    return-object v0

    .line 161
    :cond_0
    const-string v0, "android.media.session.ISessionController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 162
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/session/ISessionController;

    if-eqz v1, :cond_1

    .line 163
    move-object v1, v0

    check-cast v1, Landroid/media/session/ISessionController;

    return-object v1

    .line 165
    :cond_1
    new-instance v1, Landroid/media/session/ISessionController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/session/ISessionController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 174
    packed-switch p0, :pswitch_data_0

    .line 326
    const/4 v0, 0x0

    return-object v0

    .line 322
    :pswitch_0
    const-string v0, "getRatingType"

    return-object v0

    .line 318
    :pswitch_1
    const-string v0, "getExtras"

    return-object v0

    .line 314
    :pswitch_2
    const-string v0, "getQueueTitle"

    return-object v0

    .line 310
    :pswitch_3
    const-string v0, "getQueue"

    return-object v0

    .line 306
    :pswitch_4
    const-string v0, "getPlaybackState"

    return-object v0

    .line 302
    :pswitch_5
    const-string v0, "getMetadata"

    return-object v0

    .line 298
    :pswitch_6
    const-string v0, "sendCustomAction"

    return-object v0

    .line 294
    :pswitch_7
    const-string v0, "setPlaybackSpeed"

    return-object v0

    .line 290
    :pswitch_8
    const-string v0, "rate"

    return-object v0

    .line 286
    :pswitch_9
    const-string v0, "seekTo"

    return-object v0

    .line 282
    :pswitch_a
    const-string v0, "rewind"

    return-object v0

    .line 278
    :pswitch_b
    const-string v0, "fastForward"

    return-object v0

    .line 274
    :pswitch_c
    const-string v0, "previous"

    return-object v0

    .line 270
    :pswitch_d
    const-string v0, "next"

    return-object v0

    .line 266
    :pswitch_e
    const-string v0, "stop"

    return-object v0

    .line 262
    :pswitch_f
    const-string v0, "pause"

    return-object v0

    .line 258
    :pswitch_10
    const-string v0, "skipToQueueItem"

    return-object v0

    .line 254
    :pswitch_11
    const-string v0, "playFromUri"

    return-object v0

    .line 250
    :pswitch_12
    const-string v0, "playFromSearch"

    return-object v0

    .line 246
    :pswitch_13
    const-string v0, "playFromMediaId"

    return-object v0

    .line 242
    :pswitch_14
    const-string v0, "play"

    return-object v0

    .line 238
    :pswitch_15
    const-string v0, "prepareFromUri"

    return-object v0

    .line 234
    :pswitch_16
    const-string v0, "prepareFromSearch"

    return-object v0

    .line 230
    :pswitch_17
    const-string v0, "prepareFromMediaId"

    return-object v0

    .line 226
    :pswitch_18
    const-string v0, "prepare"

    return-object v0

    .line 222
    :pswitch_19
    const-string v0, "setVolumeTo"

    return-object v0

    .line 218
    :pswitch_1a
    const-string v0, "adjustVolume"

    return-object v0

    .line 214
    :pswitch_1b
    const-string v0, "getVolumeAttributes"

    return-object v0

    .line 210
    :pswitch_1c
    const-string v0, "getFlags"

    return-object v0

    .line 206
    :pswitch_1d
    const-string v0, "getLaunchPendingIntent"

    return-object v0

    .line 202
    :pswitch_1e
    const-string v0, "getSessionInfo"

    return-object v0

    .line 198
    :pswitch_1f
    const-string v0, "getTag"

    return-object v0

    .line 194
    :pswitch_20
    const-string v0, "getPackageName"

    return-object v0

    .line 190
    :pswitch_21
    const-string/jumbo v0, "unregisterCallback"

    return-object v0

    .line 186
    :pswitch_22
    const-string v0, "registerCallback"

    return-object v0

    .line 182
    :pswitch_23
    const-string v0, "sendMediaButton"

    return-object v0

    .line 178
    :pswitch_24
    const-string v0, "sendCommand"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 169
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1401
    const/16 v0, 0x24

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 333
    invoke-static {p1}, Landroid/media/session/ISessionController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 337
    const-string v0, "android.media.session.ISessionController"

    .line 338
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 339
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 349
    packed-switch p1, :pswitch_data_1

    .line 727
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 345
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 346
    return v1

    .line 720
    :pswitch_1
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getRatingType()I

    move-result v2

    .line 721
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 722
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 723
    goto/16 :goto_0

    .line 713
    .end local v2    # "_result":I
    :pswitch_2
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 714
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 715
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 716
    goto/16 :goto_0

    .line 700
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_3
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getQueueTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 701
    .local v2, "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 702
    if-eqz v2, :cond_1

    .line 703
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 704
    invoke-static {v2, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 707
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 709
    goto/16 :goto_0

    .line 693
    .end local v2    # "_result":Ljava/lang/CharSequence;
    :pswitch_4
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getQueue()Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 694
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 696
    goto/16 :goto_0

    .line 686
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_5
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v2

    .line 687
    .local v2, "_result":Landroid/media/session/PlaybackState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 689
    goto/16 :goto_0

    .line 679
    .end local v2    # "_result":Landroid/media/session/PlaybackState;
    :pswitch_6
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v2

    .line 680
    .local v2, "_result":Landroid/media/MediaMetadata;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 681
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 682
    goto/16 :goto_0

    .line 667
    .end local v2    # "_result":Landroid/media/MediaMetadata;
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 669
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 671
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 672
    .local v4, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 673
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/session/ISessionController$Stub;->sendCustomAction(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 674
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 675
    goto/16 :goto_0

    .line 656
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 658
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 659
    .local v3, "_arg1":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 660
    invoke-virtual {p0, v2, v3}, Landroid/media/session/ISessionController$Stub;->setPlaybackSpeed(Ljava/lang/String;F)V

    .line 661
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    goto/16 :goto_0

    .line 645
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":F
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 647
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/media/Rating;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/Rating;

    .line 648
    .local v3, "_arg1":Landroid/media/Rating;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 649
    invoke-virtual {p0, v2, v3}, Landroid/media/session/ISessionController$Stub;->rate(Ljava/lang/String;Landroid/media/Rating;)V

    .line 650
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    goto/16 :goto_0

    .line 634
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/media/Rating;
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 636
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 637
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 638
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/session/ISessionController$Stub;->seekTo(Ljava/lang/String;J)V

    .line 639
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    goto/16 :goto_0

    .line 625
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":J
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 626
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 627
    invoke-virtual {p0, v2}, Landroid/media/session/ISessionController$Stub;->rewind(Ljava/lang/String;)V

    .line 628
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    goto/16 :goto_0

    .line 616
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 617
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 618
    invoke-virtual {p0, v2}, Landroid/media/session/ISessionController$Stub;->fastForward(Ljava/lang/String;)V

    .line 619
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 620
    goto/16 :goto_0

    .line 607
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 608
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 609
    invoke-virtual {p0, v2}, Landroid/media/session/ISessionController$Stub;->previous(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 611
    goto/16 :goto_0

    .line 598
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 599
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 600
    invoke-virtual {p0, v2}, Landroid/media/session/ISessionController$Stub;->next(Ljava/lang/String;)V

    .line 601
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 602
    goto/16 :goto_0

    .line 589
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 590
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 591
    invoke-virtual {p0, v2}, Landroid/media/session/ISessionController$Stub;->stop(Ljava/lang/String;)V

    .line 592
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    goto/16 :goto_0

    .line 580
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 581
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 582
    invoke-virtual {p0, v2}, Landroid/media/session/ISessionController$Stub;->pause(Ljava/lang/String;)V

    .line 583
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    goto/16 :goto_0

    .line 569
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 571
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 572
    .restart local v3    # "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 573
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/session/ISessionController$Stub;->skipToQueueItem(Ljava/lang/String;J)V

    .line 574
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 575
    goto/16 :goto_0

    .line 556
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":J
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 558
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 560
    .local v3, "_arg1":Landroid/net/Uri;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 561
    .restart local v4    # "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 562
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/session/ISessionController$Stub;->playFromUri(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 563
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    goto/16 :goto_0

    .line 543
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/net/Uri;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 545
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 547
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 548
    .restart local v4    # "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 549
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/session/ISessionController$Stub;->playFromSearch(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 550
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 551
    goto/16 :goto_0

    .line 530
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 532
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 534
    .restart local v3    # "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 535
    .restart local v4    # "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 536
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/session/ISessionController$Stub;->playFromMediaId(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 537
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    goto/16 :goto_0

    .line 521
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 522
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 523
    invoke-virtual {p0, v2}, Landroid/media/session/ISessionController$Stub;->play(Ljava/lang/String;)V

    .line 524
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 525
    goto/16 :goto_0

    .line 508
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 510
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 512
    .local v3, "_arg1":Landroid/net/Uri;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 513
    .restart local v4    # "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 514
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/session/ISessionController$Stub;->prepareFromUri(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 515
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 516
    goto/16 :goto_0

    .line 495
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/net/Uri;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 497
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 499
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 500
    .restart local v4    # "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 501
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/session/ISessionController$Stub;->prepareFromSearch(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 502
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 503
    goto/16 :goto_0

    .line 482
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 484
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 486
    .restart local v3    # "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 487
    .restart local v4    # "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 488
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/session/ISessionController$Stub;->prepareFromMediaId(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 489
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    goto/16 :goto_0

    .line 473
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 474
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 475
    invoke-virtual {p0, v2}, Landroid/media/session/ISessionController$Stub;->prepare(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    goto/16 :goto_0

    .line 458
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 460
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 462
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 464
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 465
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 466
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/media/session/ISessionController$Stub;->setVolumeTo(Ljava/lang/String;Ljava/lang/String;II)V

    .line 467
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    goto/16 :goto_0

    .line 443
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 445
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 447
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 449
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 450
    .restart local v5    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 451
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/media/session/ISessionController$Stub;->adjustVolume(Ljava/lang/String;Ljava/lang/String;II)V

    .line 452
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    goto/16 :goto_0

    .line 435
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :pswitch_1c
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getVolumeAttributes()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v2

    .line 436
    .local v2, "_result":Landroid/media/session/MediaController$PlaybackInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 438
    goto/16 :goto_0

    .line 428
    .end local v2    # "_result":Landroid/media/session/MediaController$PlaybackInfo;
    :pswitch_1d
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getFlags()J

    move-result-wide v2

    .line 429
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 431
    goto/16 :goto_0

    .line 421
    .end local v2    # "_result":J
    :pswitch_1e
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getLaunchPendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    .line 422
    .local v2, "_result":Landroid/app/PendingIntent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 424
    goto/16 :goto_0

    .line 414
    .end local v2    # "_result":Landroid/app/PendingIntent;
    :pswitch_1f
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getSessionInfo()Landroid/os/Bundle;

    move-result-object v2

    .line 415
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 417
    goto/16 :goto_0

    .line 407
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_20
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getTag()Ljava/lang/String;

    move-result-object v2

    .line 408
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 410
    goto :goto_0

    .line 400
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_21
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 401
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 403
    goto :goto_0

    .line 392
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/session/ISessionControllerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v2

    .line 393
    .local v2, "_arg0":Landroid/media/session/ISessionControllerCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 394
    invoke-virtual {p0, v2}, Landroid/media/session/ISessionController$Stub;->unregisterCallback(Landroid/media/session/ISessionControllerCallback;)V

    .line 395
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    goto :goto_0

    .line 381
    .end local v2    # "_arg0":Landroid/media/session/ISessionControllerCallback;
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 383
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/session/ISessionControllerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v3

    .line 384
    .local v3, "_arg1":Landroid/media/session/ISessionControllerCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 385
    invoke-virtual {p0, v2, v3}, Landroid/media/session/ISessionController$Stub;->registerCallback(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;)V

    .line 386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    goto :goto_0

    .line 369
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/media/session/ISessionControllerCallback;
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 371
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/KeyEvent;

    .line 372
    .local v3, "_arg1":Landroid/view/KeyEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 373
    invoke-virtual {p0, v2, v3}, Landroid/media/session/ISessionController$Stub;->sendMediaButton(Ljava/lang/String;Landroid/view/KeyEvent;)Z

    move-result v4

    .line 374
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 376
    goto :goto_0

    .line 354
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/view/KeyEvent;
    .end local v4    # "_result":Z
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 356
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 358
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 360
    .local v4, "_arg2":Landroid/os/Bundle;
    sget-object v5, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ResultReceiver;

    .line 361
    .local v5, "_arg3":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 362
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/media/session/ISessionController$Stub;->sendCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 363
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    nop

    .line 730
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    .end local v5    # "_arg3":Landroid/os/ResultReceiver;
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
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
