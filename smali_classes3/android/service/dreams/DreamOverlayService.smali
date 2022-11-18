.class public abstract Landroid/service/dreams/DreamOverlayService;
.super Landroid/app/Service;
.source "DreamOverlayService.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "DreamOverlayService"


# instance fields
.field private blacklist mDreamOverlay:Landroid/service/dreams/IDreamOverlay;

.field blacklist mDreamOverlayCallback:Landroid/service/dreams/IDreamOverlayCallback;

.field private blacklist mShowComplications:Z


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 40
    new-instance v0, Landroid/service/dreams/DreamOverlayService$1;

    invoke-direct {v0, p0}, Landroid/service/dreams/DreamOverlayService$1;-><init>(Landroid/service/dreams/DreamOverlayService;)V

    iput-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mDreamOverlay:Landroid/service/dreams/IDreamOverlay;

    .line 52
    return-void
.end method


# virtual methods
.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 57
    const-string v0, "android.service.dreams.SHOW_COMPLICATIONS"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/dreams/DreamOverlayService;->mShowComplications:Z

    .line 59
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mDreamOverlay:Landroid/service/dreams/IDreamOverlay;

    invoke-interface {v0}, Landroid/service/dreams/IDreamOverlay;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public abstract blacklist onStartDream(Landroid/view/WindowManager$LayoutParams;)V
.end method

.method public final blacklist requestExit()V
    .locals 3

    .line 75
    :try_start_0
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mDreamOverlayCallback:Landroid/service/dreams/IDreamOverlayCallback;

    invoke-interface {v0}, Landroid/service/dreams/IDreamOverlayCallback;->onExitRequested()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not request exit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DreamOverlayService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public final blacklist shouldShowComplications()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Landroid/service/dreams/DreamOverlayService;->mShowComplications:Z

    return v0
.end method
