.class Landroid/service/voice/IVoiceInteractionSessionService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IVoiceInteractionSessionService.java"

# interfaces
.implements Landroid/service/voice/IVoiceInteractionSessionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/IVoiceInteractionSessionService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private greylist-max-o mRemote:Landroid/os/IBinder;


# direct methods
.method constructor greylist-max-o <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Landroid/service/voice/IVoiceInteractionSessionService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 107
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 110
    iget-object v0, p0, Landroid/service/voice/IVoiceInteractionSessionService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 114
    const-string v0, "android.service.voice.IVoiceInteractionSessionService"

    return-object v0
.end method

.method public greylist-max-o newSession(Landroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "startFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 120
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.service.voice.IVoiceInteractionSessionService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 122
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 123
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget-object v1, p0, Landroid/service/voice/IVoiceInteractionSessionService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 128
    nop

    .line 129
    return-void

    .line 127
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 128
    throw v1
.end method
