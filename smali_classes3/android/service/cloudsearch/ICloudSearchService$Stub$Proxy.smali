.class Landroid/service/cloudsearch/ICloudSearchService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICloudSearchService.java"

# interfaces
.implements Landroid/service/cloudsearch/ICloudSearchService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/cloudsearch/ICloudSearchService$Stub;
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

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Landroid/service/cloudsearch/ICloudSearchService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 107
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 110
    iget-object v0, p0, Landroid/service/cloudsearch/ICloudSearchService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 114
    const-string v0, "android.service.cloudsearch.ICloudSearchService"

    return-object v0
.end method

.method public blacklist onSearch(Landroid/app/cloudsearch/SearchRequest;)V
    .locals 4
    .param p1, "request"    # Landroid/app/cloudsearch/SearchRequest;
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
    const-string v1, "android.service.cloudsearch.ICloudSearchService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 121
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 122
    iget-object v1, p0, Landroid/service/cloudsearch/ICloudSearchService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 126
    nop

    .line 127
    return-void

    .line 125
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 126
    throw v1
.end method
