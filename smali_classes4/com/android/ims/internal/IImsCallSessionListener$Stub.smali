.class public abstract Lcom/android/ims/internal/IImsCallSessionListener$Stub;
.super Landroid/os/Binder;
.source "IImsCallSessionListener.java"

# interfaces
.implements Lcom/android/ims/internal/IImsCallSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsCallSessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsCallSessionListener"

.field static final blacklist TRANSACTION_callQualityChanged:I = 0x26

.field static final greylist-max-o TRANSACTION_callSessionConferenceExtendFailed:I = 0x12

.field static final greylist-max-o TRANSACTION_callSessionConferenceExtendReceived:I = 0x13

.field static final greylist-max-o TRANSACTION_callSessionConferenceExtended:I = 0x11

.field static final greylist-max-o TRANSACTION_callSessionConferenceStateUpdated:I = 0x18

.field static final greylist-max-o TRANSACTION_callSessionHandover:I = 0x1a

.field static final greylist-max-o TRANSACTION_callSessionHandoverFailed:I = 0x1b

.field static final greylist-max-o TRANSACTION_callSessionHeld:I = 0x5

.field static final greylist-max-o TRANSACTION_callSessionHoldFailed:I = 0x6

.field static final greylist-max-o TRANSACTION_callSessionHoldReceived:I = 0x7

.field static final greylist-max-o TRANSACTION_callSessionInviteParticipantsRequestDelivered:I = 0x14

.field static final greylist-max-o TRANSACTION_callSessionInviteParticipantsRequestFailed:I = 0x15

.field static final greylist-max-o TRANSACTION_callSessionMayHandover:I = 0x1c

.field static final greylist-max-o TRANSACTION_callSessionMergeComplete:I = 0xc

.field static final greylist-max-o TRANSACTION_callSessionMergeFailed:I = 0xd

.field static final greylist-max-o TRANSACTION_callSessionMergeStarted:I = 0xb

.field static final greylist-max-o TRANSACTION_callSessionMultipartyStateChanged:I = 0x1e

.field static final greylist-max-o TRANSACTION_callSessionProgressing:I = 0x1

.field static final greylist-max-o TRANSACTION_callSessionRemoveParticipantsRequestDelivered:I = 0x16

.field static final greylist-max-o TRANSACTION_callSessionRemoveParticipantsRequestFailed:I = 0x17

.field static final greylist-max-o TRANSACTION_callSessionResumeFailed:I = 0x9

.field static final greylist-max-o TRANSACTION_callSessionResumeReceived:I = 0xa

.field static final greylist-max-o TRANSACTION_callSessionResumed:I = 0x8

.field static final blacklist TRANSACTION_callSessionRttAudioIndicatorChanged:I = 0x23

.field static final greylist-max-o TRANSACTION_callSessionRttMessageReceived:I = 0x22

.field static final greylist-max-o TRANSACTION_callSessionRttModifyRequestReceived:I = 0x20

.field static final greylist-max-o TRANSACTION_callSessionRttModifyResponseReceived:I = 0x21

.field static final greylist-max-o TRANSACTION_callSessionStartFailed:I = 0x3

.field static final greylist-max-o TRANSACTION_callSessionStarted:I = 0x2

.field static final greylist-max-o TRANSACTION_callSessionSuppServiceReceived:I = 0x1f

.field static final greylist-max-o TRANSACTION_callSessionTerminated:I = 0x4

.field static final blacklist TRANSACTION_callSessionTransferFailed:I = 0x25

.field static final blacklist TRANSACTION_callSessionTransferred:I = 0x24

.field static final greylist-max-o TRANSACTION_callSessionTtyModeReceived:I = 0x1d

.field static final greylist-max-o TRANSACTION_callSessionUpdateFailed:I = 0xf

.field static final greylist-max-o TRANSACTION_callSessionUpdateReceived:I = 0x10

.field static final greylist-max-o TRANSACTION_callSessionUpdated:I = 0xe

.field static final greylist-max-o TRANSACTION_callSessionUssdMessageReceived:I = 0x19


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 187
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 188
    const-string v0, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSessionListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 196
    if-nez p0, :cond_0

    .line 197
    const/4 v0, 0x0

    return-object v0

    .line 199
    :cond_0
    const-string v0, "com.android.ims.internal.IImsCallSessionListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 200
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_1

    .line 201
    move-object v1, v0

    check-cast v1, Lcom/android/ims/internal/IImsCallSessionListener;

    return-object v1

    .line 203
    :cond_1
    new-instance v1, Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 212
    packed-switch p0, :pswitch_data_0

    .line 368
    const/4 v0, 0x0

    return-object v0

    .line 364
    :pswitch_0
    const-string v0, "callQualityChanged"

    return-object v0

    .line 360
    :pswitch_1
    const-string v0, "callSessionTransferFailed"

    return-object v0

    .line 356
    :pswitch_2
    const-string v0, "callSessionTransferred"

    return-object v0

    .line 352
    :pswitch_3
    const-string v0, "callSessionRttAudioIndicatorChanged"

    return-object v0

    .line 348
    :pswitch_4
    const-string v0, "callSessionRttMessageReceived"

    return-object v0

    .line 344
    :pswitch_5
    const-string v0, "callSessionRttModifyResponseReceived"

    return-object v0

    .line 340
    :pswitch_6
    const-string v0, "callSessionRttModifyRequestReceived"

    return-object v0

    .line 336
    :pswitch_7
    const-string v0, "callSessionSuppServiceReceived"

    return-object v0

    .line 332
    :pswitch_8
    const-string v0, "callSessionMultipartyStateChanged"

    return-object v0

    .line 328
    :pswitch_9
    const-string v0, "callSessionTtyModeReceived"

    return-object v0

    .line 324
    :pswitch_a
    const-string v0, "callSessionMayHandover"

    return-object v0

    .line 320
    :pswitch_b
    const-string v0, "callSessionHandoverFailed"

    return-object v0

    .line 316
    :pswitch_c
    const-string v0, "callSessionHandover"

    return-object v0

    .line 312
    :pswitch_d
    const-string v0, "callSessionUssdMessageReceived"

    return-object v0

    .line 308
    :pswitch_e
    const-string v0, "callSessionConferenceStateUpdated"

    return-object v0

    .line 304
    :pswitch_f
    const-string v0, "callSessionRemoveParticipantsRequestFailed"

    return-object v0

    .line 300
    :pswitch_10
    const-string v0, "callSessionRemoveParticipantsRequestDelivered"

    return-object v0

    .line 296
    :pswitch_11
    const-string v0, "callSessionInviteParticipantsRequestFailed"

    return-object v0

    .line 292
    :pswitch_12
    const-string v0, "callSessionInviteParticipantsRequestDelivered"

    return-object v0

    .line 288
    :pswitch_13
    const-string v0, "callSessionConferenceExtendReceived"

    return-object v0

    .line 284
    :pswitch_14
    const-string v0, "callSessionConferenceExtendFailed"

    return-object v0

    .line 280
    :pswitch_15
    const-string v0, "callSessionConferenceExtended"

    return-object v0

    .line 276
    :pswitch_16
    const-string v0, "callSessionUpdateReceived"

    return-object v0

    .line 272
    :pswitch_17
    const-string v0, "callSessionUpdateFailed"

    return-object v0

    .line 268
    :pswitch_18
    const-string v0, "callSessionUpdated"

    return-object v0

    .line 264
    :pswitch_19
    const-string v0, "callSessionMergeFailed"

    return-object v0

    .line 260
    :pswitch_1a
    const-string v0, "callSessionMergeComplete"

    return-object v0

    .line 256
    :pswitch_1b
    const-string v0, "callSessionMergeStarted"

    return-object v0

    .line 252
    :pswitch_1c
    const-string v0, "callSessionResumeReceived"

    return-object v0

    .line 248
    :pswitch_1d
    const-string v0, "callSessionResumeFailed"

    return-object v0

    .line 244
    :pswitch_1e
    const-string v0, "callSessionResumed"

    return-object v0

    .line 240
    :pswitch_1f
    const-string v0, "callSessionHoldReceived"

    return-object v0

    .line 236
    :pswitch_20
    const-string v0, "callSessionHoldFailed"

    return-object v0

    .line 232
    :pswitch_21
    const-string v0, "callSessionHeld"

    return-object v0

    .line 228
    :pswitch_22
    const-string v0, "callSessionTerminated"

    return-object v0

    .line 224
    :pswitch_23
    const-string v0, "callSessionStartFailed"

    return-object v0

    .line 220
    :pswitch_24
    const-string v0, "callSessionStarted"

    return-object v0

    .line 216
    :pswitch_25
    const-string v0, "callSessionProgressing"

    return-object v0

    nop

    :pswitch_data_0
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 207
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1375
    const/16 v0, 0x25

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 375
    invoke-static {p1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 379
    const-string v0, "com.android.ims.internal.IImsCallSessionListener"

    .line 380
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 381
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 391
    packed-switch p1, :pswitch_data_1

    .line 772
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 387
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 388
    return v1

    .line 765
    :pswitch_1
    sget-object v2, Landroid/telephony/CallQuality;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CallQuality;

    .line 766
    .local v2, "_arg0":Landroid/telephony/CallQuality;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 767
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callQualityChanged(Landroid/telephony/CallQuality;)V

    .line 768
    goto/16 :goto_0

    .line 757
    .end local v2    # "_arg0":Landroid/telephony/CallQuality;
    :pswitch_2
    sget-object v2, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 758
    .local v2, "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 759
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionTransferFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 760
    goto/16 :goto_0

    .line 751
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionTransferred()V

    .line 752
    goto/16 :goto_0

    .line 744
    :pswitch_4
    sget-object v2, Landroid/telephony/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 745
    .local v2, "_arg0":Landroid/telephony/ims/ImsStreamMediaProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 746
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionRttAudioIndicatorChanged(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 747
    goto/16 :goto_0

    .line 736
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsStreamMediaProfile;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 737
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 738
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionRttMessageReceived(Ljava/lang/String;)V

    .line 739
    goto/16 :goto_0

    .line 728
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 729
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 730
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionRttModifyResponseReceived(I)V

    .line 731
    goto/16 :goto_0

    .line 718
    .end local v2    # "_arg0":I
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 720
    .local v2, "_arg0":Lcom/android/ims/internal/IImsCallSession;
    sget-object v3, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsCallProfile;

    .line 721
    .local v3, "_arg1":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 722
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionRttModifyRequestReceived(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 723
    goto/16 :goto_0

    .line 708
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 710
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    sget-object v3, Landroid/telephony/ims/ImsSuppServiceNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsSuppServiceNotification;

    .line 711
    .local v3, "_arg1":Landroid/telephony/ims/ImsSuppServiceNotification;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 712
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionSuppServiceReceived(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsSuppServiceNotification;)V

    .line 713
    goto/16 :goto_0

    .line 698
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsSuppServiceNotification;
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 700
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 701
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 702
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionMultipartyStateChanged(Lcom/android/ims/internal/IImsCallSession;Z)V

    .line 703
    goto/16 :goto_0

    .line 688
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Z
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 690
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 691
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 692
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionTtyModeReceived(Lcom/android/ims/internal/IImsCallSession;I)V

    .line 693
    goto/16 :goto_0

    .line 676
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":I
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 678
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 680
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 681
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 682
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionMayHandover(Lcom/android/ims/internal/IImsCallSession;II)V

    .line 683
    goto/16 :goto_0

    .line 662
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 664
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 666
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 668
    .restart local v4    # "_arg2":I
    sget-object v5, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/ims/ImsReasonInfo;

    .line 669
    .local v5, "_arg3":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 670
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionHandoverFailed(Lcom/android/ims/internal/IImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 671
    goto/16 :goto_0

    .line 648
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 650
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 652
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 654
    .restart local v4    # "_arg2":I
    sget-object v5, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/ims/ImsReasonInfo;

    .line 655
    .restart local v5    # "_arg3":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 656
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionHandover(Lcom/android/ims/internal/IImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 657
    goto/16 :goto_0

    .line 636
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 638
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 640
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 641
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 642
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionUssdMessageReceived(Lcom/android/ims/internal/IImsCallSession;ILjava/lang/String;)V

    .line 643
    goto/16 :goto_0

    .line 626
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 628
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    sget-object v3, Landroid/telephony/ims/ImsConferenceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsConferenceState;

    .line 629
    .local v3, "_arg1":Landroid/telephony/ims/ImsConferenceState;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 630
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionConferenceStateUpdated(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsConferenceState;)V

    .line 631
    goto/16 :goto_0

    .line 616
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsConferenceState;
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 618
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    sget-object v3, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsReasonInfo;

    .line 619
    .local v3, "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 620
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionRemoveParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 621
    goto/16 :goto_0

    .line 608
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 609
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 610
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionRemoveParticipantsRequestDelivered(Lcom/android/ims/internal/IImsCallSession;)V

    .line 611
    goto/16 :goto_0

    .line 598
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 600
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    sget-object v3, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsReasonInfo;

    .line 601
    .restart local v3    # "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 602
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionInviteParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 603
    goto/16 :goto_0

    .line 590
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 591
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 592
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionInviteParticipantsRequestDelivered(Lcom/android/ims/internal/IImsCallSession;)V

    .line 593
    goto/16 :goto_0

    .line 578
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 580
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    .line 582
    .local v3, "_arg1":Lcom/android/ims/internal/IImsCallSession;
    sget-object v4, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/ims/ImsCallProfile;

    .line 583
    .local v4, "_arg2":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 584
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionConferenceExtendReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 585
    goto/16 :goto_0

    .line 568
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Lcom/android/ims/internal/IImsCallSession;
    .end local v4    # "_arg2":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 570
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    sget-object v3, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsReasonInfo;

    .line 571
    .local v3, "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 572
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionConferenceExtendFailed(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 573
    goto/16 :goto_0

    .line 556
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 558
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    .line 560
    .local v3, "_arg1":Lcom/android/ims/internal/IImsCallSession;
    sget-object v4, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/ims/ImsCallProfile;

    .line 561
    .restart local v4    # "_arg2":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 562
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionConferenceExtended(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 563
    goto/16 :goto_0

    .line 546
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Lcom/android/ims/internal/IImsCallSession;
    .end local v4    # "_arg2":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 548
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    sget-object v3, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsCallProfile;

    .line 549
    .local v3, "_arg1":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 550
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionUpdateReceived(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 551
    goto/16 :goto_0

    .line 536
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 538
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    sget-object v3, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsReasonInfo;

    .line 539
    .local v3, "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 540
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionUpdateFailed(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 541
    goto/16 :goto_0

    .line 526
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 528
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    sget-object v3, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsCallProfile;

    .line 529
    .local v3, "_arg1":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 530
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionUpdated(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 531
    goto/16 :goto_0

    .line 516
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 518
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    sget-object v3, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsReasonInfo;

    .line 519
    .local v3, "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 520
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionMergeFailed(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 521
    goto/16 :goto_0

    .line 508
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 509
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 510
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V

    .line 511
    goto/16 :goto_0

    .line 496
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 498
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    .line 500
    .local v3, "_arg1":Lcom/android/ims/internal/IImsCallSession;
    sget-object v4, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/ims/ImsCallProfile;

    .line 501
    .restart local v4    # "_arg2":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 502
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 503
    goto/16 :goto_0

    .line 486
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Lcom/android/ims/internal/IImsCallSession;
    .end local v4    # "_arg2":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 488
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    sget-object v3, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsCallProfile;

    .line 489
    .local v3, "_arg1":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 490
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionResumeReceived(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 491
    goto/16 :goto_0

    .line 476
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 478
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    sget-object v3, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsReasonInfo;

    .line 479
    .local v3, "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 480
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionResumeFailed(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 481
    goto/16 :goto_0

    .line 466
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 468
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    sget-object v3, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsCallProfile;

    .line 469
    .local v3, "_arg1":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 470
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionResumed(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 471
    goto/16 :goto_0

    .line 456
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 458
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    sget-object v3, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsCallProfile;

    .line 459
    .restart local v3    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 460
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionHoldReceived(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 461
    goto/16 :goto_0

    .line 446
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 448
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    sget-object v3, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsReasonInfo;

    .line 449
    .local v3, "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 450
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionHoldFailed(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 451
    goto :goto_0

    .line 436
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 438
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    sget-object v3, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsCallProfile;

    .line 439
    .local v3, "_arg1":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 440
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionHeld(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 441
    goto :goto_0

    .line 426
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 428
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    sget-object v3, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsReasonInfo;

    .line 429
    .local v3, "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 430
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionTerminated(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 431
    goto :goto_0

    .line 416
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 418
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    sget-object v3, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsReasonInfo;

    .line 419
    .restart local v3    # "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 420
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionStartFailed(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 421
    goto :goto_0

    .line 406
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 408
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    sget-object v3, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsCallProfile;

    .line 409
    .local v3, "_arg1":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 410
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionStarted(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 411
    goto :goto_0

    .line 396
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 398
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    sget-object v3, Landroid/telephony/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 399
    .local v3, "_arg1":Landroid/telephony/ims/ImsStreamMediaProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 400
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionProgressing(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 401
    nop

    .line 775
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsStreamMediaProfile;
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_26
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
