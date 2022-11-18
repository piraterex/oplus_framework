.class public abstract Landroid/media/projection/IMediaProjection$Stub;
.super Landroid/os/Binder;
.source "IMediaProjection.java"

# interfaces
.implements Landroid/media/projection/IMediaProjection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/projection/IMediaProjection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/projection/IMediaProjection$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.projection.IMediaProjection"

.field static final greylist-max-o TRANSACTION_applyVirtualDisplayFlags:I = 0x6

.field static final greylist-max-o TRANSACTION_canProjectAudio:I = 0x3

.field static final greylist-max-o TRANSACTION_canProjectSecureVideo:I = 0x5

.field static final greylist-max-o TRANSACTION_canProjectVideo:I = 0x4

.field static final blacklist TRANSACTION_getTaskRecordingWindowContainerToken:I = 0x9

.field static final greylist-max-o TRANSACTION_registerCallback:I = 0x7

.field static final blacklist TRANSACTION_setTaskRecordingWindowContainerToken:I = 0xa

.field static final greylist-max-o TRANSACTION_start:I = 0x1

.field static final greylist-max-o TRANSACTION_stop:I = 0x2

.field static final greylist-max-o TRANSACTION_unregisterCallback:I = 0x8


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 65
    const-string v0, "android.media.projection.IMediaProjection"

    invoke-virtual {p0, p0, v0}, Landroid/media/projection/IMediaProjection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjection;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 73
    if-nez p0, :cond_0

    .line 74
    const/4 v0, 0x0

    return-object v0

    .line 76
    :cond_0
    const-string v0, "android.media.projection.IMediaProjection"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 77
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/projection/IMediaProjection;

    if-eqz v1, :cond_1

    .line 78
    move-object v1, v0

    check-cast v1, Landroid/media/projection/IMediaProjection;

    return-object v1

    .line 80
    :cond_1
    new-instance v1, Landroid/media/projection/IMediaProjection$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/projection/IMediaProjection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 89
    packed-switch p0, :pswitch_data_0

    .line 133
    const/4 v0, 0x0

    return-object v0

    .line 129
    :pswitch_0
    const-string v0, "setTaskRecordingWindowContainerToken"

    return-object v0

    .line 125
    :pswitch_1
    const-string v0, "getTaskRecordingWindowContainerToken"

    return-object v0

    .line 121
    :pswitch_2
    const-string/jumbo v0, "unregisterCallback"

    return-object v0

    .line 117
    :pswitch_3
    const-string v0, "registerCallback"

    return-object v0

    .line 113
    :pswitch_4
    const-string v0, "applyVirtualDisplayFlags"

    return-object v0

    .line 109
    :pswitch_5
    const-string v0, "canProjectSecureVideo"

    return-object v0

    .line 105
    :pswitch_6
    const-string v0, "canProjectVideo"

    return-object v0

    .line 101
    :pswitch_7
    const-string v0, "canProjectAudio"

    return-object v0

    .line 97
    :pswitch_8
    const-string v0, "stop"

    return-object v0

    .line 93
    :pswitch_9
    const-string v0, "start"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 84
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 443
    const/16 v0, 0x9

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 140
    invoke-static {p1}, Landroid/media/projection/IMediaProjection$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 144
    const-string v0, "android.media.projection.IMediaProjection"

    .line 145
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 146
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 156
    packed-switch p1, :pswitch_data_1

    .line 240
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 152
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    return v1

    .line 232
    :pswitch_1
    sget-object v2, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/WindowContainerToken;

    .line 233
    .local v2, "_arg0":Landroid/window/WindowContainerToken;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 234
    invoke-virtual {p0, v2}, Landroid/media/projection/IMediaProjection$Stub;->setTaskRecordingWindowContainerToken(Landroid/window/WindowContainerToken;)V

    .line 235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    goto/16 :goto_0

    .line 224
    .end local v2    # "_arg0":Landroid/window/WindowContainerToken;
    :pswitch_2
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjection$Stub;->getTaskRecordingWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v2

    .line 225
    .local v2, "_result":Landroid/window/WindowContainerToken;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 227
    goto/16 :goto_0

    .line 216
    .end local v2    # "_result":Landroid/window/WindowContainerToken;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/projection/IMediaProjectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionCallback;

    move-result-object v2

    .line 217
    .local v2, "_arg0":Landroid/media/projection/IMediaProjectionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 218
    invoke-virtual {p0, v2}, Landroid/media/projection/IMediaProjection$Stub;->unregisterCallback(Landroid/media/projection/IMediaProjectionCallback;)V

    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    goto :goto_0

    .line 207
    .end local v2    # "_arg0":Landroid/media/projection/IMediaProjectionCallback;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/projection/IMediaProjectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionCallback;

    move-result-object v2

    .line 208
    .restart local v2    # "_arg0":Landroid/media/projection/IMediaProjectionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {p0, v2}, Landroid/media/projection/IMediaProjection$Stub;->registerCallback(Landroid/media/projection/IMediaProjectionCallback;)V

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    goto :goto_0

    .line 197
    .end local v2    # "_arg0":Landroid/media/projection/IMediaProjectionCallback;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 198
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    invoke-virtual {p0, v2}, Landroid/media/projection/IMediaProjection$Stub;->applyVirtualDisplayFlags(I)I

    move-result v3

    .line 200
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    goto :goto_0

    .line 189
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_6
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjection$Stub;->canProjectSecureVideo()Z

    move-result v2

    .line 190
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 192
    goto :goto_0

    .line 182
    .end local v2    # "_result":Z
    :pswitch_7
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjection$Stub;->canProjectVideo()Z

    move-result v2

    .line 183
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 185
    goto :goto_0

    .line 175
    .end local v2    # "_result":Z
    :pswitch_8
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjection$Stub;->canProjectAudio()Z

    move-result v2

    .line 176
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 178
    goto :goto_0

    .line 169
    .end local v2    # "_result":Z
    :pswitch_9
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjection$Stub;->stop()V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    goto :goto_0

    .line 161
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/projection/IMediaProjectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionCallback;

    move-result-object v2

    .line 162
    .local v2, "_arg0":Landroid/media/projection/IMediaProjectionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 163
    invoke-virtual {p0, v2}, Landroid/media/projection/IMediaProjection$Stub;->start(Landroid/media/projection/IMediaProjectionCallback;)V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    nop

    .line 243
    .end local v2    # "_arg0":Landroid/media/projection/IMediaProjectionCallback;
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
