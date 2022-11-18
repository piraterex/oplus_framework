.class final Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask;
.super Landroid/os/AsyncTask;
.source "TvInteractiveAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/TvInteractiveAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaViewCleanUpTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/view/View;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 1398
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1398
    check-cast p1, [Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask;->doInBackground([Landroid/view/View;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs blacklist doInBackground([Landroid/view/View;)Ljava/lang/Void;
    .locals 4
    .param p1, "views"    # [Landroid/view/View;

    .line 1401
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 1403
    .local v0, "mediaViewParent":Landroid/view/View;
    const-wide/16 v1, 0x1388

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1406
    nop

    .line 1407
    invoke-virtual {p0}, Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1408
    return-object v3

    .line 1410
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time out on releasing media view. Killing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1412
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1411
    const-string v2, "TvInteractiveAppService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 1415
    :cond_1
    return-object v3

    .line 1404
    :catch_0
    move-exception v1

    .line 1405
    .local v1, "e":Ljava/lang/InterruptedException;
    return-object v3
.end method
