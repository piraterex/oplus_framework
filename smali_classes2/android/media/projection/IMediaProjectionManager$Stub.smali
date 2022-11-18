.class public abstract Landroid/media/projection/IMediaProjectionManager$Stub;
.super Landroid/os/Binder;
.source "IMediaProjectionManager.java"

# interfaces
.implements Landroid/media/projection/IMediaProjectionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/projection/IMediaProjectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/projection/IMediaProjectionManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.projection.IMediaProjectionManager"

.field static final greylist-max-o TRANSACTION_addCallback:I = 0x6

.field static final greylist-max-o TRANSACTION_createProjection:I = 0x2

.field static final greylist-max-o TRANSACTION_getActiveProjectionInfo:I = 0x4

.field static final greylist-max-o TRANSACTION_hasProjectionPermission:I = 0x1

.field static final greylist-max-o TRANSACTION_isValidMediaProjection:I = 0x3

.field static final greylist-max-o TRANSACTION_removeCallback:I = 0x7

.field static final blacklist TRANSACTION_setContentRecordingSession:I = 0x8

.field static final greylist-max-o TRANSACTION_stopActiveProjection:I = 0x5


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 58
    const-string v0, "android.media.projection.IMediaProjectionManager"

    invoke-virtual {p0, p0, v0}, Landroid/media/projection/IMediaProjectionManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 66
    if-nez p0, :cond_0

    .line 67
    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_0
    const-string v0, "android.media.projection.IMediaProjectionManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 70
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/projection/IMediaProjectionManager;

    if-eqz v1, :cond_1

    .line 71
    move-object v1, v0

    check-cast v1, Landroid/media/projection/IMediaProjectionManager;

    return-object v1

    .line 73
    :cond_1
    new-instance v1, Landroid/media/projection/IMediaProjectionManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/projection/IMediaProjectionManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 82
    packed-switch p0, :pswitch_data_0

    .line 118
    const/4 v0, 0x0

    return-object v0

    .line 114
    :pswitch_0
    const-string v0, "setContentRecordingSession"

    return-object v0

    .line 110
    :pswitch_1
    const-string v0, "removeCallback"

    return-object v0

    .line 106
    :pswitch_2
    const-string v0, "addCallback"

    return-object v0

    .line 102
    :pswitch_3
    const-string v0, "stopActiveProjection"

    return-object v0

    .line 98
    :pswitch_4
    const-string v0, "getActiveProjectionInfo"

    return-object v0

    .line 94
    :pswitch_5
    const-string v0, "isValidMediaProjection"

    return-object v0

    .line 90
    :pswitch_6
    const-string v0, "createProjection"

    return-object v0

    .line 86
    :pswitch_7
    const-string v0, "hasProjectionPermission"

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

    .line 77
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 401
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 125
    invoke-static {p1}, Landroid/media/projection/IMediaProjectionManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    const-string v0, "android.media.projection.IMediaProjectionManager"

    .line 130
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 131
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 141
    packed-switch p1, :pswitch_data_1

    .line 225
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 137
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    return v1

    .line 215
    :pswitch_1
    sget-object v2, Landroid/view/ContentRecordingSession;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ContentRecordingSession;

    .line 217
    .local v2, "_arg0":Landroid/view/ContentRecordingSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/projection/IMediaProjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjection;

    move-result-object v3

    .line 218
    .local v3, "_arg1":Landroid/media/projection/IMediaProjection;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 219
    invoke-virtual {p0, v2, v3}, Landroid/media/projection/IMediaProjectionManager$Stub;->setContentRecordingSession(Landroid/view/ContentRecordingSession;Landroid/media/projection/IMediaProjection;)V

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    goto/16 :goto_0

    .line 206
    .end local v2    # "_arg0":Landroid/view/ContentRecordingSession;
    .end local v3    # "_arg1":Landroid/media/projection/IMediaProjection;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/projection/IMediaProjectionWatcherCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionWatcherCallback;

    move-result-object v2

    .line 207
    .local v2, "_arg0":Landroid/media/projection/IMediaProjectionWatcherCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 208
    invoke-virtual {p0, v2}, Landroid/media/projection/IMediaProjectionManager$Stub;->removeCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    goto :goto_0

    .line 197
    .end local v2    # "_arg0":Landroid/media/projection/IMediaProjectionWatcherCallback;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/projection/IMediaProjectionWatcherCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionWatcherCallback;

    move-result-object v2

    .line 198
    .restart local v2    # "_arg0":Landroid/media/projection/IMediaProjectionWatcherCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    invoke-virtual {p0, v2}, Landroid/media/projection/IMediaProjectionManager$Stub;->addCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    goto :goto_0

    .line 190
    .end local v2    # "_arg0":Landroid/media/projection/IMediaProjectionWatcherCallback;
    :pswitch_4
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjectionManager$Stub;->stopActiveProjection()V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    goto :goto_0

    .line 183
    :pswitch_5
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjectionManager$Stub;->getActiveProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    move-result-object v2

    .line 184
    .local v2, "_result":Landroid/media/projection/MediaProjectionInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 186
    goto :goto_0

    .line 174
    .end local v2    # "_result":Landroid/media/projection/MediaProjectionInfo;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/projection/IMediaProjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjection;

    move-result-object v2

    .line 175
    .local v2, "_arg0":Landroid/media/projection/IMediaProjection;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    invoke-virtual {p0, v2}, Landroid/media/projection/IMediaProjectionManager$Stub;->isValidMediaProjection(Landroid/media/projection/IMediaProjection;)Z

    move-result v3

    .line 177
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 179
    goto :goto_0

    .line 158
    .end local v2    # "_arg0":Landroid/media/projection/IMediaProjection;
    .end local v3    # "_result":Z
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 160
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 164
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 165
    .local v5, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 166
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/media/projection/IMediaProjectionManager$Stub;->createProjection(ILjava/lang/String;IZ)Landroid/media/projection/IMediaProjection;

    move-result-object v6

    .line 167
    .local v6, "_result":Landroid/media/projection/IMediaProjection;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 169
    goto :goto_0

    .line 146
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Z
    .end local v6    # "_result":Landroid/media/projection/IMediaProjection;
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 148
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 149
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    invoke-virtual {p0, v2, v3}, Landroid/media/projection/IMediaProjectionManager$Stub;->hasProjectionPermission(ILjava/lang/String;)Z

    move-result v4

    .line 151
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 153
    nop

    .line 228
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
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
