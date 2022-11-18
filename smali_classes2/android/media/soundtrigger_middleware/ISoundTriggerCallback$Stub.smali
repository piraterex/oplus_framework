.class public abstract Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub;
.super Landroid/os/Binder;
.source "ISoundTriggerCallback.java"

# interfaces
.implements Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onModelUnloaded:I = 0x4

.field static final blacklist TRANSACTION_onModuleDied:I = 0x5

.field static final blacklist TRANSACTION_onPhraseRecognition:I = 0x2

.field static final blacklist TRANSACTION_onRecognition:I = 0x1

.field static final blacklist TRANSACTION_onResourcesAvailable:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 70
    sget-object v0, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 78
    if-nez p0, :cond_0

    .line 79
    const/4 v0, 0x0

    return-object v0

    .line 81
    :cond_0
    sget-object v0, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 82
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    if-eqz v1, :cond_1

    .line 83
    move-object v1, v0

    check-cast v1, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    return-object v1

    .line 85
    :cond_1
    new-instance v1, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 89
    return-object p0
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

    .line 93
    sget-object v0, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 94
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 95
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 105
    packed-switch p1, :pswitch_data_1

    .line 151
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 101
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    return v1

    .line 146
    :pswitch_1
    invoke-virtual {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub;->onModuleDied()V

    .line 147
    goto :goto_0

    .line 139
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 140
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    invoke-virtual {p0, v2}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub;->onModelUnloaded(I)V

    .line 142
    goto :goto_0

    .line 133
    .end local v2    # "_arg0":I
    :pswitch_3
    invoke-virtual {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub;->onResourcesAvailable()V

    .line 134
    goto :goto_0

    .line 122
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 124
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/media/soundtrigger/PhraseRecognitionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/soundtrigger/PhraseRecognitionEvent;

    .line 126
    .local v3, "_arg1":Landroid/media/soundtrigger/PhraseRecognitionEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 127
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub;->onPhraseRecognition(ILandroid/media/soundtrigger/PhraseRecognitionEvent;I)V

    .line 129
    goto :goto_0

    .line 110
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/media/soundtrigger/PhraseRecognitionEvent;
    .end local v4    # "_arg2":I
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 112
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/media/soundtrigger/RecognitionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/soundtrigger/RecognitionEvent;

    .line 114
    .local v3, "_arg1":Landroid/media/soundtrigger/RecognitionEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 115
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 116
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub;->onRecognition(ILandroid/media/soundtrigger/RecognitionEvent;I)V

    .line 117
    nop

    .line 154
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/media/soundtrigger/RecognitionEvent;
    .end local v4    # "_arg2":I
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
