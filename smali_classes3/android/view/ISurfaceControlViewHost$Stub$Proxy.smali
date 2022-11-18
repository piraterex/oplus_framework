.class Landroid/view/ISurfaceControlViewHost$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISurfaceControlViewHost.java"

# interfaces
.implements Landroid/view/ISurfaceControlViewHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ISurfaceControlViewHost$Stub;
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

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Landroid/view/ISurfaceControlViewHost$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 135
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 138
    iget-object v0, p0, Landroid/view/ISurfaceControlViewHost$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 142
    const-string v0, "android.view.ISurfaceControlViewHost"

    return-object v0
.end method

.method public blacklist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 148
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.view.ISurfaceControlViewHost"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 149
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 150
    iget-object v1, p0, Landroid/view/ISurfaceControlViewHost$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 154
    nop

    .line 155
    return-void

    .line 153
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 154
    throw v1
.end method

.method public blacklist onDispatchDetachedFromWindow()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 160
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.view.ISurfaceControlViewHost"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Landroid/view/ISurfaceControlViewHost$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 165
    nop

    .line 166
    return-void

    .line 164
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 165
    throw v1
.end method

.method public blacklist onInsetsChanged(Landroid/view/InsetsState;Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "state"    # Landroid/view/InsetsState;
    .param p2, "insetFrame"    # Landroid/graphics/Rect;
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
    const-string v1, "android.view.ISurfaceControlViewHost"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 172
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 173
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 174
    iget-object v1, p0, Landroid/view/ISurfaceControlViewHost$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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
