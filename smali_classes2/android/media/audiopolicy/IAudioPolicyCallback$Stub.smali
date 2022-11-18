.class public abstract Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;
.super Landroid/os/Binder;
.source "IAudioPolicyCallback.java"

# interfaces
.implements Landroid/media/audiopolicy/IAudioPolicyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/IAudioPolicyCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiopolicy/IAudioPolicyCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.audiopolicy.IAudioPolicyCallback"

.field static final greylist-max-o TRANSACTION_notifyAudioFocusAbandon:I = 0x4

.field static final greylist-max-o TRANSACTION_notifyAudioFocusGrant:I = 0x1

.field static final greylist-max-o TRANSACTION_notifyAudioFocusLoss:I = 0x2

.field static final greylist-max-o TRANSACTION_notifyAudioFocusRequest:I = 0x3

.field static final greylist-max-o TRANSACTION_notifyMixStateUpdate:I = 0x5

.field static final blacklist TRANSACTION_notifyUnregistration:I = 0x7

.field static final greylist-max-o TRANSACTION_notifyVolumeAdjust:I = 0x6


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 49
    const-string v0, "android.media.audiopolicy.IAudioPolicyCallback"

    invoke-virtual {p0, p0, v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 57
    if-nez p0, :cond_0

    .line 58
    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_0
    const-string v0, "android.media.audiopolicy.IAudioPolicyCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 61
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-eqz v1, :cond_1

    .line 62
    move-object v1, v0

    check-cast v1, Landroid/media/audiopolicy/IAudioPolicyCallback;

    return-object v1

    .line 64
    :cond_1
    new-instance v1, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 73
    packed-switch p0, :pswitch_data_0

    .line 105
    const/4 v0, 0x0

    return-object v0

    .line 101
    :pswitch_0
    const-string v0, "notifyUnregistration"

    return-object v0

    .line 97
    :pswitch_1
    const-string v0, "notifyVolumeAdjust"

    return-object v0

    .line 93
    :pswitch_2
    const-string v0, "notifyMixStateUpdate"

    return-object v0

    .line 89
    :pswitch_3
    const-string v0, "notifyAudioFocusAbandon"

    return-object v0

    .line 85
    :pswitch_4
    const-string v0, "notifyAudioFocusRequest"

    return-object v0

    .line 81
    :pswitch_5
    const-string v0, "notifyAudioFocusLoss"

    return-object v0

    .line 77
    :pswitch_6
    const-string v0, "notifyAudioFocusGrant"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 68
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 318
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 112
    invoke-static {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    const-string v0, "android.media.audiopolicy.IAudioPolicyCallback"

    .line 117
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 118
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 128
    packed-switch p1, :pswitch_data_1

    .line 193
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 124
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    return v1

    .line 188
    :pswitch_1
    invoke-virtual {p0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->notifyUnregistration()V

    .line 189
    goto :goto_0

    .line 181
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 182
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {p0, v2}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->notifyVolumeAdjust(I)V

    .line 184
    goto :goto_0

    .line 171
    .end local v2    # "_arg0":I
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 174
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 175
    invoke-virtual {p0, v2, v3}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->notifyMixStateUpdate(Ljava/lang/String;I)V

    .line 176
    goto :goto_0

    .line 163
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_4
    sget-object v2, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioFocusInfo;

    .line 164
    .local v2, "_arg0":Landroid/media/AudioFocusInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, v2}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->notifyAudioFocusAbandon(Landroid/media/AudioFocusInfo;)V

    .line 166
    goto :goto_0

    .line 153
    .end local v2    # "_arg0":Landroid/media/AudioFocusInfo;
    :pswitch_5
    sget-object v2, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioFocusInfo;

    .line 155
    .restart local v2    # "_arg0":Landroid/media/AudioFocusInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 156
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {p0, v2, v3}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->notifyAudioFocusRequest(Landroid/media/AudioFocusInfo;I)V

    .line 158
    goto :goto_0

    .line 143
    .end local v2    # "_arg0":Landroid/media/AudioFocusInfo;
    .end local v3    # "_arg1":I
    :pswitch_6
    sget-object v2, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioFocusInfo;

    .line 145
    .restart local v2    # "_arg0":Landroid/media/AudioFocusInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 146
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    invoke-virtual {p0, v2, v3}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->notifyAudioFocusLoss(Landroid/media/AudioFocusInfo;Z)V

    .line 148
    goto :goto_0

    .line 133
    .end local v2    # "_arg0":Landroid/media/AudioFocusInfo;
    .end local v3    # "_arg1":Z
    :pswitch_7
    sget-object v2, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioFocusInfo;

    .line 135
    .restart local v2    # "_arg0":Landroid/media/AudioFocusInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 136
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 137
    invoke-virtual {p0, v2, v3}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->notifyAudioFocusGrant(Landroid/media/AudioFocusInfo;I)V

    .line 138
    nop

    .line 196
    .end local v2    # "_arg0":Landroid/media/AudioFocusInfo;
    .end local v3    # "_arg1":I
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
