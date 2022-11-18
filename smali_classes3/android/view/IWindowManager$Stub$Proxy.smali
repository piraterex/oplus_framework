.class Landroid/view/IWindowManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IWindowManager.java"

# interfaces
.implements Landroid/view/IWindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private greylist-max-o mRemote:Landroid/os/IBinder;


# direct methods
.method constructor greylist <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 2895
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2896
    iput-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 2897
    return-void
.end method


# virtual methods
.method public blacklist addKeyguardLockedStateListener(Lcom/android/internal/policy/IKeyguardLockedStateListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/android/internal/policy/IKeyguardLockedStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3507
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3508
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3510
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3511
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3512
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3513
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3516
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3517
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3518
    nop

    .line 3519
    return-void

    .line 3516
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3517
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3518
    throw v2
.end method

.method public blacklist addShellRoot(ILandroid/view/IWindow;I)Landroid/view/SurfaceControl;
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "client"    # Landroid/view/IWindow;
    .param p3, "shellRootLayer"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3269
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3270
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3273
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3274
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3275
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3276
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3277
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3278
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3279
    sget-object v3, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 3282
    .local v2, "_result":Landroid/view/SurfaceControl;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3284
    nop

    .line 3285
    return-object v2

    .line 3282
    .end local v2    # "_result":Landroid/view/SurfaceControl;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3284
    throw v2
.end method

.method public blacklist addWindowToken(Landroid/os/IBinder;IILandroid/os/Bundle;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "type"    # I
    .param p3, "displayId"    # I
    .param p4, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3201
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3202
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3204
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3205
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3206
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3207
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3208
    const/4 v2, 0x0

    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3209
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3210
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3213
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3215
    nop

    .line 3216
    return-void

    .line 3213
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3215
    throw v2
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 2900
    iget-object v0, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist attachToDisplayContent(Landroid/os/IBinder;I)Landroid/content/res/Configuration;
    .locals 5
    .param p1, "clientToken"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5348
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5349
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5352
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5353
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5354
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5355
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x79

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5356
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5357
    sget-object v3, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Configuration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 5360
    .local v2, "_result":Landroid/content/res/Configuration;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5361
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5362
    nop

    .line 5363
    return-object v2

    .line 5360
    .end local v2    # "_result":Landroid/content/res/Configuration;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5361
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5362
    throw v2
.end method

.method public blacklist attachWindowContextToDisplayArea(Landroid/os/IBinder;IILandroid/os/Bundle;)Landroid/content/res/Configuration;
    .locals 5
    .param p1, "clientToken"    # Landroid/os/IBinder;
    .param p2, "type"    # I
    .param p3, "displayId"    # I
    .param p4, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5277
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5278
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5281
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5282
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5283
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5284
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5285
    const/4 v2, 0x0

    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5286
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x77

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5287
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5288
    sget-object v3, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Configuration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 5291
    .local v2, "_result":Landroid/content/res/Configuration;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5293
    nop

    .line 5294
    return-object v2

    .line 5291
    .end local v2    # "_result":Landroid/content/res/Configuration;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5293
    throw v2
.end method

.method public blacklist attachWindowContextToWindowToken(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "clientToken"    # Landroid/os/IBinder;
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5317
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5318
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5320
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5321
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5322
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5323
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x78

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5324
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5327
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5329
    nop

    .line 5330
    return-void

    .line 5327
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5329
    throw v2
.end method

.method public greylist-max-o clearForcedDisplayDensityForUser(II)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3125
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3126
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3128
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3129
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3130
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3131
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3132
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3135
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3137
    nop

    .line 3138
    return-void

    .line 3135
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3137
    throw v2
.end method

.method public greylist-max-o clearForcedDisplaySize(I)V
    .locals 5
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3057
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3058
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3060
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3061
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3062
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3063
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3066
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3067
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3068
    nop

    .line 3069
    return-void

    .line 3066
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3067
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3068
    throw v2
.end method

.method public blacklist clearTaskTransitionSpec()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5515
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5516
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5518
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5519
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x81

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5520
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5523
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5524
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5525
    nop

    .line 5526
    return-void

    .line 5523
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5524
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5525
    throw v2
.end method

.method public greylist-max-o clearWindowContentFrameStats(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4296
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4297
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4300
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4301
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4302
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4303
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4304
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 4307
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4309
    nop

    .line 4310
    return v2

    .line 4307
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4309
    throw v2
.end method

.method public greylist-max-o closeSystemDialogs(Ljava/lang/String;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3553
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3554
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3556
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3557
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3558
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3559
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3562
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3563
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3564
    nop

    .line 3565
    return-void

    .line 3562
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3563
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3564
    throw v2
.end method

.method public blacklist createInputConsumer(Landroid/os/IBinder;Ljava/lang/String;ILandroid/view/InputChannel;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "displayId"    # I
    .param p4, "inputChannel"    # Landroid/view/InputChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4454
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4455
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4457
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4458
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4459
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4460
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4461
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x53

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4462
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4463
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 4464
    invoke-virtual {p4, v1}, Landroid/view/InputChannel;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4468
    .end local v2    # "_status":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4469
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4470
    nop

    .line 4471
    return-void

    .line 4468
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4469
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4470
    throw v2
.end method

.method public blacklist destroyInputConsumer(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4478
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4479
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4482
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4483
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4484
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4485
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x54

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4486
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4487
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 4490
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4492
    nop

    .line 4493
    return v2

    .line 4490
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4492
    throw v2
.end method

.method public blacklist detachWindowContextFromWindowContainer(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "clientToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5373
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5374
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5376
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5377
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5378
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5379
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5382
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5384
    nop

    .line 5385
    return-void

    .line 5382
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5384
    throw v2
.end method

.method public blacklist disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3401
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3402
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3404
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3405
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3406
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3407
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3408
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3409
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3412
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3414
    nop

    .line 3415
    return-void

    .line 3412
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3414
    throw v2
.end method

.method public greylist-max-o dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardDismissCallback;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3485
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3486
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3488
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3489
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3490
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 3491
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3492
    invoke-static {p2, v0, v2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_0

    .line 3495
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3497
    :goto_0
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x20

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3498
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3501
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3502
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3503
    nop

    .line 3504
    return-void

    .line 3501
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3502
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3503
    throw v2
.end method

.method public greylist-max-o enableScreenIfNeeded()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4276
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4277
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4279
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4280
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4281
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4284
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4286
    nop

    .line 4287
    return-void

    .line 4284
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4286
    throw v2
.end method

.method public greylist-max-o endProlongedAnimations()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3355
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3356
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3358
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3359
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3360
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3363
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3365
    nop

    .line 3366
    return-void

    .line 3363
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3365
    throw v2
.end method

.method public greylist-max-o exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V
    .locals 5
    .param p1, "callback"    # Landroid/view/IOnKeyguardExitResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3435
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3436
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3438
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3439
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3440
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3441
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3444
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3445
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3446
    nop

    .line 3447
    return-void

    .line 3444
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3445
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3446
    throw v2
.end method

.method public blacklist freezeDisplayRotation(II)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "rotation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3909
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3910
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3912
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3913
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3914
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3915
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x36

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3916
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3919
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3921
    nop

    .line 3922
    return-void

    .line 3919
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3921
    throw v2
.end method

.method public greylist-max-o freezeRotation(I)V
    .locals 5
    .param p1, "rotation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3845
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3846
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3848
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3849
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3850
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x33

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3851
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3854
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3855
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3856
    nop

    .line 3857
    return-void

    .line 3854
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3855
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3856
    throw v2
.end method

.method public greylist-max-o getAnimationScale(I)F
    .locals 5
    .param p1, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3569
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3570
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3573
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3574
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3575
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3576
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3577
    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 3580
    .local v2, "_result":F
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3582
    nop

    .line 3583
    return v2

    .line 3580
    .end local v2    # "_result":F
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3582
    throw v2
.end method

.method public greylist-max-o getAnimationScales()[F
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3587
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3588
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3591
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3592
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3593
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3594
    invoke-virtual {v1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 3597
    .local v2, "_result":[F
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3598
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3599
    nop

    .line 3600
    return-object v2

    .line 3597
    .end local v2    # "_result":[F
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3598
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3599
    throw v2
.end method

.method public greylist getBaseDisplayDensity(I)I
    .locals 5
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3090
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3091
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3094
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3095
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3096
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3097
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3098
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 3101
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3102
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3103
    nop

    .line 3104
    return v2

    .line 3101
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3102
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3103
    throw v2
.end method

.method public greylist-max-o getBaseDisplaySize(ILandroid/graphics/Point;)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "size"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3022
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3023
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3025
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3026
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3027
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3028
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3029
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 3030
    invoke-virtual {p2, v1}, Landroid/graphics/Point;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3034
    .end local v2    # "_status":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3035
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3036
    nop

    .line 3037
    return-void

    .line 3034
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3035
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3036
    throw v2
.end method

.method public greylist-max-o getCurrentAnimatorScale()F
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3635
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3636
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3639
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3640
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3641
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3642
    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 3645
    .local v2, "_result":F
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3646
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3647
    nop

    .line 3648
    return v2

    .line 3645
    .end local v2    # "_result":F
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3646
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3647
    throw v2
.end method

.method public greylist-max-o getCurrentImeTouchRegion()Landroid/graphics/Region;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4498
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4499
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4502
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4503
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x55

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4504
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4505
    sget-object v3, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Region;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 4508
    .local v2, "_result":Landroid/graphics/Region;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4509
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4510
    nop

    .line 4511
    return-object v2

    .line 4508
    .end local v2    # "_result":Landroid/graphics/Region;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4509
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4510
    throw v2
.end method

.method public greylist-max-o getDefaultDisplayRotation()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3757
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3758
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3761
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3762
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3763
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3764
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 3767
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3768
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3769
    nop

    .line 3770
    return v2

    .line 3767
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3768
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3769
    throw v2
.end method

.method public blacklist getDisplayImePolicy(I)I
    .locals 5
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4872
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4873
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4876
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4877
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4878
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x66

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4879
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4880
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 4883
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4884
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4885
    nop

    .line 4886
    return v2

    .line 4883
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4884
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4885
    throw v2
.end method

.method public greylist getDockedStackSide()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4339
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4340
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4343
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4344
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4345
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4346
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 4349
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4351
    nop

    .line 4352
    return v2

    .line 4349
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4351
    throw v2
.end method

.method public blacklist getImeDisplayId()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5455
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5456
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5459
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5460
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5461
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5462
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 5465
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5467
    nop

    .line 5468
    return v2

    .line 5465
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5467
    throw v2
.end method

.method public greylist getInitialDisplayDensity(I)I
    .locals 5
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3072
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3073
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3076
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3077
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3078
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3079
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3080
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 3083
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3084
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3085
    nop

    .line 3086
    return v2

    .line 3083
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3084
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3085
    throw v2
.end method

.method public greylist-max-o getInitialDisplaySize(ILandroid/graphics/Point;)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "size"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3004
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3005
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3007
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3008
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3009
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3010
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3011
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 3012
    invoke-virtual {p2, v1}, Landroid/graphics/Point;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3016
    .end local v2    # "_status":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3017
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3018
    nop

    .line 3019
    return-void

    .line 3016
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3017
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3018
    throw v2
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 2904
    const-string v0, "android.view.IWindowManager"

    return-object v0
.end method

.method public blacklist getNavBarPosition(I)I
    .locals 5
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4223
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4224
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4227
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4228
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4229
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4230
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4231
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 4234
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4236
    nop

    .line 4237
    return v2

    .line 4234
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4236
    throw v2
.end method

.method public blacklist getPossibleDisplayInfo(ILjava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/DisplayInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5077
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5078
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5081
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5082
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5083
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5084
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5085
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5086
    sget-object v3, Landroid/view/DisplayInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 5089
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/DisplayInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5090
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5091
    nop

    .line 5092
    return-object v2

    .line 5089
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/DisplayInfo;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5090
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5091
    throw v2
.end method

.method public blacklist getPreferredOptionsPanelGravity(I)I
    .locals 5
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3823
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3824
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3827
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3828
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3829
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3830
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3831
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 3834
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3835
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3836
    nop

    .line 3837
    return v2

    .line 3834
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3835
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3836
    throw v2
.end method

.method public blacklist getRemoveContentMode(I)I
    .locals 5
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4707
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4708
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4711
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4712
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4713
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x60

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4714
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4715
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 4718
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4719
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4720
    nop

    .line 4721
    return v2

    .line 4718
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4719
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4720
    throw v2
.end method

.method public greylist-max-o getStableInsets(ILandroid/graphics/Rect;)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "outInsets"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4414
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4415
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4417
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4418
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4419
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x51

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4420
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4421
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 4422
    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4426
    .end local v2    # "_status":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4428
    nop

    .line 4429
    return-void

    .line 4426
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4428
    throw v2
.end method

.method public blacklist getSupportedDisplayHashAlgorithms()[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5187
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5188
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5191
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5192
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x74

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5193
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5194
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 5197
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5199
    nop

    .line 5200
    return-object v2

    .line 5197
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5199
    throw v2
.end method

.method public greylist-max-o getWindowContentFrameStats(Landroid/os/IBinder;)Landroid/view/WindowContentFrameStats;
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4320
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4321
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4324
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4325
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4326
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4327
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4328
    sget-object v3, Landroid/view/WindowContentFrameStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowContentFrameStats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 4331
    .local v2, "_result":Landroid/view/WindowContentFrameStats;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4333
    nop

    .line 4334
    return-object v2

    .line 4331
    .end local v2    # "_result":Landroid/view/WindowContentFrameStats;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4333
    throw v2
.end method

.method public blacklist getWindowInsets(Landroid/view/WindowManager$LayoutParams;ILandroid/view/InsetsState;)Z
    .locals 5
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "displayId"    # I
    .param p3, "outInsetsState"    # Landroid/view/InsetsState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5046
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5047
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5050
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5051
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5052
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5053
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6e

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5054
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5055
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 5056
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 5057
    invoke-virtual {p3, v1}, Landroid/view/InsetsState;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5061
    .end local v2    # "_status":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5062
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5063
    nop

    .line 5064
    return v3

    .line 5061
    .end local v3    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5062
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5063
    throw v2
.end method

.method public blacklist getWindowingMode(I)I
    .locals 5
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4654
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4655
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4658
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4659
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4660
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4661
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4662
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 4665
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4666
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4667
    nop

    .line 4668
    return v2

    .line 4665
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4666
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4667
    throw v2
.end method

.method public greylist hasNavigationBar(I)Z
    .locals 5
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4204
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4205
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4208
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4209
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4210
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x46

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4211
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4212
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 4215
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4216
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4217
    nop

    .line 4218
    return v2

    .line 4215
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4216
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4217
    throw v2
.end method

.method public blacklist hideTransientBars(I)V
    .locals 5
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4140
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4142
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.view.IWindowManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4143
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4144
    iget-object v1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x42

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4147
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4148
    nop

    .line 4149
    return-void

    .line 4147
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4148
    throw v1
.end method

.method public blacklist holdLock(Landroid/os/IBinder;I)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "durationMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5164
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5165
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5167
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5168
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5169
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5170
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x73

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5171
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5174
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5176
    nop

    .line 5177
    return-void

    .line 5174
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5176
    throw v2
.end method

.method public blacklist isDisplayRotationFrozen(I)Z
    .locals 5
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3952
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3953
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3956
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3957
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3958
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x38

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3959
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3960
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 3963
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3965
    nop

    .line 3966
    return v2

    .line 3963
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3965
    throw v2
.end method

.method public greylist-max-o isKeyguardLocked()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3450
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3451
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3454
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3455
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3456
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3457
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 3460
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3461
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3462
    nop

    .line 3463
    return v2

    .line 3460
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3461
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3462
    throw v2
.end method

.method public blacklist isKeyguardSecure(I)Z
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3467
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3468
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3471
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3472
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3473
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3474
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3475
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 3478
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3479
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3480
    nop

    .line 3481
    return v2

    .line 3478
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3479
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3480
    throw v2
.end method

.method public blacklist isLayerTracing()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4937
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4938
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4941
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4942
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x69

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4943
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4944
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 4947
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4949
    nop

    .line 4950
    return v2

    .line 4947
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4949
    throw v2
.end method

.method public greylist-max-o isRotationFrozen()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3882
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3883
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3886
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3887
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x35

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3888
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3889
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 3892
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3893
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3894
    nop

    .line 3895
    return v2

    .line 3892
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3893
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3894
    throw v2
.end method

.method public greylist-max-o isSafeModeEnabled()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4258
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4259
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4262
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4263
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x49

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4264
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4265
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 4268
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4270
    nop

    .line 4271
    return v2

    .line 4268
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4270
    throw v2
.end method

.method public blacklist isTaskSnapshotSupported()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5433
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5434
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5437
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5438
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5439
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5440
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 5443
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5445
    nop

    .line 5446
    return v2

    .line 5443
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5445
    throw v2
.end method

.method public greylist-max-o isViewServerRunning()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2951
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2952
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2955
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2956
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2957
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2958
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 2961
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2962
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2963
    nop

    .line 2964
    return v2

    .line 2961
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2962
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2963
    throw v2
.end method

.method public blacklist isWindowToken(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3175
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3176
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3179
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3180
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3181
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3182
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3183
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 3186
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3188
    nop

    .line 3189
    return v2

    .line 3186
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3188
    throw v2
.end method

.method public greylist-max-o isWindowTraceEnabled()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4631
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4632
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4635
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4636
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4637
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4638
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 4641
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4642
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4643
    nop

    .line 4644
    return v2

    .line 4641
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4642
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4643
    throw v2
.end method

.method public greylist-max-o lockNow(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4242
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4243
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4245
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4246
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4247
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x48

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4248
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4251
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4252
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4253
    nop

    .line 4254
    return-void

    .line 4251
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4252
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4253
    throw v2
.end method

.method public blacklist mirrorDisplay(ILandroid/view/SurfaceControl;)Z
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "outSurfaceControl"    # Landroid/view/SurfaceControl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4980
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4981
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4984
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4985
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4986
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4987
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4988
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4989
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 4990
    invoke-virtual {p2, v1}, Landroid/view/SurfaceControl;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4994
    .end local v2    # "_status":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4995
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4996
    nop

    .line 4997
    return v3

    .line 4994
    .end local v3    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4995
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4996
    throw v2
.end method

.method public blacklist mirrorWallpaperSurface(I)Landroid/view/SurfaceControl;
    .locals 5
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4028
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4029
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4032
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4033
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4034
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4035
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4036
    sget-object v3, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 4039
    .local v2, "_result":Landroid/view/SurfaceControl;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4040
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4041
    nop

    .line 4042
    return-object v2

    .line 4039
    .end local v2    # "_result":Landroid/view/SurfaceControl;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4040
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4041
    throw v2
.end method

.method public blacklist openSession(Landroid/view/IWindowSessionCallback;)Landroid/view/IWindowSession;
    .locals 5
    .param p1, "callback"    # Landroid/view/IWindowSessionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2969
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2970
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2973
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2974
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2975
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2976
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2977
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSession;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 2980
    .local v2, "_result":Landroid/view/IWindowSession;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2981
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2982
    nop

    .line 2983
    return-object v2

    .line 2980
    .end local v2    # "_result":Landroid/view/IWindowSession;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2981
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2982
    throw v2
.end method

.method public blacklist overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;ZI)V
    .locals 5
    .param p1, "specsFuture"    # Landroid/view/IAppTransitionAnimationSpecsFuture;
    .param p2, "startedCallback"    # Landroid/os/IRemoteCallback;
    .param p3, "scaleUp"    # Z
    .param p4, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3317
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3318
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3320
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3321
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3322
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3323
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3324
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3325
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3326
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3329
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3331
    nop

    .line 3332
    return-void

    .line 3329
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3331
    throw v2
.end method

.method public blacklist overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;I)V
    .locals 5
    .param p1, "remoteAnimationAdapter"    # Landroid/view/RemoteAnimationAdapter;
    .param p2, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3335
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3336
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3338
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3339
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3340
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3341
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x17

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3342
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3345
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3347
    nop

    .line 3348
    return-void

    .line 3345
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3347
    throw v2
.end method

.method public blacklist reenableKeyguard(Landroid/os/IBinder;I)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3419
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3420
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3422
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3423
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3424
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3425
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3426
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3429
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3431
    nop

    .line 3432
    return-void

    .line 3429
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3431
    throw v2
.end method

.method public blacklist refreshScreenCaptureDisabled()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3711
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3712
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3714
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3715
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3716
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3719
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3721
    nop

    .line 3722
    return-void

    .line 3719
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3721
    throw v2
.end method

.method public blacklist registerCrossWindowBlurEnabledListener(Landroid/view/ICrossWindowBlurEnabledListener;)Z
    .locals 5
    .param p1, "listener"    # Landroid/view/ICrossWindowBlurEnabledListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5394
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5395
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5398
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5399
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5400
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5401
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5402
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 5405
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5407
    nop

    .line 5408
    return v2

    .line 5405
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5407
    throw v2
.end method

.method public blacklist registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/view/IDisplayFoldListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4516
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4517
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4519
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4520
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4521
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x56

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4522
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4525
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4526
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4527
    nop

    .line 4528
    return-void

    .line 4525
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4526
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4527
    throw v2
.end method

.method public blacklist registerDisplayWindowListener(Landroid/view/IDisplayWindowListener;)[I
    .locals 5
    .param p1, "listener"    # Landroid/view/IDisplayWindowListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4551
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4552
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4555
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4556
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4557
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x58

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4558
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4559
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 4562
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4563
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4564
    nop

    .line 4565
    return-object v2

    .line 4562
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4563
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4564
    throw v2
.end method

.method public blacklist registerPinnedTaskListener(ILandroid/view/IPinnedTaskListener;)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "listener"    # Landroid/view/IPinnedTaskListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4376
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4377
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4379
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4380
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4381
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4382
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4383
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4386
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4388
    nop

    .line 4389
    return-void

    .line 4386
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4388
    throw v2
.end method

.method public greylist-max-o registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    .locals 5
    .param p1, "shortcutCode"    # J
    .param p3, "keySubscriber"    # Lcom/android/internal/policy/IShortcutService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4437
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4438
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4440
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4441
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 4442
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4443
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x52

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4444
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4447
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4449
    nop

    .line 4450
    return-void

    .line 4447
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4449
    throw v2
.end method

.method public blacklist registerSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V
    .locals 5
    .param p1, "listener"    # Landroid/view/ISystemGestureExclusionListener;
    .param p2, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4087
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4088
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4090
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4091
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4092
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4093
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4094
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4097
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4098
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4099
    nop

    .line 4100
    return-void

    .line 4097
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4098
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4099
    throw v2
.end method

.method public blacklist registerTaskFpsCallback(ILandroid/window/ITaskFpsCallback;)V
    .locals 5
    .param p1, "taskId"    # I
    .param p2, "callback"    # Landroid/window/ITaskFpsCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5541
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5542
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5544
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5545
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5546
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5547
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x82

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5548
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5551
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5552
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5553
    nop

    .line 5554
    return-void

    .line 5551
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5552
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5553
    throw v2
.end method

.method public greylist-max-o registerWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)Z
    .locals 5
    .param p1, "listener"    # Landroid/view/IWallpaperVisibilityListener;
    .param p2, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4050
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4051
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4054
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4055
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4056
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4057
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4058
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4059
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 4062
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4063
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4064
    nop

    .line 4065
    return v2

    .line 4062
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4063
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4064
    throw v2
.end method

.method public blacklist removeKeyguardLockedStateListener(Lcom/android/internal/policy/IKeyguardLockedStateListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/android/internal/policy/IKeyguardLockedStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3522
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3523
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3525
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3526
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3527
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3528
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3531
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3533
    nop

    .line 3534
    return-void

    .line 3531
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3533
    throw v2
.end method

.method public greylist-max-o removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    .locals 5
    .param p1, "watcher"    # Landroid/view/IRotationWatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3801
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3802
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3804
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3805
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3806
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x31

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3807
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3810
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3811
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3812
    nop

    .line 3813
    return-void

    .line 3810
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3811
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3812
    throw v2
.end method

.method public greylist-max-o removeWindowToken(Landroid/os/IBinder;I)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3225
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3226
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3228
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3229
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3230
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3231
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3232
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3235
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3237
    nop

    .line 3238
    return-void

    .line 3235
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3237
    throw v2
.end method

.method public greylist-max-o requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    .locals 5
    .param p1, "receiver"    # Lcom/android/internal/os/IResultReceiver;
    .param p2, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4397
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4398
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4400
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4401
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4402
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4403
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x50

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4404
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4407
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4408
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4409
    nop

    .line 4410
    return-void

    .line 4407
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4408
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4409
    throw v2
.end method

.method public greylist-max-o requestAssistScreenshot(Landroid/app/IAssistDataReceiver;)Z
    .locals 5
    .param p1, "receiver"    # Landroid/app/IAssistDataReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4121
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4122
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4125
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4126
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4127
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x41

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4128
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4129
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 4132
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4134
    nop

    .line 4135
    return v2

    .line 4132
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4134
    throw v2
.end method

.method public blacklist requestScrollCapture(ILandroid/os/IBinder;ILandroid/view/IScrollCaptureResponseListener;)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "behindClient"    # Landroid/os/IBinder;
    .param p3, "taskId"    # I
    .param p4, "listener"    # Landroid/view/IScrollCaptureResponseListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5140
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5141
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5143
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5144
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5145
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5146
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5147
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5148
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x72

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5149
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5152
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5154
    nop

    .line 5155
    return-void

    .line 5152
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5154
    throw v2
.end method

.method public blacklist saveWindowTraceToFile()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4616
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4617
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4619
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4620
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4621
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4624
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4625
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4626
    nop

    .line 4627
    return-void

    .line 4624
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4625
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4626
    throw v2
.end method

.method public greylist-max-o screenshotWallpaper()Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4005
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4006
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4009
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4010
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4011
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4012
    sget-object v3, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 4015
    .local v2, "_result":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4016
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4017
    nop

    .line 4018
    return-object v2

    .line 4015
    .end local v2    # "_result":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4016
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4017
    throw v2
.end method

.method public greylist-max-o setAnimationScale(IF)V
    .locals 5
    .param p1, "which"    # I
    .param p2, "scale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3604
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3605
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3607
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3608
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3609
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3610
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3611
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3614
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3615
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3616
    nop

    .line 3617
    return-void

    .line 3614
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3615
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3616
    throw v2
.end method

.method public greylist-max-o setAnimationScales([F)V
    .locals 5
    .param p1, "scales"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3620
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3621
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3623
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3624
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 3625
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3626
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3629
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3630
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3631
    nop

    .line 3632
    return-void

    .line 3629
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3630
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3631
    throw v2
.end method

.method public blacklist setDisplayHashThrottlingEnabled(Z)V
    .locals 5
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5237
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5238
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5240
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5241
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5242
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x76

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5243
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5246
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5247
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5248
    nop

    .line 5249
    return-void

    .line 5246
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5247
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5248
    throw v2
.end method

.method public blacklist setDisplayImePolicy(II)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "imePolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4898
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4899
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4901
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4902
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4903
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4904
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x67

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4905
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4908
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4909
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4910
    nop

    .line 4911
    return-void

    .line 4908
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4909
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4910
    throw v2
.end method

.method public blacklist setDisplayWindowInsetsController(ILandroid/view/IDisplayWindowInsetsController;)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "displayWindowInsetsController"    # Landroid/view/IDisplayWindowInsetsController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5005
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5006
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5008
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5009
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5010
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5011
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5012
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5015
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5016
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5017
    nop

    .line 5018
    return-void

    .line 5015
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5016
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5017
    throw v2
.end method

.method public blacklist setDisplayWindowRotationController(Landroid/view/IDisplayWindowRotationController;)V
    .locals 5
    .param p1, "controller"    # Landroid/view/IDisplayWindowRotationController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3246
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3247
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3249
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3250
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3251
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3252
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3255
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3257
    nop

    .line 3258
    return-void

    .line 3255
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3257
    throw v2
.end method

.method public blacklist setDockedTaskDividerTouchRegion(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "touchableRegion"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4360
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4361
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4363
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4364
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4365
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4e

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4366
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4369
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4371
    nop

    .line 4372
    return-void

    .line 4369
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4371
    throw v2
.end method

.method public greylist-max-o setEventDispatching(Z)V
    .locals 5
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3159
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3160
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3162
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3163
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3164
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3165
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3168
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3170
    nop

    .line 3171
    return-void

    .line 3168
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3170
    throw v2
.end method

.method public blacklist setFixedToUserRotation(II)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "fixedToUserRotation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3971
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3972
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3974
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3975
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3976
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3977
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x39

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3978
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3981
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3982
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3983
    nop

    .line 3984
    return-void

    .line 3981
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3982
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3983
    throw v2
.end method

.method public greylist-max-o setForcedDisplayDensityForUser(III)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "density"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3108
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3109
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3111
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3112
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3113
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3114
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3115
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3116
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3119
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3121
    nop

    .line 3122
    return-void

    .line 3119
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3121
    throw v2
.end method

.method public greylist-max-o setForcedDisplayScalingMode(II)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3141
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3142
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3144
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3145
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3146
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3147
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3148
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3151
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3153
    nop

    .line 3154
    return-void

    .line 3151
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3153
    throw v2
.end method

.method public greylist-max-o setForcedDisplaySize(III)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3040
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3041
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3043
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3044
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3045
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3046
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3047
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3048
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3051
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3052
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3053
    nop

    .line 3054
    return-void

    .line 3051
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3052
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3053
    throw v2
.end method

.method public blacklist setIgnoreOrientationRequest(IZ)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "ignoreOrientationRequest"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3988
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3989
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3991
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3992
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3993
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3994
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3995
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3998
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3999
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4000
    nop

    .line 4001
    return-void

    .line 3998
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3999
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4000
    throw v2
.end method

.method public greylist-max-o setInTouchMode(Z)V
    .locals 5
    .param p1, "showFocus"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3653
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3654
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3656
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3657
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3658
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3659
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3662
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3663
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3664
    nop

    .line 3665
    return-void

    .line 3662
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3663
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3664
    throw v2
.end method

.method public blacklist setLayerTracing(Z)V
    .locals 5
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4955
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4956
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4958
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4959
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4960
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4961
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4964
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4965
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4966
    nop

    .line 4967
    return-void

    .line 4964
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4965
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4966
    throw v2
.end method

.method public blacklist setLayerTracingFlags(I)V
    .locals 5
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5116
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5117
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5119
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5120
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5121
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x71

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5122
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5125
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5127
    nop

    .line 5128
    return-void

    .line 5125
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5127
    throw v2
.end method

.method public greylist-max-o setNavBarVirtualKeyHapticFeedbackEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4184
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4185
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4187
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4188
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4189
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x45

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4190
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4193
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4195
    nop

    .line 4196
    return-void

    .line 4193
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4195
    throw v2
.end method

.method public blacklist setRecentsAppBehindSystemBars(Z)V
    .locals 5
    .param p1, "behindSystemBars"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5610
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5611
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5613
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5614
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5615
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x85

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5616
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5619
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5620
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5621
    nop

    .line 5622
    return-void

    .line 5619
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5620
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5621
    throw v2
.end method

.method public greylist-max-o setRecentsVisibility(Z)V
    .locals 5
    .param p1, "visible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4153
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4155
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.view.IWindowManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4156
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4157
    iget-object v1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x43

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4160
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4161
    nop

    .line 4162
    return-void

    .line 4160
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4161
    throw v1
.end method

.method public blacklist setRemoveContentMode(II)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4737
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4738
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4740
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4741
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4742
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4743
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x61

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4744
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4747
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4748
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4749
    nop

    .line 4750
    return-void

    .line 4747
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4748
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4749
    throw v2
.end method

.method public blacklist setShellRootAccessibilityWindow(IILandroid/view/IWindow;)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "shellRootLayer"    # I
    .param p3, "target"    # Landroid/view/IWindow;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3295
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3296
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3298
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3299
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3300
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3301
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3302
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3303
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3306
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3308
    nop

    .line 3309
    return-void

    .line 3306
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3308
    throw v2
.end method

.method public blacklist setShouldShowSystemDecors(IZ)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "shouldShow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4848
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4849
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4851
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4852
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4853
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4854
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x65

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4855
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4858
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4859
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4860
    nop

    .line 4861
    return-void

    .line 4858
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4859
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4860
    throw v2
.end method

.method public blacklist setShouldShowWithInsecureKeyguard(IZ)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "shouldShow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4796
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4797
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4799
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4800
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4801
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4802
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x63

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4803
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4806
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4807
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4808
    nop

    .line 4809
    return-void

    .line 4806
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4807
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4808
    throw v2
.end method

.method public greylist-max-o setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V
    .locals 5
    .param p1, "enabled"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3692
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3693
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3695
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3696
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3697
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3698
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3701
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3702
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3703
    nop

    .line 3704
    return-void

    .line 3701
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3702
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3703
    throw v2
.end method

.method public greylist-max-o setSwitchingUser(Z)V
    .locals 5
    .param p1, "switching"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3538
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3539
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3541
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3542
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3543
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3544
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3547
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3548
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3549
    nop

    .line 3550
    return-void

    .line 3547
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3548
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3549
    throw v2
.end method

.method public blacklist setTaskSnapshotEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5476
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5477
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5479
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5480
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5481
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5482
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5485
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5486
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5487
    nop

    .line 5488
    return-void

    .line 5485
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5486
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5487
    throw v2
.end method

.method public blacklist setTaskTransitionSpec(Landroid/view/TaskTransitionSpec;)V
    .locals 5
    .param p1, "spec"    # Landroid/view/TaskTransitionSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5496
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5497
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5499
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5500
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5501
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x80

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5502
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5505
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5506
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5507
    nop

    .line 5508
    return-void

    .line 5505
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5506
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5507
    throw v2
.end method

.method public blacklist setWindowingMode(II)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4678
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4679
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4681
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4682
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4683
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4684
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4685
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4688
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4689
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4690
    nop

    .line 4691
    return-void

    .line 4688
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4689
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4690
    throw v2
.end method

.method public blacklist shouldShowSystemDecors(I)Z
    .locals 5
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4821
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4822
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4825
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4826
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4827
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4828
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4829
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 4832
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4833
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4834
    nop

    .line 4835
    return v2

    .line 4832
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4833
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4834
    throw v2
.end method

.method public blacklist shouldShowWithInsecureKeyguard(I)Z
    .locals 5
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4769
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4770
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4773
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4774
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4775
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x62

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4776
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4777
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 4780
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4781
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4782
    nop

    .line 4783
    return v2

    .line 4780
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4781
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4782
    throw v2
.end method

.method public blacklist showGlobalActions()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5097
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5098
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5100
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5101
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x70

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5102
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5105
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5106
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5107
    nop

    .line 5108
    return-void

    .line 5105
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5106
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5107
    throw v2
.end method

.method public greylist-max-o showStrictModeViolation(Z)V
    .locals 5
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3673
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3674
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3676
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3677
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3678
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3679
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3682
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3683
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3684
    nop

    .line 3685
    return-void

    .line 3682
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3683
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3684
    throw v2
.end method

.method public blacklist snapshotTaskForRecents(I)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5588
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5589
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5592
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5593
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5594
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x84

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5595
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5596
    sget-object v3, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 5599
    .local v2, "_result":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5600
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5601
    nop

    .line 5602
    return-object v2

    .line 5599
    .end local v2    # "_result":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5600
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5601
    throw v2
.end method

.method public greylist-max-o startFreezingScreen(II)V
    .locals 5
    .param p1, "exitAnim"    # I
    .param p2, "enterAnim"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3369
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3370
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3372
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3373
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3374
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3375
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3376
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3379
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3380
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3381
    nop

    .line 3382
    return-void

    .line 3379
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3380
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3381
    throw v2
.end method

.method public greylist-max-o startViewServer(I)Z
    .locals 5
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2914
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2915
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2918
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2919
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2920
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2921
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2922
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 2925
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2926
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2927
    nop

    .line 2928
    return v2

    .line 2925
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2926
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2927
    throw v2
.end method

.method public greylist-max-o startWindowTrace()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4586
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4587
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4589
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4590
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4591
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4594
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4595
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4596
    nop

    .line 4597
    return-void

    .line 4594
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4595
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4596
    throw v2
.end method

.method public greylist-max-o stopFreezingScreen()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3385
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3386
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3388
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3389
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3390
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3393
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3395
    nop

    .line 3396
    return-void

    .line 3393
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3395
    throw v2
.end method

.method public greylist-max-o stopViewServer()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2933
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2934
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2937
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2938
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2939
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2940
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 2943
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2944
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2945
    nop

    .line 2946
    return v2

    .line 2943
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2944
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2945
    throw v2
.end method

.method public greylist-max-o stopWindowTrace()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4601
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4602
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4604
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4605
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4606
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4609
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4610
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4611
    nop

    .line 4612
    return-void

    .line 4609
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4610
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4611
    throw v2
.end method

.method public blacklist syncInputTransactions(Z)V
    .locals 5
    .param p1, "waitForAnimations"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4921
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4922
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4924
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4925
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4926
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x68

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4927
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4930
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4931
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4932
    nop

    .line 4933
    return-void

    .line 4930
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4931
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4932
    throw v2
.end method

.method public blacklist thawDisplayRotation(I)V
    .locals 5
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3931
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3932
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3934
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3935
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3936
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x37

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3937
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3940
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3941
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3942
    nop

    .line 3943
    return-void

    .line 3940
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3941
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3942
    throw v2
.end method

.method public greylist-max-o thawRotation()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3864
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3865
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3867
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3868
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x34

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3869
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3872
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3873
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3874
    nop

    .line 3875
    return-void

    .line 3872
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3873
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3874
    throw v2
.end method

.method public blacklist unregisterCrossWindowBlurEnabledListener(Landroid/view/ICrossWindowBlurEnabledListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/view/ICrossWindowBlurEnabledListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5418
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5419
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5421
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5422
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5423
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5424
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5427
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5428
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5429
    nop

    .line 5430
    return-void

    .line 5427
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5428
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5429
    throw v2
.end method

.method public blacklist unregisterDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/view/IDisplayFoldListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4532
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4533
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4535
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4536
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4537
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x57

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4538
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4541
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4542
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4543
    nop

    .line 4544
    return-void

    .line 4541
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4542
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4543
    throw v2
.end method

.method public blacklist unregisterDisplayWindowListener(Landroid/view/IDisplayWindowListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/view/IDisplayWindowListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4570
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4571
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4573
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4574
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4575
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x59

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4576
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4579
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4580
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4581
    nop

    .line 4582
    return-void

    .line 4579
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4580
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4581
    throw v2
.end method

.method public blacklist unregisterSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V
    .locals 5
    .param p1, "listener"    # Landroid/view/ISystemGestureExclusionListener;
    .param p2, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4104
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4105
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4107
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4108
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4109
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4110
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4111
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4114
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4115
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4116
    nop

    .line 4117
    return-void

    .line 4114
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4115
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4116
    throw v2
.end method

.method public blacklist unregisterTaskFpsCallback(Landroid/window/ITaskFpsCallback;)V
    .locals 5
    .param p1, "listener"    # Landroid/window/ITaskFpsCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5565
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5566
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5568
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5569
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5570
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x83

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5571
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5574
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5575
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5576
    nop

    .line 5577
    return-void

    .line 5574
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5575
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5576
    throw v2
.end method

.method public greylist-max-o unregisterWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)V
    .locals 5
    .param p1, "listener"    # Landroid/view/IWallpaperVisibilityListener;
    .param p2, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4070
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4071
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4073
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4074
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4075
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4076
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4077
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4080
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4081
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4082
    nop

    .line 4083
    return-void

    .line 4080
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4081
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4082
    throw v2
.end method

.method public blacklist updateDisplayWindowRequestedVisibilities(ILandroid/view/InsetsVisibilities;)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "vis"    # Landroid/view/InsetsVisibilities;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5025
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5026
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5028
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5029
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5030
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5031
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6d

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5032
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5035
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5036
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5037
    nop

    .line 5038
    return-void

    .line 5035
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5036
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5037
    throw v2
.end method

.method public greylist-max-o updateRotation(ZZ)V
    .locals 5
    .param p1, "alwaysSendConfiguration"    # Z
    .param p2, "forceRelayout"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3735
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3736
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3738
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3739
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3740
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3741
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3742
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3745
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3746
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3747
    nop

    .line 3748
    return-void

    .line 3745
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3746
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3747
    throw v2
.end method

.method public blacklist updateStaticPrivacyIndicatorBounds(I[Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "staticBounds"    # [Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4170
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4172
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.view.IWindowManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4173
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4174
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 4175
    iget-object v1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x44

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4179
    nop

    .line 4180
    return-void

    .line 4178
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4179
    throw v1
.end method

.method public blacklist useBLAST()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2987
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2988
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2991
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2992
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2993
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2994
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 2997
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2998
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2999
    nop

    .line 3000
    return v2

    .line 2997
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2998
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2999
    throw v2
.end method

.method public blacklist verifyDisplayHash(Landroid/view/displayhash/DisplayHash;)Landroid/view/displayhash/VerifiedDisplayHash;
    .locals 5
    .param p1, "displayHash"    # Landroid/view/displayhash/DisplayHash;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5212
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5213
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5216
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5217
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5218
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x75

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5219
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5220
    sget-object v3, Landroid/view/displayhash/VerifiedDisplayHash;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/displayhash/VerifiedDisplayHash;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 5223
    .local v2, "_result":Landroid/view/displayhash/VerifiedDisplayHash;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5225
    nop

    .line 5226
    return-object v2

    .line 5223
    .end local v2    # "_result":Landroid/view/displayhash/VerifiedDisplayHash;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5225
    throw v2
.end method

.method public greylist watchRotation(Landroid/view/IRotationWatcher;I)I
    .locals 5
    .param p1, "watcher"    # Landroid/view/IRotationWatcher;
    .param p2, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3778
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3779
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3782
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3783
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3784
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3785
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3786
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3787
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 3790
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3791
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3792
    nop

    .line 3793
    return v2

    .line 3790
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3791
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3792
    throw v2
.end method
