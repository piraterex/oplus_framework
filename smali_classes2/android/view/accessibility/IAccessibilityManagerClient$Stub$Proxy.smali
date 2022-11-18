.class Landroid/view/accessibility/IAccessibilityManagerClient$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAccessibilityManagerClient.java"

# interfaces
.implements Landroid/view/accessibility/IAccessibilityManagerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IAccessibilityManagerClient$Stub;
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

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Landroid/view/accessibility/IAccessibilityManagerClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 155
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 158
    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManagerClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 162
    const-string v0, "android.view.accessibility.IAccessibilityManagerClient"

    return-object v0
.end method

.method public blacklist notifyServicesStateChanged(J)V
    .locals 5
    .param p1, "updatedUiTimeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 178
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 180
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.view.accessibility.IAccessibilityManagerClient"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 182
    iget-object v1, p0, Landroid/view/accessibility/IAccessibilityManagerClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 186
    nop

    .line 187
    return-void

    .line 185
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 186
    throw v1
.end method

.method public blacklist setFocusAppearance(II)V
    .locals 5
    .param p1, "strokeWidth"    # I
    .param p2, "color"    # I
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
    const-string v1, "android.view.accessibility.IAccessibilityManagerClient"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    iget-object v1, p0, Landroid/view/accessibility/IAccessibilityManagerClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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

.method public greylist-max-o setRelevantEventTypes(I)V
    .locals 5
    .param p1, "eventTypes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 190
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 192
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.view.accessibility.IAccessibilityManagerClient"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget-object v1, p0, Landroid/view/accessibility/IAccessibilityManagerClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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

.method public greylist-max-o setState(I)V
    .locals 4
    .param p1, "stateFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 168
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.view.accessibility.IAccessibilityManagerClient"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget-object v1, p0, Landroid/view/accessibility/IAccessibilityManagerClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 174
    nop

    .line 175
    return-void

    .line 173
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 174
    throw v1
.end method
