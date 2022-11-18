.class Landroid/app/trust/ITrustListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITrustListener.java"

# interfaces
.implements Landroid/app/trust/ITrustListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/trust/ITrustListener$Stub;
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

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Landroid/app/trust/ITrustListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 145
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 148
    iget-object v0, p0, Landroid/app/trust/ITrustListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 152
    const-string v0, "android.app.trust.ITrustListener"

    return-object v0
.end method

.method public blacklist onTrustChanged(ZIILjava/util/List;)V
    .locals 4
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 156
    .local p4, "trustGrantedMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 158
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.trust.ITrustListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 160
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 163
    iget-object v1, p0, Landroid/app/trust/ITrustListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 167
    nop

    .line 168
    return-void

    .line 166
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 167
    throw v1
.end method

.method public greylist-max-o onTrustError(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 184
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 186
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.trust.ITrustListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 187
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 188
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    invoke-static {p1, v0, v2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    :goto_0
    iget-object v2, p0, Landroid/app/trust/ITrustListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 198
    nop

    .line 199
    return-void

    .line 197
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 198
    throw v1
.end method

.method public greylist-max-o onTrustManagedChanged(ZI)V
    .locals 5
    .param p1, "managed"    # Z
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 171
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 173
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.trust.ITrustListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 175
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget-object v1, p0, Landroid/app/trust/ITrustListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 180
    nop

    .line 181
    return-void

    .line 179
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 180
    throw v1
.end method
