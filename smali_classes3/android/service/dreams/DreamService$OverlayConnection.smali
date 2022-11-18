.class Landroid/service/dreams/DreamService$OverlayConnection;
.super Ljava/lang/Object;
.source "DreamService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/DreamService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OverlayConnection"
.end annotation


# instance fields
.field private blacklist mBound:Z

.field private blacklist mOverlay:Landroid/service/dreams/IDreamOverlay;

.field private final blacklist mRequests:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/util/function/Consumer<",
            "Landroid/service/dreams/IDreamOverlay;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>()V
    .locals 1

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/service/dreams/DreamService$OverlayConnection;->mRequests:Ljava/util/ArrayDeque;

    .line 260
    return-void
.end method

.method private blacklist evaluate()V
    .locals 2

    .line 295
    iget-object v0, p0, Landroid/service/dreams/DreamService$OverlayConnection;->mOverlay:Landroid/service/dreams/IDreamOverlay;

    if-nez v0, :cond_0

    .line 296
    return-void

    .line 301
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/service/dreams/DreamService$OverlayConnection;->mRequests:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 302
    iget-object v0, p0, Landroid/service/dreams/DreamService$OverlayConnection;->mRequests:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    .line 303
    .local v0, "request":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/service/dreams/IDreamOverlay;>;"
    iget-object v1, p0, Landroid/service/dreams/DreamService$OverlayConnection;->mOverlay:Landroid/service/dreams/IDreamOverlay;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 304
    .end local v0    # "request":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/service/dreams/IDreamOverlay;>;"
    goto :goto_0

    .line 305
    :cond_1
    return-void
.end method


# virtual methods
.method public blacklist bind(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "overlayService"    # Landroid/content/ComponentName;
    .param p3, "dreamService"    # Landroid/content/ComponentName;

    .line 264
    if-nez p2, :cond_0

    .line 265
    return-void

    .line 268
    :cond_0
    invoke-static {p1, p3}, Landroid/service/dreams/DreamService;->-$$Nest$smfetchServiceInfo(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 270
    .local v0, "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 271
    .local v1, "overlayIntent":Landroid/content/Intent;
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 272
    nop

    .line 273
    invoke-static {p1, v0}, Landroid/service/dreams/DreamService;->-$$Nest$smfetchShouldShowComplications(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)Z

    move-result v2

    .line 272
    const-string v3, "android.service.dreams.SHOW_COMPLICATIONS"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 275
    const v2, 0x4000001

    invoke-virtual {p1, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 277
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/service/dreams/DreamService$OverlayConnection;->mBound:Z

    .line 278
    return-void
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 310
    invoke-static {p2}, Landroid/service/dreams/IDreamOverlay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamOverlay;

    move-result-object v0

    iput-object v0, p0, Landroid/service/dreams/DreamService$OverlayConnection;->mOverlay:Landroid/service/dreams/IDreamOverlay;

    .line 311
    invoke-direct {p0}, Landroid/service/dreams/DreamService$OverlayConnection;->evaluate()V

    .line 312
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/dreams/DreamService$OverlayConnection;->mOverlay:Landroid/service/dreams/IDreamOverlay;

    .line 318
    return-void
.end method

.method public blacklist request(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/service/dreams/IDreamOverlay;",
            ">;)V"
        }
    .end annotation

    .line 290
    .local p1, "request":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/service/dreams/IDreamOverlay;>;"
    iget-object v0, p0, Landroid/service/dreams/DreamService$OverlayConnection;->mRequests:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 291
    invoke-direct {p0}, Landroid/service/dreams/DreamService$OverlayConnection;->evaluate()V

    .line 292
    return-void
.end method

.method public blacklist unbind(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 281
    iget-boolean v0, p0, Landroid/service/dreams/DreamService$OverlayConnection;->mBound:Z

    if-nez v0, :cond_0

    .line 282
    return-void

    .line 285
    :cond_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 286
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/dreams/DreamService$OverlayConnection;->mBound:Z

    .line 287
    return-void
.end method
