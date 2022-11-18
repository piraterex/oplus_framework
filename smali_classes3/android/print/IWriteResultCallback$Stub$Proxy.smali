.class Landroid/print/IWriteResultCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IWriteResultCallback.java"

# interfaces
.implements Landroid/print/IWriteResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/IWriteResultCallback$Stub;
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

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Landroid/print/IWriteResultCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 158
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 161
    iget-object v0, p0, Landroid/print/IWriteResultCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 165
    const-string v0, "android.print.IWriteResultCallback"

    return-object v0
.end method

.method public greylist-max-o onWriteCanceled(I)V
    .locals 5
    .param p1, "sequence"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 214
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 216
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.print.IWriteResultCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget-object v1, p0, Landroid/print/IWriteResultCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 222
    nop

    .line 223
    return-void

    .line 221
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 222
    throw v1
.end method

.method public greylist-max-o onWriteFailed(Ljava/lang/CharSequence;I)V
    .locals 5
    .param p1, "error"    # Ljava/lang/CharSequence;
    .param p2, "sequence"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 197
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.print.IWriteResultCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 198
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 199
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    invoke-static {p1, v0, v2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget-object v2, p0, Landroid/print/IWriteResultCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 210
    nop

    .line 211
    return-void

    .line 209
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 210
    throw v1
.end method

.method public greylist-max-o onWriteFinished([Landroid/print/PageRange;I)V
    .locals 5
    .param p1, "pages"    # [Landroid/print/PageRange;
    .param p2, "sequence"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 184
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.print.IWriteResultCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 185
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 186
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget-object v1, p0, Landroid/print/IWriteResultCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 191
    nop

    .line 192
    return-void

    .line 190
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 191
    throw v1
.end method

.method public greylist-max-o onWriteStarted(Landroid/os/ICancellationSignal;I)V
    .locals 4
    .param p1, "cancellation"    # Landroid/os/ICancellationSignal;
    .param p2, "sequence"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 171
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.print.IWriteResultCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 173
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    iget-object v1, p0, Landroid/print/IWriteResultCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 178
    nop

    .line 179
    return-void

    .line 177
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 178
    throw v1
.end method
