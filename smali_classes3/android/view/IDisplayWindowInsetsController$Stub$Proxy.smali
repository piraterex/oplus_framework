.class Landroid/view/IDisplayWindowInsetsController$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDisplayWindowInsetsController.java"

# interfaces
.implements Landroid/view/IDisplayWindowInsetsController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IDisplayWindowInsetsController$Stub;
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

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p1, p0, Landroid/view/IDisplayWindowInsetsController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 185
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 188
    iget-object v0, p0, Landroid/view/IDisplayWindowInsetsController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 192
    const-string v0, "android.view.IDisplayWindowInsetsController"

    return-object v0
.end method

.method public blacklist hideInsets(IZ)V
    .locals 5
    .param p1, "types"    # I
    .param p2, "fromIme"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 257
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 259
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.view.IDisplayWindowInsetsController"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 262
    iget-object v1, p0, Landroid/view/IDisplayWindowInsetsController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 266
    nop

    .line 267
    return-void

    .line 265
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 266
    throw v1
.end method

.method public blacklist insetsChanged(Landroid/view/InsetsState;)V
    .locals 5
    .param p1, "insetsState"    # Landroid/view/InsetsState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 216
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 218
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.view.IDisplayWindowInsetsController"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 219
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 220
    iget-object v1, p0, Landroid/view/IDisplayWindowInsetsController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 224
    nop

    .line 225
    return-void

    .line 223
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 224
    throw v1
.end method

.method public blacklist insetsControlChanged(Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V
    .locals 5
    .param p1, "insetsState"    # Landroid/view/InsetsState;
    .param p2, "activeControls"    # [Landroid/view/InsetsSourceControl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 229
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 231
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.view.IDisplayWindowInsetsController"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 232
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 233
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 234
    iget-object v1, p0, Landroid/view/IDisplayWindowInsetsController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 238
    nop

    .line 239
    return-void

    .line 237
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 238
    throw v1
.end method

.method public blacklist showInsets(IZ)V
    .locals 5
    .param p1, "types"    # I
    .param p2, "fromIme"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 243
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 245
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.view.IDisplayWindowInsetsController"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 248
    iget-object v1, p0, Landroid/view/IDisplayWindowInsetsController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 252
    nop

    .line 253
    return-void

    .line 251
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 252
    throw v1
.end method

.method public blacklist topFocusedWindowChanged(Ljava/lang/String;Landroid/view/InsetsVisibilities;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "insetsVisibilities"    # Landroid/view/InsetsVisibilities;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 202
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 204
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.view.IDisplayWindowInsetsController"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 207
    iget-object v1, p0, Landroid/view/IDisplayWindowInsetsController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 211
    nop

    .line 212
    return-void

    .line 210
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 211
    throw v1
.end method
