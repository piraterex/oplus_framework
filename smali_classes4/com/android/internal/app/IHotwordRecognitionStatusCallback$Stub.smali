.class public abstract Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;
.super Landroid/os/Binder;
.source "IHotwordRecognitionStatusCallback.java"

# interfaces
.implements Lcom/android/internal/app/IHotwordRecognitionStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IHotwordRecognitionStatusCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onError:I = 0x4

.field static final blacklist TRANSACTION_onGenericSoundTriggerDetected:I = 0x2

.field static final blacklist TRANSACTION_onKeyphraseDetected:I = 0x1

.field static final blacklist TRANSACTION_onProcessRestarted:I = 0x8

.field static final blacklist TRANSACTION_onRecognitionPaused:I = 0x5

.field static final blacklist TRANSACTION_onRecognitionResumed:I = 0x6

.field static final blacklist TRANSACTION_onRejected:I = 0x3

.field static final blacklist TRANSACTION_onStatusReported:I = 0x7


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 82
    const-string v0, "com.android.internal.app.IHotwordRecognitionStatusCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IHotwordRecognitionStatusCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 90
    if-nez p0, :cond_0

    .line 91
    const/4 v0, 0x0

    return-object v0

    .line 93
    :cond_0
    const-string v0, "com.android.internal.app.IHotwordRecognitionStatusCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 94
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    if-eqz v1, :cond_1

    .line 95
    move-object v1, v0

    check-cast v1, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    return-object v1

    .line 97
    :cond_1
    new-instance v1, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 106
    packed-switch p0, :pswitch_data_0

    .line 142
    const/4 v0, 0x0

    return-object v0

    .line 138
    :pswitch_0
    const-string/jumbo v0, "onProcessRestarted"

    return-object v0

    .line 134
    :pswitch_1
    const-string/jumbo v0, "onStatusReported"

    return-object v0

    .line 130
    :pswitch_2
    const-string/jumbo v0, "onRecognitionResumed"

    return-object v0

    .line 126
    :pswitch_3
    const-string/jumbo v0, "onRecognitionPaused"

    return-object v0

    .line 122
    :pswitch_4
    const-string/jumbo v0, "onError"

    return-object v0

    .line 118
    :pswitch_5
    const-string/jumbo v0, "onRejected"

    return-object v0

    .line 114
    :pswitch_6
    const-string/jumbo v0, "onGenericSoundTriggerDetected"

    return-object v0

    .line 110
    :pswitch_7
    const-string/jumbo v0, "onKeyphraseDetected"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 101
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 388
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 149
    invoke-static {p1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 153
    const-string v0, "com.android.internal.app.IHotwordRecognitionStatusCallback"

    .line 154
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 155
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 165
    packed-switch p1, :pswitch_data_1

    .line 226
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 161
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    return v1

    .line 221
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->onProcessRestarted()V

    .line 222
    goto :goto_0

    .line 214
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 215
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 216
    invoke-virtual {p0, v2}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->onStatusReported(I)V

    .line 217
    goto :goto_0

    .line 208
    .end local v2    # "_arg0":I
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->onRecognitionResumed()V

    .line 209
    goto :goto_0

    .line 203
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->onRecognitionPaused()V

    .line 204
    goto :goto_0

    .line 196
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 197
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 198
    invoke-virtual {p0, v2}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->onError(I)V

    .line 199
    goto :goto_0

    .line 188
    .end local v2    # "_arg0":I
    :pswitch_6
    sget-object v2, Landroid/service/voice/HotwordRejectedResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/voice/HotwordRejectedResult;

    .line 189
    .local v2, "_arg0":Landroid/service/voice/HotwordRejectedResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    invoke-virtual {p0, v2}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->onRejected(Landroid/service/voice/HotwordRejectedResult;)V

    .line 191
    goto :goto_0

    .line 180
    .end local v2    # "_arg0":Landroid/service/voice/HotwordRejectedResult;
    :pswitch_7
    sget-object v2, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;

    .line 181
    .local v2, "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 182
    invoke-virtual {p0, v2}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->onGenericSoundTriggerDetected(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V

    .line 183
    goto :goto_0

    .line 170
    .end local v2    # "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;
    :pswitch_8
    sget-object v2, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    .line 172
    .local v2, "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;
    sget-object v3, Landroid/service/voice/HotwordDetectedResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/voice/HotwordDetectedResult;

    .line 173
    .local v3, "_arg1":Landroid/service/voice/HotwordDetectedResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->onKeyphraseDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/service/voice/HotwordDetectedResult;)V

    .line 175
    nop

    .line 229
    .end local v2    # "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;
    .end local v3    # "_arg1":Landroid/service/voice/HotwordDetectedResult;
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
