.class Landroid/app/cloudsearch/ICloudSearchManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICloudSearchManager.java"

# interfaces
.implements Landroid/app/cloudsearch/ICloudSearchManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/cloudsearch/ICloudSearchManager$Stub;
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

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Landroid/app/cloudsearch/ICloudSearchManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 128
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 131
    iget-object v0, p0, Landroid/app/cloudsearch/ICloudSearchManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 135
    const-string v0, "android.app.cloudsearch.ICloudSearchManager"

    return-object v0
.end method

.method public blacklist returnResults(Landroid/os/IBinder;Ljava/lang/String;Landroid/app/cloudsearch/SearchResponse;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "requestId"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/app/cloudsearch/SearchResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 152
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 154
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.cloudsearch.ICloudSearchManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 156
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 158
    iget-object v1, p0, Landroid/app/cloudsearch/ICloudSearchManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 162
    nop

    .line 163
    return-void

    .line 161
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 162
    throw v1
.end method

.method public blacklist search(Landroid/app/cloudsearch/SearchRequest;Landroid/app/cloudsearch/ICloudSearchManagerCallback;)V
    .locals 4
    .param p1, "request"    # Landroid/app/cloudsearch/SearchRequest;
    .param p2, "callBack"    # Landroid/app/cloudsearch/ICloudSearchManagerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 141
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.cloudsearch.ICloudSearchManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 142
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 143
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 144
    iget-object v1, p0, Landroid/app/cloudsearch/ICloudSearchManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 148
    nop

    .line 149
    return-void

    .line 147
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 148
    throw v1
.end method
