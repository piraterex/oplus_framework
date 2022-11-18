.class Landroid/media/tv/interactive/TvInteractiveAppService$Session$6;
.super Ljava/lang/Object;
.source "TvInteractiveAppService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/interactive/TvInteractiveAppService$Session;->setVideoBounds(Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

.field final synthetic blacklist val$rect:Landroid/graphics/Rect;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    .line 773
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$6;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iput-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$6;->val$rect:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    .line 781
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$6;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$6;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$6;->val$rect:Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;->onSetVideoBounds(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 786
    :cond_0
    goto :goto_0

    .line 784
    :catch_0
    move-exception v0

    .line 785
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvInteractiveAppService"

    const-string v2, "error in setVideoBounds"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 787
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
