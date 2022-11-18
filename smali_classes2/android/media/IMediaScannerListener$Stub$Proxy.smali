.class Landroid/media/IMediaScannerListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMediaScannerListener.java"

# interfaces
.implements Landroid/media/IMediaScannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IMediaScannerListener$Stub;
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

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Landroid/media/IMediaScannerListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 111
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 114
    iget-object v0, p0, Landroid/media/IMediaScannerListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 118
    const-string v0, "android.media.IMediaScannerListener"

    return-object v0
.end method

.method public greylist-max-o scanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 130
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IMediaScannerListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 133
    iget-object v1, p0, Landroid/media/IMediaScannerListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 137
    nop

    .line 138
    return-void

    .line 136
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 137
    throw v1
.end method
