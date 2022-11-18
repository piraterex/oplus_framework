.class Landroid/app/IForegroundServiceObserver$Stub$Proxy;
.super Ljava/lang/Object;
.source "IForegroundServiceObserver.java"

# interfaces
.implements Landroid/app/IForegroundServiceObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IForegroundServiceObserver$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Landroid/app/IForegroundServiceObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 118
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 121
    iget-object v0, p0, Landroid/app/IForegroundServiceObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 125
    const-string v0, "android.app.IForegroundServiceObserver"

    return-object v0
.end method

.method public blacklist onForegroundStateChanged(Landroid/os/IBinder;Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "serviceToken"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "isForeground"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 131
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IForegroundServiceObserver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 133
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 136
    iget-object v1, p0, Landroid/app/IForegroundServiceObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 140
    nop

    .line 141
    return-void

    .line 139
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 140
    throw v1
.end method
