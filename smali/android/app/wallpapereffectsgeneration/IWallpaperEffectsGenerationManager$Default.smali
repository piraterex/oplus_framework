.class public Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager$Default;
.super Ljava/lang/Object;
.source "IWallpaperEffectsGenerationManager.java"

# interfaces
.implements Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist generateCinematicEffect(Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;)V
    .locals 0
    .param p1, "request"    # Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;
    .param p2, "listener"    # Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public blacklist returnCinematicEffectResponse(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V
    .locals 0
    .param p1, "response"    # Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method
