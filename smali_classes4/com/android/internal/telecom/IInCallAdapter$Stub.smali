.class public abstract Lcom/android/internal/telecom/IInCallAdapter$Stub;
.super Landroid/os/Binder;
.source "IInCallAdapter.java"

# interfaces
.implements Lcom/android/internal/telecom/IInCallAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IInCallAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IInCallAdapter"

.field static final blacklist TRANSACTION_addConferenceParticipants:I = 0x16

.field static final greylist-max-o TRANSACTION_answerCall:I = 0x1

.field static final greylist-max-o TRANSACTION_conference:I = 0x12

.field static final blacklist TRANSACTION_consultativeTransfer:I = 0x6

.field static final greylist-max-o TRANSACTION_deflectCall:I = 0x2

.field static final greylist-max-o TRANSACTION_disconnectCall:I = 0x7

.field static final blacklist TRANSACTION_enterBackgroundAudioProcessing:I = 0xc

.field static final blacklist TRANSACTION_exitBackgroundAudioProcessing:I = 0xd

.field static final greylist-max-o TRANSACTION_handoverTo:I = 0x21

.field static final greylist-max-o TRANSACTION_holdCall:I = 0x8

.field static final greylist-max-o TRANSACTION_mergeConference:I = 0x14

.field static final greylist-max-o TRANSACTION_mute:I = 0xa

.field static final greylist-max-o TRANSACTION_phoneAccountSelected:I = 0x11

.field static final greylist-max-o TRANSACTION_playDtmfTone:I = 0xe

.field static final greylist-max-o TRANSACTION_postDialContinue:I = 0x10

.field static final greylist-max-o TRANSACTION_pullExternalCall:I = 0x19

.field static final greylist-max-o TRANSACTION_putExtras:I = 0x1b

.field static final greylist-max-o TRANSACTION_rejectCall:I = 0x3

.field static final blacklist TRANSACTION_rejectCallWithReason:I = 0x4

.field static final greylist-max-o TRANSACTION_removeExtras:I = 0x1c

.field static final greylist-max-o TRANSACTION_respondToRttRequest:I = 0x1e

.field static final greylist-max-o TRANSACTION_sendCallEvent:I = 0x1a

.field static final greylist-max-o TRANSACTION_sendRttRequest:I = 0x1d

.field static final greylist-max-o TRANSACTION_setAudioRoute:I = 0xb

.field static final greylist-max-o TRANSACTION_setRttMode:I = 0x20

.field static final greylist-max-o TRANSACTION_splitFromConference:I = 0x13

.field static final greylist-max-o TRANSACTION_stopDtmfTone:I = 0xf

.field static final greylist-max-o TRANSACTION_stopRtt:I = 0x1f

.field static final greylist-max-o TRANSACTION_swapConference:I = 0x15

.field static final blacklist TRANSACTION_transferCall:I = 0x5

.field static final greylist-max-o TRANSACTION_turnOffProximitySensor:I = 0x18

.field static final greylist-max-o TRANSACTION_turnOnProximitySensor:I = 0x17

.field static final greylist-max-o TRANSACTION_unholdCall:I = 0x9


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 126
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 127
    const-string v0, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IInCallAdapter;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 135
    if-nez p0, :cond_0

    .line 136
    const/4 v0, 0x0

    return-object v0

    .line 138
    :cond_0
    const-string v0, "com.android.internal.telecom.IInCallAdapter"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 139
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telecom/IInCallAdapter;

    if-eqz v1, :cond_1

    .line 140
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telecom/IInCallAdapter;

    return-object v1

    .line 142
    :cond_1
    new-instance v1, Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 151
    packed-switch p0, :pswitch_data_0

    .line 287
    const/4 v0, 0x0

    return-object v0

    .line 283
    :pswitch_0
    const-string v0, "handoverTo"

    return-object v0

    .line 279
    :pswitch_1
    const-string/jumbo v0, "setRttMode"

    return-object v0

    .line 275
    :pswitch_2
    const-string/jumbo v0, "stopRtt"

    return-object v0

    .line 271
    :pswitch_3
    const-string/jumbo v0, "respondToRttRequest"

    return-object v0

    .line 267
    :pswitch_4
    const-string/jumbo v0, "sendRttRequest"

    return-object v0

    .line 263
    :pswitch_5
    const-string/jumbo v0, "removeExtras"

    return-object v0

    .line 259
    :pswitch_6
    const-string/jumbo v0, "putExtras"

    return-object v0

    .line 255
    :pswitch_7
    const-string/jumbo v0, "sendCallEvent"

    return-object v0

    .line 251
    :pswitch_8
    const-string/jumbo v0, "pullExternalCall"

    return-object v0

    .line 247
    :pswitch_9
    const-string/jumbo v0, "turnOffProximitySensor"

    return-object v0

    .line 243
    :pswitch_a
    const-string/jumbo v0, "turnOnProximitySensor"

    return-object v0

    .line 239
    :pswitch_b
    const-string v0, "addConferenceParticipants"

    return-object v0

    .line 235
    :pswitch_c
    const-string/jumbo v0, "swapConference"

    return-object v0

    .line 231
    :pswitch_d
    const-string/jumbo v0, "mergeConference"

    return-object v0

    .line 227
    :pswitch_e
    const-string/jumbo v0, "splitFromConference"

    return-object v0

    .line 223
    :pswitch_f
    const-string v0, "conference"

    return-object v0

    .line 219
    :pswitch_10
    const-string/jumbo v0, "phoneAccountSelected"

    return-object v0

    .line 215
    :pswitch_11
    const-string/jumbo v0, "postDialContinue"

    return-object v0

    .line 211
    :pswitch_12
    const-string/jumbo v0, "stopDtmfTone"

    return-object v0

    .line 207
    :pswitch_13
    const-string/jumbo v0, "playDtmfTone"

    return-object v0

    .line 203
    :pswitch_14
    const-string v0, "exitBackgroundAudioProcessing"

    return-object v0

    .line 199
    :pswitch_15
    const-string v0, "enterBackgroundAudioProcessing"

    return-object v0

    .line 195
    :pswitch_16
    const-string/jumbo v0, "setAudioRoute"

    return-object v0

    .line 191
    :pswitch_17
    const-string/jumbo v0, "mute"

    return-object v0

    .line 187
    :pswitch_18
    const-string/jumbo v0, "unholdCall"

    return-object v0

    .line 183
    :pswitch_19
    const-string v0, "holdCall"

    return-object v0

    .line 179
    :pswitch_1a
    const-string v0, "disconnectCall"

    return-object v0

    .line 175
    :pswitch_1b
    const-string v0, "consultativeTransfer"

    return-object v0

    .line 171
    :pswitch_1c
    const-string/jumbo v0, "transferCall"

    return-object v0

    .line 167
    :pswitch_1d
    const-string/jumbo v0, "rejectCallWithReason"

    return-object v0

    .line 163
    :pswitch_1e
    const-string/jumbo v0, "rejectCall"

    return-object v0

    .line 159
    :pswitch_1f
    const-string v0, "deflectCall"

    return-object v0

    .line 155
    :pswitch_20
    const-string v0, "answerCall"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 146
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1109
    const/16 v0, 0x20

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 294
    invoke-static {p1}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 298
    const-string v0, "com.android.internal.telecom.IInCallAdapter"

    .line 299
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 300
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 310
    packed-switch p1, :pswitch_data_1

    .line 629
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 306
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 307
    return v1

    .line 616
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 618
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    .line 620
    .local v3, "_arg1":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 622
    .local v4, "_arg2":I
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 623
    .local v5, "_arg3":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 624
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->handoverTo(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;ILandroid/os/Bundle;)V

    .line 625
    goto/16 :goto_0

    .line 606
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/telecom/PhoneAccountHandle;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/os/Bundle;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 608
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 609
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 610
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->setRttMode(Ljava/lang/String;I)V

    .line 611
    goto/16 :goto_0

    .line 598
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 599
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 600
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->stopRtt(Ljava/lang/String;)V

    .line 601
    goto/16 :goto_0

    .line 586
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 588
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 590
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 591
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 592
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->respondToRttRequest(Ljava/lang/String;IZ)V

    .line 593
    goto/16 :goto_0

    .line 578
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 579
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 580
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->sendRttRequest(Ljava/lang/String;)V

    .line 581
    goto/16 :goto_0

    .line 568
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 570
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 571
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 572
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->removeExtras(Ljava/lang/String;Ljava/util/List;)V

    .line 573
    goto/16 :goto_0

    .line 558
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 560
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 561
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 562
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->putExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 563
    goto/16 :goto_0

    .line 544
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 546
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 548
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 550
    .local v4, "_arg2":I
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 551
    .restart local v5    # "_arg3":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 552
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->sendCallEvent(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 553
    goto/16 :goto_0

    .line 536
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/os/Bundle;
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 537
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 538
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->pullExternalCall(Ljava/lang/String;)V

    .line 539
    goto/16 :goto_0

    .line 528
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 529
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 530
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->turnOffProximitySensor(Z)V

    .line 531
    goto/16 :goto_0

    .line 522
    .end local v2    # "_arg0":Z
    :pswitch_b
    invoke-virtual {p0}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->turnOnProximitySensor()V

    .line 523
    goto/16 :goto_0

    .line 513
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 515
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 516
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 517
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->addConferenceParticipants(Ljava/lang/String;Ljava/util/List;)V

    .line 518
    goto/16 :goto_0

    .line 505
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 506
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 507
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->swapConference(Ljava/lang/String;)V

    .line 508
    goto/16 :goto_0

    .line 497
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 498
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 499
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->mergeConference(Ljava/lang/String;)V

    .line 500
    goto/16 :goto_0

    .line 489
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 490
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 491
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->splitFromConference(Ljava/lang/String;)V

    .line 492
    goto/16 :goto_0

    .line 479
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 481
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 482
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 483
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->conference(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    goto/16 :goto_0

    .line 467
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 469
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    .line 471
    .local v3, "_arg1":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 472
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 473
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->phoneAccountSelected(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V

    .line 474
    goto/16 :goto_0

    .line 457
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/telecom/PhoneAccountHandle;
    .end local v4    # "_arg2":Z
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 459
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 460
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 461
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->postDialContinue(Ljava/lang/String;Z)V

    .line 462
    goto/16 :goto_0

    .line 449
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 450
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 451
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->stopDtmfTone(Ljava/lang/String;)V

    .line 452
    goto/16 :goto_0

    .line 439
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 441
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v3, v3

    .line 442
    .local v3, "_arg1":C
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 443
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->playDtmfTone(Ljava/lang/String;C)V

    .line 444
    goto/16 :goto_0

    .line 429
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":C
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 431
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 432
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 433
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->exitBackgroundAudioProcessing(Ljava/lang/String;Z)V

    .line 434
    goto/16 :goto_0

    .line 421
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 422
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 423
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->enterBackgroundAudioProcessing(Ljava/lang/String;)V

    .line 424
    goto/16 :goto_0

    .line 411
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 413
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 414
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 415
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->setAudioRoute(ILjava/lang/String;)V

    .line 416
    goto/16 :goto_0

    .line 403
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 404
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 405
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->mute(Z)V

    .line 406
    goto/16 :goto_0

    .line 395
    .end local v2    # "_arg0":Z
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 396
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 397
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->unholdCall(Ljava/lang/String;)V

    .line 398
    goto/16 :goto_0

    .line 387
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 388
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 389
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->holdCall(Ljava/lang/String;)V

    .line 390
    goto/16 :goto_0

    .line 379
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 380
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 381
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->disconnectCall(Ljava/lang/String;)V

    .line 382
    goto :goto_0

    .line 369
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 371
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 372
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 373
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->consultativeTransfer(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    goto :goto_0

    .line 357
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 359
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 361
    .local v3, "_arg1":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 362
    .restart local v4    # "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 363
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->transferCall(Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 364
    goto :goto_0

    .line 347
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/net/Uri;
    .end local v4    # "_arg2":Z
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 349
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 350
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 351
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->rejectCallWithReason(Ljava/lang/String;I)V

    .line 352
    goto :goto_0

    .line 335
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 337
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 339
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 340
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 341
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    .line 342
    goto :goto_0

    .line 325
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 327
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 328
    .local v3, "_arg1":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 329
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->deflectCall(Ljava/lang/String;Landroid/net/Uri;)V

    .line 330
    goto :goto_0

    .line 315
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/net/Uri;
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 317
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 318
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 319
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->answerCall(Ljava/lang/String;I)V

    .line 320
    nop

    .line 632
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
