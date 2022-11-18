.class Landroid/media/PlayerBase$IPlayerWrapper;
.super Landroid/media/IPlayer$Stub;
.source "PlayerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/PlayerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IPlayerWrapper"
.end annotation


# instance fields
.field private final greylist-max-o mWeakPB:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/PlayerBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(Landroid/media/PlayerBase;)V
    .locals 1
    .param p1, "pb"    # Landroid/media/PlayerBase;

    .line 371
    invoke-direct {p0}, Landroid/media/IPlayer$Stub;-><init>()V

    .line 372
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/media/PlayerBase$IPlayerWrapper;->mWeakPB:Ljava/lang/ref/WeakReference;

    .line 373
    return-void
.end method


# virtual methods
.method public blacklist applyVolumeShaper(Landroid/media/VolumeShaperConfiguration;Landroid/media/VolumeShaperOperation;)V
    .locals 3
    .param p1, "configuration"    # Landroid/media/VolumeShaperConfiguration;
    .param p2, "operation"    # Landroid/media/VolumeShaperOperation;

    .line 427
    iget-object v0, p0, Landroid/media/PlayerBase$IPlayerWrapper;->mWeakPB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/PlayerBase;

    .line 428
    .local v0, "pb":Landroid/media/PlayerBase;
    if-eqz v0, :cond_0

    .line 429
    invoke-static {p1}, Landroid/media/VolumeShaper$Configuration;->fromParcelable(Landroid/media/VolumeShaperConfiguration;)Landroid/media/VolumeShaper$Configuration;

    move-result-object v1

    .line 430
    invoke-static {p2}, Landroid/media/VolumeShaper$Operation;->fromParcelable(Landroid/media/VolumeShaperOperation;)Landroid/media/VolumeShaper$Operation;

    move-result-object v2

    .line 429
    invoke-virtual {v0, v1, v2}, Landroid/media/PlayerBase;->playerApplyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I

    .line 432
    :cond_0
    return-void
.end method

.method public greylist-max-o pause()V
    .locals 1

    .line 385
    iget-object v0, p0, Landroid/media/PlayerBase$IPlayerWrapper;->mWeakPB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/PlayerBase;

    .line 386
    .local v0, "pb":Landroid/media/PlayerBase;
    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {v0}, Landroid/media/PlayerBase;->playerPause()V

    .line 389
    :cond_0
    return-void
.end method

.method public greylist-max-o setPan(F)V
    .locals 1
    .param p1, "pan"    # F

    .line 409
    iget-object v0, p0, Landroid/media/PlayerBase$IPlayerWrapper;->mWeakPB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/PlayerBase;

    .line 410
    .local v0, "pb":Landroid/media/PlayerBase;
    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {v0, p1}, Landroid/media/PlayerBase;->baseSetPan(F)V

    .line 413
    :cond_0
    return-void
.end method

.method public greylist-max-o setStartDelayMs(I)V
    .locals 1
    .param p1, "delayMs"    # I

    .line 417
    iget-object v0, p0, Landroid/media/PlayerBase$IPlayerWrapper;->mWeakPB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/PlayerBase;

    .line 418
    .local v0, "pb":Landroid/media/PlayerBase;
    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {v0, p1}, Landroid/media/PlayerBase;->baseSetStartDelayMs(I)V

    .line 421
    :cond_0
    return-void
.end method

.method public greylist-max-o setVolume(F)V
    .locals 1
    .param p1, "vol"    # F

    .line 401
    iget-object v0, p0, Landroid/media/PlayerBase$IPlayerWrapper;->mWeakPB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/PlayerBase;

    .line 402
    .local v0, "pb":Landroid/media/PlayerBase;
    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {v0, p1}, Landroid/media/PlayerBase;->setVolumeMultiplier(F)V

    .line 405
    :cond_0
    return-void
.end method

.method public greylist-max-o start()V
    .locals 1

    .line 377
    iget-object v0, p0, Landroid/media/PlayerBase$IPlayerWrapper;->mWeakPB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/PlayerBase;

    .line 378
    .local v0, "pb":Landroid/media/PlayerBase;
    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {v0}, Landroid/media/PlayerBase;->playerStart()V

    .line 381
    :cond_0
    return-void
.end method

.method public greylist-max-o stop()V
    .locals 1

    .line 393
    iget-object v0, p0, Landroid/media/PlayerBase$IPlayerWrapper;->mWeakPB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/PlayerBase;

    .line 394
    .local v0, "pb":Landroid/media/PlayerBase;
    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {v0}, Landroid/media/PlayerBase;->playerStop()V

    .line 397
    :cond_0
    return-void
.end method
