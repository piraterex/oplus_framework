.class Landroid/net/INetworkRecommendationProvider$Stub$Proxy;
.super Ljava/lang/Object;
.source "INetworkRecommendationProvider.java"

# interfaces
.implements Landroid/net/INetworkRecommendationProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkRecommendationProvider$Stub;
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

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Landroid/net/INetworkRecommendationProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 115
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 118
    iget-object v0, p0, Landroid/net/INetworkRecommendationProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 122
    const-string v0, "android.net.INetworkRecommendationProvider"

    return-object v0
.end method

.method public greylist-max-o requestScores([Landroid/net/NetworkKey;)V
    .locals 4
    .param p1, "networks"    # [Landroid/net/NetworkKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 137
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.INetworkRecommendationProvider"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 138
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 139
    iget-object v1, p0, Landroid/net/INetworkRecommendationProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 143
    nop

    .line 144
    return-void

    .line 142
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 143
    throw v1
.end method
