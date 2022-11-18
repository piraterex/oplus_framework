.class Landroid/net/ITetheringStatsProvider$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITetheringStatsProvider.java"

# interfaces
.implements Landroid/net/ITetheringStatsProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ITetheringStatsProvider$Stub;
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

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Landroid/net/ITetheringStatsProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 140
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 143
    iget-object v0, p0, Landroid/net/ITetheringStatsProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 147
    const-string v0, "android.net.ITetheringStatsProvider"

    return-object v0
.end method

.method public greylist-max-o getTetherStats(I)Landroid/net/NetworkStats;
    .locals 5
    .param p1, "how"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 156
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 159
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.ITetheringStatsProvider"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget-object v2, p0, Landroid/net/ITetheringStatsProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 162
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 163
    sget-object v3, Landroid/net/NetworkStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkStats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 166
    .local v2, "_result":Landroid/net/NetworkStats;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 168
    nop

    .line 169
    return-object v2

    .line 166
    .end local v2    # "_result":Landroid/net/NetworkStats;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 168
    throw v2
.end method

.method public greylist-max-o setInterfaceQuota(Ljava/lang/String;J)V
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "quotaBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 176
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 177
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 179
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.ITetheringStatsProvider"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 182
    iget-object v2, p0, Landroid/net/ITetheringStatsProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 183
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 188
    nop

    .line 189
    return-void

    .line 186
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 188
    throw v2
.end method
