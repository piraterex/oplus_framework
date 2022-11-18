.class public abstract Landroid/media/session/ISessionManager$Stub;
.super Landroid/os/Binder;
.source "ISessionManager.java"

# interfaces
.implements Landroid/media/session/ISessionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/ISessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/ISessionManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.session.ISessionManager"

.field static final blacklist TRANSACTION_addOnMediaKeyEventDispatchedListener:I = 0x11

.field static final blacklist TRANSACTION_addOnMediaKeyEventSessionChangedListener:I = 0x13

.field static final blacklist TRANSACTION_addSession2TokensListener:I = 0xc

.field static final greylist-max-o TRANSACTION_addSessionsListener:I = 0xa

.field static final greylist-max-o TRANSACTION_createSession:I = 0x1

.field static final greylist-max-o TRANSACTION_dispatchAdjustVolume:I = 0x9

.field static final greylist-max-o TRANSACTION_dispatchMediaKeyEvent:I = 0x5

.field static final blacklist TRANSACTION_dispatchMediaKeyEventToSessionAsSystemService:I = 0x6

.field static final greylist-max-o TRANSACTION_dispatchVolumeKeyEvent:I = 0x7

.field static final blacklist TRANSACTION_dispatchVolumeKeyEventToSessionAsSystemService:I = 0x8

.field static final blacklist TRANSACTION_getMediaKeyEventSession:I = 0x3

.field static final blacklist TRANSACTION_getMediaKeyEventSessionPackageName:I = 0x4

.field static final blacklist TRANSACTION_getSessionPolicies:I = 0x1c

.field static final greylist-max-o TRANSACTION_getSessions:I = 0x2

.field static final blacklist TRANSACTION_hasCustomMediaKeyDispatcher:I = 0x1a

.field static final blacklist TRANSACTION_hasCustomMediaSessionPolicyProvider:I = 0x1b

.field static final greylist-max-o TRANSACTION_isGlobalPriorityActive:I = 0x10

.field static final greylist-max-o TRANSACTION_isTrusted:I = 0x17

.field static final blacklist TRANSACTION_registerRemoteSessionCallback:I = 0xe

.field static final blacklist TRANSACTION_removeOnMediaKeyEventDispatchedListener:I = 0x12

.field static final blacklist TRANSACTION_removeOnMediaKeyEventSessionChangedListener:I = 0x14

.field static final blacklist TRANSACTION_removeSession2TokensListener:I = 0xd

.field static final greylist-max-o TRANSACTION_removeSessionsListener:I = 0xb

.field static final blacklist TRANSACTION_setCustomMediaKeyDispatcher:I = 0x18

.field static final blacklist TRANSACTION_setCustomMediaSessionPolicyProvider:I = 0x19

.field static final greylist-max-o TRANSACTION_setOnMediaKeyListener:I = 0x16

.field static final greylist-max-o TRANSACTION_setOnVolumeKeyLongPressListener:I = 0x15

.field static final blacklist TRANSACTION_setSessionPolicies:I = 0x1d

.field static final blacklist TRANSACTION_unregisterRemoteSessionCallback:I = 0xf


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 122
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 123
    const-string v0, "android.media.session.ISessionManager"

    invoke-virtual {p0, p0, v0}, Landroid/media/session/ISessionManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 131
    if-nez p0, :cond_0

    .line 132
    const/4 v0, 0x0

    return-object v0

    .line 134
    :cond_0
    const-string v0, "android.media.session.ISessionManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 135
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/session/ISessionManager;

    if-eqz v1, :cond_1

    .line 136
    move-object v1, v0

    check-cast v1, Landroid/media/session/ISessionManager;

    return-object v1

    .line 138
    :cond_1
    new-instance v1, Landroid/media/session/ISessionManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/session/ISessionManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 147
    packed-switch p0, :pswitch_data_0

    .line 267
    const/4 v0, 0x0

    return-object v0

    .line 263
    :pswitch_0
    const-string v0, "setSessionPolicies"

    return-object v0

    .line 259
    :pswitch_1
    const-string v0, "getSessionPolicies"

    return-object v0

    .line 255
    :pswitch_2
    const-string v0, "hasCustomMediaSessionPolicyProvider"

    return-object v0

    .line 251
    :pswitch_3
    const-string v0, "hasCustomMediaKeyDispatcher"

    return-object v0

    .line 247
    :pswitch_4
    const-string v0, "setCustomMediaSessionPolicyProvider"

    return-object v0

    .line 243
    :pswitch_5
    const-string v0, "setCustomMediaKeyDispatcher"

    return-object v0

    .line 239
    :pswitch_6
    const-string v0, "isTrusted"

    return-object v0

    .line 235
    :pswitch_7
    const-string v0, "setOnMediaKeyListener"

    return-object v0

    .line 231
    :pswitch_8
    const-string v0, "setOnVolumeKeyLongPressListener"

    return-object v0

    .line 227
    :pswitch_9
    const-string v0, "removeOnMediaKeyEventSessionChangedListener"

    return-object v0

    .line 223
    :pswitch_a
    const-string v0, "addOnMediaKeyEventSessionChangedListener"

    return-object v0

    .line 219
    :pswitch_b
    const-string v0, "removeOnMediaKeyEventDispatchedListener"

    return-object v0

    .line 215
    :pswitch_c
    const-string v0, "addOnMediaKeyEventDispatchedListener"

    return-object v0

    .line 211
    :pswitch_d
    const-string v0, "isGlobalPriorityActive"

    return-object v0

    .line 207
    :pswitch_e
    const-string/jumbo v0, "unregisterRemoteSessionCallback"

    return-object v0

    .line 203
    :pswitch_f
    const-string v0, "registerRemoteSessionCallback"

    return-object v0

    .line 199
    :pswitch_10
    const-string v0, "removeSession2TokensListener"

    return-object v0

    .line 195
    :pswitch_11
    const-string v0, "addSession2TokensListener"

    return-object v0

    .line 191
    :pswitch_12
    const-string v0, "removeSessionsListener"

    return-object v0

    .line 187
    :pswitch_13
    const-string v0, "addSessionsListener"

    return-object v0

    .line 183
    :pswitch_14
    const-string v0, "dispatchAdjustVolume"

    return-object v0

    .line 179
    :pswitch_15
    const-string v0, "dispatchVolumeKeyEventToSessionAsSystemService"

    return-object v0

    .line 175
    :pswitch_16
    const-string v0, "dispatchVolumeKeyEvent"

    return-object v0

    .line 171
    :pswitch_17
    const-string v0, "dispatchMediaKeyEventToSessionAsSystemService"

    return-object v0

    .line 167
    :pswitch_18
    const-string v0, "dispatchMediaKeyEvent"

    return-object v0

    .line 163
    :pswitch_19
    const-string v0, "getMediaKeyEventSessionPackageName"

    return-object v0

    .line 159
    :pswitch_1a
    const-string v0, "getMediaKeyEventSession"

    return-object v0

    .line 155
    :pswitch_1b
    const-string v0, "getSessions"

    return-object v0

    .line 151
    :pswitch_1c
    const-string v0, "createSession"

    return-object v0

    nop

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

    .line 142
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1168
    const/16 v0, 0x1c

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 274
    invoke-static {p1}, Landroid/media/session/ISessionManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 278
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "android.media.session.ISessionManager"

    .line 279
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 280
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    :cond_0
    packed-switch v8, :pswitch_data_0

    .line 290
    packed-switch v8, :pswitch_data_1

    .line 620
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 286
    :pswitch_0
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 287
    return v12

    .line 610
    :pswitch_1
    sget-object v0, Landroid/media/session/MediaSession$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession$Token;

    .line 612
    .local v0, "_arg0":Landroid/media/session/MediaSession$Token;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 613
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 614
    invoke-virtual {v7, v0, v1}, Landroid/media/session/ISessionManager$Stub;->setSessionPolicies(Landroid/media/session/MediaSession$Token;I)V

    .line 615
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 616
    goto/16 :goto_0

    .line 600
    .end local v0    # "_arg0":Landroid/media/session/MediaSession$Token;
    .end local v1    # "_arg1":I
    :pswitch_2
    sget-object v0, Landroid/media/session/MediaSession$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession$Token;

    .line 601
    .restart local v0    # "_arg0":Landroid/media/session/MediaSession$Token;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 602
    invoke-virtual {v7, v0}, Landroid/media/session/ISessionManager$Stub;->getSessionPolicies(Landroid/media/session/MediaSession$Token;)I

    move-result v1

    .line 603
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 604
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 605
    goto/16 :goto_0

    .line 590
    .end local v0    # "_arg0":Landroid/media/session/MediaSession$Token;
    .end local v1    # "_result":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 591
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 592
    invoke-virtual {v7, v0}, Landroid/media/session/ISessionManager$Stub;->hasCustomMediaSessionPolicyProvider(Ljava/lang/String;)Z

    move-result v1

    .line 593
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 595
    goto/16 :goto_0

    .line 580
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 581
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 582
    invoke-virtual {v7, v0}, Landroid/media/session/ISessionManager$Stub;->hasCustomMediaKeyDispatcher(Ljava/lang/String;)Z

    move-result v1

    .line 583
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 585
    goto/16 :goto_0

    .line 571
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 572
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 573
    invoke-virtual {v7, v0}, Landroid/media/session/ISessionManager$Stub;->setCustomMediaSessionPolicyProvider(Ljava/lang/String;)V

    .line 574
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 575
    goto/16 :goto_0

    .line 562
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 563
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 564
    invoke-virtual {v7, v0}, Landroid/media/session/ISessionManager$Stub;->setCustomMediaKeyDispatcher(Ljava/lang/String;)V

    .line 565
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    goto/16 :goto_0

    .line 548
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 550
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 552
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 553
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 554
    invoke-virtual {v7, v0, v1, v2}, Landroid/media/session/ISessionManager$Stub;->isTrusted(Ljava/lang/String;II)Z

    move-result v3

    .line 555
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 557
    goto/16 :goto_0

    .line 539
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/session/IOnMediaKeyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v0

    .line 540
    .local v0, "_arg0":Landroid/media/session/IOnMediaKeyListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 541
    invoke-virtual {v7, v0}, Landroid/media/session/ISessionManager$Stub;->setOnMediaKeyListener(Landroid/media/session/IOnMediaKeyListener;)V

    .line 542
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 543
    goto/16 :goto_0

    .line 530
    .end local v0    # "_arg0":Landroid/media/session/IOnMediaKeyListener;
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/session/IOnVolumeKeyLongPressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object v0

    .line 531
    .local v0, "_arg0":Landroid/media/session/IOnVolumeKeyLongPressListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 532
    invoke-virtual {v7, v0}, Landroid/media/session/ISessionManager$Stub;->setOnVolumeKeyLongPressListener(Landroid/media/session/IOnVolumeKeyLongPressListener;)V

    .line 533
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    goto/16 :goto_0

    .line 521
    .end local v0    # "_arg0":Landroid/media/session/IOnVolumeKeyLongPressListener;
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/session/IOnMediaKeyEventSessionChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/IOnMediaKeyEventSessionChangedListener;

    move-result-object v0

    .line 522
    .local v0, "_arg0":Landroid/media/session/IOnMediaKeyEventSessionChangedListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 523
    invoke-virtual {v7, v0}, Landroid/media/session/ISessionManager$Stub;->removeOnMediaKeyEventSessionChangedListener(Landroid/media/session/IOnMediaKeyEventSessionChangedListener;)V

    .line 524
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 525
    goto/16 :goto_0

    .line 510
    .end local v0    # "_arg0":Landroid/media/session/IOnMediaKeyEventSessionChangedListener;
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/session/IOnMediaKeyEventSessionChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/IOnMediaKeyEventSessionChangedListener;

    move-result-object v0

    .line 512
    .restart local v0    # "_arg0":Landroid/media/session/IOnMediaKeyEventSessionChangedListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 513
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 514
    invoke-virtual {v7, v0, v1}, Landroid/media/session/ISessionManager$Stub;->addOnMediaKeyEventSessionChangedListener(Landroid/media/session/IOnMediaKeyEventSessionChangedListener;Ljava/lang/String;)V

    .line 515
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 516
    goto/16 :goto_0

    .line 501
    .end local v0    # "_arg0":Landroid/media/session/IOnMediaKeyEventSessionChangedListener;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/session/IOnMediaKeyEventDispatchedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/IOnMediaKeyEventDispatchedListener;

    move-result-object v0

    .line 502
    .local v0, "_arg0":Landroid/media/session/IOnMediaKeyEventDispatchedListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 503
    invoke-virtual {v7, v0}, Landroid/media/session/ISessionManager$Stub;->removeOnMediaKeyEventDispatchedListener(Landroid/media/session/IOnMediaKeyEventDispatchedListener;)V

    .line 504
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    goto/16 :goto_0

    .line 492
    .end local v0    # "_arg0":Landroid/media/session/IOnMediaKeyEventDispatchedListener;
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/session/IOnMediaKeyEventDispatchedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/IOnMediaKeyEventDispatchedListener;

    move-result-object v0

    .line 493
    .restart local v0    # "_arg0":Landroid/media/session/IOnMediaKeyEventDispatchedListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 494
    invoke-virtual {v7, v0}, Landroid/media/session/ISessionManager$Stub;->addOnMediaKeyEventDispatchedListener(Landroid/media/session/IOnMediaKeyEventDispatchedListener;)V

    .line 495
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    goto/16 :goto_0

    .line 484
    .end local v0    # "_arg0":Landroid/media/session/IOnMediaKeyEventDispatchedListener;
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionManager$Stub;->isGlobalPriorityActive()Z

    move-result v0

    .line 485
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 487
    goto/16 :goto_0

    .line 476
    .end local v0    # "_result":Z
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRemoteSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteSessionCallback;

    move-result-object v0

    .line 477
    .local v0, "_arg0":Landroid/media/IRemoteSessionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 478
    invoke-virtual {v7, v0}, Landroid/media/session/ISessionManager$Stub;->unregisterRemoteSessionCallback(Landroid/media/IRemoteSessionCallback;)V

    .line 479
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    goto/16 :goto_0

    .line 467
    .end local v0    # "_arg0":Landroid/media/IRemoteSessionCallback;
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRemoteSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteSessionCallback;

    move-result-object v0

    .line 468
    .restart local v0    # "_arg0":Landroid/media/IRemoteSessionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 469
    invoke-virtual {v7, v0}, Landroid/media/session/ISessionManager$Stub;->registerRemoteSessionCallback(Landroid/media/IRemoteSessionCallback;)V

    .line 470
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    goto/16 :goto_0

    .line 458
    .end local v0    # "_arg0":Landroid/media/IRemoteSessionCallback;
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/session/ISession2TokensListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISession2TokensListener;

    move-result-object v0

    .line 459
    .local v0, "_arg0":Landroid/media/session/ISession2TokensListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 460
    invoke-virtual {v7, v0}, Landroid/media/session/ISessionManager$Stub;->removeSession2TokensListener(Landroid/media/session/ISession2TokensListener;)V

    .line 461
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    goto/16 :goto_0

    .line 447
    .end local v0    # "_arg0":Landroid/media/session/ISession2TokensListener;
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/session/ISession2TokensListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISession2TokensListener;

    move-result-object v0

    .line 449
    .restart local v0    # "_arg0":Landroid/media/session/ISession2TokensListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 450
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 451
    invoke-virtual {v7, v0, v1}, Landroid/media/session/ISessionManager$Stub;->addSession2TokensListener(Landroid/media/session/ISession2TokensListener;I)V

    .line 452
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    goto/16 :goto_0

    .line 438
    .end local v0    # "_arg0":Landroid/media/session/ISession2TokensListener;
    .end local v1    # "_arg1":I
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/session/IActiveSessionsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/IActiveSessionsListener;

    move-result-object v0

    .line 439
    .local v0, "_arg0":Landroid/media/session/IActiveSessionsListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 440
    invoke-virtual {v7, v0}, Landroid/media/session/ISessionManager$Stub;->removeSessionsListener(Landroid/media/session/IActiveSessionsListener;)V

    .line 441
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    goto/16 :goto_0

    .line 425
    .end local v0    # "_arg0":Landroid/media/session/IActiveSessionsListener;
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/session/IActiveSessionsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/IActiveSessionsListener;

    move-result-object v0

    .line 427
    .restart local v0    # "_arg0":Landroid/media/session/IActiveSessionsListener;
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 429
    .local v1, "_arg1":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 430
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 431
    invoke-virtual {v7, v0, v1, v2}, Landroid/media/session/ISessionManager$Stub;->addSessionsListener(Landroid/media/session/IActiveSessionsListener;Landroid/content/ComponentName;I)V

    .line 432
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    goto/16 :goto_0

    .line 408
    .end local v0    # "_arg0":Landroid/media/session/IActiveSessionsListener;
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    .end local v2    # "_arg2":I
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 410
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 412
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 414
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 416
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 417
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 418
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/media/session/ISessionManager$Stub;->dispatchAdjustVolume(Ljava/lang/String;Ljava/lang/String;III)V

    .line 419
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    goto/16 :goto_0

    .line 393
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 397
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/KeyEvent;

    .line 399
    .local v2, "_arg2":Landroid/view/KeyEvent;
    sget-object v3, Landroid/media/session/MediaSession$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/session/MediaSession$Token;

    .line 400
    .local v3, "_arg3":Landroid/media/session/MediaSession$Token;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 401
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/media/session/ISessionManager$Stub;->dispatchVolumeKeyEventToSessionAsSystemService(Ljava/lang/String;Ljava/lang/String;Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)V

    .line 402
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    goto/16 :goto_0

    .line 374
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/view/KeyEvent;
    .end local v3    # "_arg3":Landroid/media/session/MediaSession$Token;
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 376
    .local v13, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 378
    .local v14, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    .line 380
    .local v15, "_arg2":Z
    sget-object v0, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/view/KeyEvent;

    .line 382
    .local v16, "_arg3":Landroid/view/KeyEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 384
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 385
    .local v18, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 386
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move v3, v15

    move-object/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/media/session/ISessionManager$Stub;->dispatchVolumeKeyEvent(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/KeyEvent;IZ)V

    .line 387
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    goto/16 :goto_0

    .line 360
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":Z
    .end local v16    # "_arg3":Landroid/view/KeyEvent;
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":Z
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 362
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .line 364
    .local v1, "_arg1":Landroid/view/KeyEvent;
    sget-object v2, Landroid/media/session/MediaSession$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaSession$Token;

    .line 365
    .local v2, "_arg2":Landroid/media/session/MediaSession$Token;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 366
    invoke-virtual {v7, v0, v1, v2}, Landroid/media/session/ISessionManager$Stub;->dispatchMediaKeyEventToSessionAsSystemService(Ljava/lang/String;Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)Z

    move-result v3

    .line 367
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 369
    goto/16 :goto_0

    .line 345
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/view/KeyEvent;
    .end local v2    # "_arg2":Landroid/media/session/MediaSession$Token;
    .end local v3    # "_result":Z
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 347
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 349
    .local v1, "_arg1":Z
    sget-object v2, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/KeyEvent;

    .line 351
    .local v2, "_arg2":Landroid/view/KeyEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 352
    .local v3, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 353
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/media/session/ISessionManager$Stub;->dispatchMediaKeyEvent(Ljava/lang/String;ZLandroid/view/KeyEvent;Z)V

    .line 354
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    goto/16 :goto_0

    .line 335
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Landroid/view/KeyEvent;
    .end local v3    # "_arg3":Z
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 336
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 337
    invoke-virtual {v7, v0}, Landroid/media/session/ISessionManager$Stub;->getMediaKeyEventSessionPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 340
    goto :goto_0

    .line 325
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 326
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 327
    invoke-virtual {v7, v0}, Landroid/media/session/ISessionManager$Stub;->getMediaKeyEventSession(Ljava/lang/String;)Landroid/media/session/MediaSession$Token;

    move-result-object v1

    .line 328
    .local v1, "_result":Landroid/media/session/MediaSession$Token;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 330
    goto :goto_0

    .line 313
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Landroid/media/session/MediaSession$Token;
    :pswitch_1c
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 315
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 316
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 317
    invoke-virtual {v7, v0, v1}, Landroid/media/session/ISessionManager$Stub;->getSessions(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v2

    .line 318
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$Token;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 320
    goto :goto_0

    .line 295
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$Token;>;"
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 297
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/session/ISessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionCallback;

    move-result-object v13

    .line 299
    .local v13, "_arg1":Landroid/media/session/ISessionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 301
    .local v14, "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/os/Bundle;

    .line 303
    .local v15, "_arg3":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 304
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/media/session/ISessionManager$Stub;->createSession(Ljava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Landroid/os/Bundle;I)Landroid/media/session/ISession;

    move-result-object v0

    .line 306
    .local v0, "_result":Landroid/media/session/ISession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 308
    nop

    .line 623
    .end local v0    # "_result":Landroid/media/session/ISession;
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Landroid/media/session/ISessionCallback;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Landroid/os/Bundle;
    .end local v16    # "_arg4":I
    :goto_0
    return v12

    nop

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
