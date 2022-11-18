.class Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IWallpaperEffectsGenerationManager.java"

# interfaces
.implements Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager$Stub;
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

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 125
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 128
    iget-object v0, p0, Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist generateCinematicEffect(Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;)V
    .locals 4
    .param p1, "request"    # Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;
    .param p2, "listener"    # Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 138
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.wallpapereffectsgeneration.IWallpaperEffectsGenerationManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 139
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 140
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 141
    iget-object v1, p0, Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 145
    nop

    .line 146
    return-void

    .line 144
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 145
    throw v1
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 132
    const-string v0, "android.app.wallpapereffectsgeneration.IWallpaperEffectsGenerationManager"

    return-object v0
.end method

.method public blacklist returnCinematicEffectResponse(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V
    .locals 5
    .param p1, "response"    # Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 151
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.wallpapereffectsgeneration.IWallpaperEffectsGenerationManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 152
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 153
    iget-object v1, p0, Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 157
    nop

    .line 158
    return-void

    .line 156
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 157
    throw v1
.end method
