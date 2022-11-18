.class public abstract Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;
.super Landroid/os/Binder;
.source "IConnectionServiceAdapter.java"

# interfaces
.implements Lcom/android/internal/telecom/IConnectionServiceAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IConnectionServiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IConnectionServiceAdapter"

.field static final greylist-max-o TRANSACTION_addConferenceCall:I = 0xe

.field static final greylist-max-o TRANSACTION_addExistingConnection:I = 0x1a

.field static final blacklist TRANSACTION_handleCreateConferenceComplete:I = 0x2

.field static final greylist-max-o TRANSACTION_handleCreateConnectionComplete:I = 0x1

.field static final greylist-max-o TRANSACTION_onConnectionEvent:I = 0x1e

.field static final greylist-max-o TRANSACTION_onConnectionServiceFocusReleased:I = 0x24

.field static final greylist-max-o TRANSACTION_onPhoneAccountChanged:I = 0x23

.field static final greylist-max-o TRANSACTION_onPostDialChar:I = 0x11

.field static final greylist-max-o TRANSACTION_onPostDialWait:I = 0x10

.field static final greylist-max-o TRANSACTION_onRemoteRttRequest:I = 0x22

.field static final greylist-max-o TRANSACTION_onRttInitiationFailure:I = 0x20

.field static final greylist-max-o TRANSACTION_onRttInitiationSuccess:I = 0x1f

.field static final greylist-max-o TRANSACTION_onRttSessionRemotelyTerminated:I = 0x21

.field static final greylist-max-o TRANSACTION_putExtras:I = 0x1b

.field static final greylist-max-o TRANSACTION_queryRemoteConnectionServices:I = 0x12

.field static final greylist-max-o TRANSACTION_removeCall:I = 0xf

.field static final greylist-max-o TRANSACTION_removeExtras:I = 0x1c

.field static final blacklist TRANSACTION_resetConnectionTime:I = 0x25

.field static final greylist-max-o TRANSACTION_setActive:I = 0x3

.field static final greylist-max-o TRANSACTION_setAddress:I = 0x17

.field static final greylist-max-o TRANSACTION_setAudioRoute:I = 0x1d

.field static final blacklist TRANSACTION_setCallDirection:I = 0x27

.field static final greylist-max-o TRANSACTION_setCallerDisplayName:I = 0x18

.field static final greylist-max-o TRANSACTION_setConferenceMergeFailed:I = 0xd

.field static final blacklist TRANSACTION_setConferenceState:I = 0x26

.field static final greylist-max-o TRANSACTION_setConferenceableConnections:I = 0x19

.field static final greylist-max-o TRANSACTION_setConnectionCapabilities:I = 0xa

.field static final greylist-max-o TRANSACTION_setConnectionProperties:I = 0xb

.field static final greylist-max-o TRANSACTION_setDialing:I = 0x5

.field static final greylist-max-o TRANSACTION_setDisconnected:I = 0x7

.field static final greylist-max-o TRANSACTION_setIsConferenced:I = 0xc

.field static final greylist-max-o TRANSACTION_setIsVoipAudioMode:I = 0x15

.field static final greylist-max-o TRANSACTION_setOnHold:I = 0x8

.field static final greylist-max-o TRANSACTION_setPulling:I = 0x6

.field static final greylist-max-o TRANSACTION_setRingbackRequested:I = 0x9

.field static final greylist-max-o TRANSACTION_setRinging:I = 0x4

.field static final greylist-max-o TRANSACTION_setStatusHints:I = 0x16

.field static final greylist-max-o TRANSACTION_setVideoProvider:I = 0x13

.field static final greylist-max-o TRANSACTION_setVideoState:I = 0x14


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 144
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 145
    const-string v0, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 153
    if-nez p0, :cond_0

    .line 154
    const/4 v0, 0x0

    return-object v0

    .line 156
    :cond_0
    const-string v0, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 157
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    if-eqz v1, :cond_1

    .line 158
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    return-object v1

    .line 160
    :cond_1
    new-instance v1, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 169
    packed-switch p0, :pswitch_data_0

    .line 329
    const/4 v0, 0x0

    return-object v0

    .line 325
    :pswitch_0
    const-string/jumbo v0, "setCallDirection"

    return-object v0

    .line 321
    :pswitch_1
    const-string/jumbo v0, "setConferenceState"

    return-object v0

    .line 317
    :pswitch_2
    const-string/jumbo v0, "resetConnectionTime"

    return-object v0

    .line 313
    :pswitch_3
    const-string/jumbo v0, "onConnectionServiceFocusReleased"

    return-object v0

    .line 309
    :pswitch_4
    const-string/jumbo v0, "onPhoneAccountChanged"

    return-object v0

    .line 305
    :pswitch_5
    const-string/jumbo v0, "onRemoteRttRequest"

    return-object v0

    .line 301
    :pswitch_6
    const-string/jumbo v0, "onRttSessionRemotelyTerminated"

    return-object v0

    .line 297
    :pswitch_7
    const-string/jumbo v0, "onRttInitiationFailure"

    return-object v0

    .line 293
    :pswitch_8
    const-string/jumbo v0, "onRttInitiationSuccess"

    return-object v0

    .line 289
    :pswitch_9
    const-string/jumbo v0, "onConnectionEvent"

    return-object v0

    .line 285
    :pswitch_a
    const-string/jumbo v0, "setAudioRoute"

    return-object v0

    .line 281
    :pswitch_b
    const-string/jumbo v0, "removeExtras"

    return-object v0

    .line 277
    :pswitch_c
    const-string/jumbo v0, "putExtras"

    return-object v0

    .line 273
    :pswitch_d
    const-string v0, "addExistingConnection"

    return-object v0

    .line 269
    :pswitch_e
    const-string/jumbo v0, "setConferenceableConnections"

    return-object v0

    .line 265
    :pswitch_f
    const-string/jumbo v0, "setCallerDisplayName"

    return-object v0

    .line 261
    :pswitch_10
    const-string/jumbo v0, "setAddress"

    return-object v0

    .line 257
    :pswitch_11
    const-string/jumbo v0, "setStatusHints"

    return-object v0

    .line 253
    :pswitch_12
    const-string/jumbo v0, "setIsVoipAudioMode"

    return-object v0

    .line 249
    :pswitch_13
    const-string/jumbo v0, "setVideoState"

    return-object v0

    .line 245
    :pswitch_14
    const-string/jumbo v0, "setVideoProvider"

    return-object v0

    .line 241
    :pswitch_15
    const-string/jumbo v0, "queryRemoteConnectionServices"

    return-object v0

    .line 237
    :pswitch_16
    const-string/jumbo v0, "onPostDialChar"

    return-object v0

    .line 233
    :pswitch_17
    const-string/jumbo v0, "onPostDialWait"

    return-object v0

    .line 229
    :pswitch_18
    const-string/jumbo v0, "removeCall"

    return-object v0

    .line 225
    :pswitch_19
    const-string v0, "addConferenceCall"

    return-object v0

    .line 221
    :pswitch_1a
    const-string/jumbo v0, "setConferenceMergeFailed"

    return-object v0

    .line 217
    :pswitch_1b
    const-string/jumbo v0, "setIsConferenced"

    return-object v0

    .line 213
    :pswitch_1c
    const-string/jumbo v0, "setConnectionProperties"

    return-object v0

    .line 209
    :pswitch_1d
    const-string/jumbo v0, "setConnectionCapabilities"

    return-object v0

    .line 205
    :pswitch_1e
    const-string/jumbo v0, "setRingbackRequested"

    return-object v0

    .line 201
    :pswitch_1f
    const-string/jumbo v0, "setOnHold"

    return-object v0

    .line 197
    :pswitch_20
    const-string/jumbo v0, "setDisconnected"

    return-object v0

    .line 193
    :pswitch_21
    const-string/jumbo v0, "setPulling"

    return-object v0

    .line 189
    :pswitch_22
    const-string/jumbo v0, "setDialing"

    return-object v0

    .line 185
    :pswitch_23
    const-string/jumbo v0, "setRinging"

    return-object v0

    .line 181
    :pswitch_24
    const-string/jumbo v0, "setActive"

    return-object v0

    .line 177
    :pswitch_25
    const-string v0, "handleCreateConferenceComplete"

    return-object v0

    .line 173
    :pswitch_26
    const-string v0, "handleCreateConnectionComplete"

    return-object v0

    nop

    :pswitch_data_0
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 164
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1413
    const/16 v0, 0x26

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 336
    invoke-static {p1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 340
    const-string v0, "com.android.internal.telecom.IConnectionServiceAdapter"

    .line 341
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 342
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 352
    packed-switch p1, :pswitch_data_1

    .line 810
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 348
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 349
    return v1

    .line 799
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 801
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 803
    .local v3, "_arg1":I
    sget-object v4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Logging/Session$Info;

    .line 804
    .local v4, "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 805
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setCallDirection(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 806
    goto/16 :goto_0

    .line 787
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 789
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 791
    .local v3, "_arg1":Z
    sget-object v4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Logging/Session$Info;

    .line 792
    .restart local v4    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 793
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setConferenceState(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V

    .line 794
    goto/16 :goto_0

    .line 777
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 779
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 780
    .local v3, "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 781
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->resetConnectionTime(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 782
    goto/16 :goto_0

    .line 769
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_4
    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .line 770
    .local v2, "_arg0":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 771
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onConnectionServiceFocusReleased(Landroid/telecom/Logging/Session$Info;)V

    .line 772
    goto/16 :goto_0

    .line 757
    .end local v2    # "_arg0":Landroid/telecom/Logging/Session$Info;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 759
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    .line 761
    .local v3, "_arg1":Landroid/telecom/PhoneAccountHandle;
    sget-object v4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Logging/Session$Info;

    .line 762
    .restart local v4    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 763
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onPhoneAccountChanged(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Logging/Session$Info;)V

    .line 764
    goto/16 :goto_0

    .line 747
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/telecom/PhoneAccountHandle;
    .end local v4    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 749
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 750
    .local v3, "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 751
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onRemoteRttRequest(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 752
    goto/16 :goto_0

    .line 737
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 739
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 740
    .restart local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 741
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onRttSessionRemotelyTerminated(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 742
    goto/16 :goto_0

    .line 725
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 727
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 729
    .local v3, "_arg1":I
    sget-object v4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Logging/Session$Info;

    .line 730
    .restart local v4    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 731
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onRttInitiationFailure(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 732
    goto/16 :goto_0

    .line 715
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 717
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 718
    .local v3, "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 719
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onRttInitiationSuccess(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 720
    goto/16 :goto_0

    .line 701
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 703
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 705
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 707
    .local v4, "_arg2":Landroid/os/Bundle;
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/Logging/Session$Info;

    .line 708
    .local v5, "_arg3":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 709
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V

    .line 710
    goto/16 :goto_0

    .line 687
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    .end local v5    # "_arg3":Landroid/telecom/Logging/Session$Info;
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 689
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 691
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 693
    .local v4, "_arg2":Ljava/lang/String;
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/Logging/Session$Info;

    .line 694
    .restart local v5    # "_arg3":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 695
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setAudioRoute(Ljava/lang/String;ILjava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 696
    goto/16 :goto_0

    .line 675
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Landroid/telecom/Logging/Session$Info;
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 677
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 679
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Logging/Session$Info;

    .line 680
    .local v4, "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 681
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->removeExtras(Ljava/lang/String;Ljava/util/List;Landroid/telecom/Logging/Session$Info;)V

    .line 682
    goto/16 :goto_0

    .line 663
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 665
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 667
    .local v3, "_arg1":Landroid/os/Bundle;
    sget-object v4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Logging/Session$Info;

    .line 668
    .restart local v4    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 669
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->putExtras(Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V

    .line 670
    goto/16 :goto_0

    .line 651
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    .end local v4    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 653
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/telecom/ParcelableConnection;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/ParcelableConnection;

    .line 655
    .local v3, "_arg1":Landroid/telecom/ParcelableConnection;
    sget-object v4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Logging/Session$Info;

    .line 656
    .restart local v4    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 657
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;Landroid/telecom/Logging/Session$Info;)V

    .line 658
    goto/16 :goto_0

    .line 639
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/telecom/ParcelableConnection;
    .end local v4    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 641
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 643
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Logging/Session$Info;

    .line 644
    .restart local v4    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 645
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setConferenceableConnections(Ljava/lang/String;Ljava/util/List;Landroid/telecom/Logging/Session$Info;)V

    .line 646
    goto/16 :goto_0

    .line 625
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 627
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 629
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 631
    .local v4, "_arg2":I
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/Logging/Session$Info;

    .line 632
    .restart local v5    # "_arg3":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 633
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 634
    goto/16 :goto_0

    .line 611
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/telecom/Logging/Session$Info;
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 613
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 615
    .local v3, "_arg1":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 617
    .restart local v4    # "_arg2":I
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/Logging/Session$Info;

    .line 618
    .restart local v5    # "_arg3":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 619
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setAddress(Ljava/lang/String;Landroid/net/Uri;ILandroid/telecom/Logging/Session$Info;)V

    .line 620
    goto/16 :goto_0

    .line 599
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/net/Uri;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/telecom/Logging/Session$Info;
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 601
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/telecom/StatusHints;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/StatusHints;

    .line 603
    .local v3, "_arg1":Landroid/telecom/StatusHints;
    sget-object v4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Logging/Session$Info;

    .line 604
    .local v4, "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 605
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;Landroid/telecom/Logging/Session$Info;)V

    .line 606
    goto/16 :goto_0

    .line 587
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/telecom/StatusHints;
    .end local v4    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 589
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 591
    .local v3, "_arg1":Z
    sget-object v4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Logging/Session$Info;

    .line 592
    .restart local v4    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 593
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setIsVoipAudioMode(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V

    .line 594
    goto/16 :goto_0

    .line 575
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 577
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 579
    .local v3, "_arg1":I
    sget-object v4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Logging/Session$Info;

    .line 580
    .restart local v4    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 581
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setVideoState(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 582
    goto/16 :goto_0

    .line 563
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 565
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telecom/IVideoProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v3

    .line 567
    .local v3, "_arg1":Lcom/android/internal/telecom/IVideoProvider;
    sget-object v4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Logging/Session$Info;

    .line 568
    .restart local v4    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 569
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setVideoProvider(Ljava/lang/String;Lcom/android/internal/telecom/IVideoProvider;Landroid/telecom/Logging/Session$Info;)V

    .line 570
    goto/16 :goto_0

    .line 551
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/android/internal/telecom/IVideoProvider;
    .end local v4    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telecom/RemoteServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/RemoteServiceCallback;

    move-result-object v2

    .line 553
    .local v2, "_arg0":Lcom/android/internal/telecom/RemoteServiceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 555
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Logging/Session$Info;

    .line 556
    .restart local v4    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 557
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 558
    goto/16 :goto_0

    .line 539
    .end local v2    # "_arg0":Lcom/android/internal/telecom/RemoteServiceCallback;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 541
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v3, v3

    .line 543
    .local v3, "_arg1":C
    sget-object v4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Logging/Session$Info;

    .line 544
    .restart local v4    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 545
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onPostDialChar(Ljava/lang/String;CLandroid/telecom/Logging/Session$Info;)V

    .line 546
    goto/16 :goto_0

    .line 527
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":C
    .end local v4    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 529
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 531
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Logging/Session$Info;

    .line 532
    .restart local v4    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 533
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onPostDialWait(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 534
    goto/16 :goto_0

    .line 517
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 519
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 520
    .local v3, "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 521
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->removeCall(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 522
    goto/16 :goto_0

    .line 505
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 507
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/telecom/ParcelableConference;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/ParcelableConference;

    .line 509
    .local v3, "_arg1":Landroid/telecom/ParcelableConference;
    sget-object v4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Logging/Session$Info;

    .line 510
    .restart local v4    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 511
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;Landroid/telecom/Logging/Session$Info;)V

    .line 512
    goto/16 :goto_0

    .line 495
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/telecom/ParcelableConference;
    .end local v4    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 497
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 498
    .local v3, "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 499
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setConferenceMergeFailed(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 500
    goto/16 :goto_0

    .line 483
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 485
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 487
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Logging/Session$Info;

    .line 488
    .restart local v4    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 489
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setIsConferenced(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 490
    goto/16 :goto_0

    .line 471
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 473
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 475
    .local v3, "_arg1":I
    sget-object v4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Logging/Session$Info;

    .line 476
    .restart local v4    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 477
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setConnectionProperties(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 478
    goto/16 :goto_0

    .line 459
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 461
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 463
    .restart local v3    # "_arg1":I
    sget-object v4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Logging/Session$Info;

    .line 464
    .restart local v4    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 465
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setConnectionCapabilities(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 466
    goto/16 :goto_0

    .line 447
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 449
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 451
    .local v3, "_arg1":Z
    sget-object v4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Logging/Session$Info;

    .line 452
    .restart local v4    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 453
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setRingbackRequested(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V

    .line 454
    goto/16 :goto_0

    .line 437
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 439
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 440
    .local v3, "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 441
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setOnHold(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 442
    goto/16 :goto_0

    .line 425
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 427
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/telecom/DisconnectCause;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/DisconnectCause;

    .line 429
    .local v3, "_arg1":Landroid/telecom/DisconnectCause;
    sget-object v4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Logging/Session$Info;

    .line 430
    .restart local v4    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 431
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;Landroid/telecom/Logging/Session$Info;)V

    .line 432
    goto/16 :goto_0

    .line 415
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/telecom/DisconnectCause;
    .end local v4    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 417
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 418
    .local v3, "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 419
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setPulling(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 420
    goto/16 :goto_0

    .line 405
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 407
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 408
    .restart local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 409
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setDialing(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 410
    goto :goto_0

    .line 395
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 397
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 398
    .restart local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 399
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setRinging(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 400
    goto :goto_0

    .line 385
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 387
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 388
    .restart local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 389
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setActive(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 390
    goto :goto_0

    .line 371
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 373
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/telecom/ConnectionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/ConnectionRequest;

    .line 375
    .local v3, "_arg1":Landroid/telecom/ConnectionRequest;
    sget-object v4, Landroid/telecom/ParcelableConference;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/ParcelableConference;

    .line 377
    .local v4, "_arg2":Landroid/telecom/ParcelableConference;
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/Logging/Session$Info;

    .line 378
    .restart local v5    # "_arg3":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 379
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->handleCreateConferenceComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConference;Landroid/telecom/Logging/Session$Info;)V

    .line 380
    goto :goto_0

    .line 357
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/telecom/ConnectionRequest;
    .end local v4    # "_arg2":Landroid/telecom/ParcelableConference;
    .end local v5    # "_arg3":Landroid/telecom/Logging/Session$Info;
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 359
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/telecom/ConnectionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/ConnectionRequest;

    .line 361
    .restart local v3    # "_arg1":Landroid/telecom/ConnectionRequest;
    sget-object v4, Landroid/telecom/ParcelableConnection;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/ParcelableConnection;

    .line 363
    .local v4, "_arg2":Landroid/telecom/ParcelableConnection;
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/Logging/Session$Info;

    .line 364
    .restart local v5    # "_arg3":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 365
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;Landroid/telecom/Logging/Session$Info;)V

    .line 366
    nop

    .line 813
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/telecom/ConnectionRequest;
    .end local v4    # "_arg2":Landroid/telecom/ParcelableConnection;
    .end local v5    # "_arg3":Landroid/telecom/Logging/Session$Info;
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_27
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
