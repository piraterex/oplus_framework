.class Landroid/media/tv/interactive/TvInteractiveAppService$Session$3;
.super Ljava/lang/Object;
.source "TvInteractiveAppService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/interactive/TvInteractiveAppService$Session;->requestBroadcastInfo(Landroid/media/tv/BroadcastInfoRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

.field final synthetic blacklist val$request:Landroid/media/tv/BroadcastInfoRequest;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Landroid/media/tv/BroadcastInfoRequest;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    .line 696
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$3;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iput-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$3;->val$request:Landroid/media/tv/BroadcastInfoRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    .line 705
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$3;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$3;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$3;->val$request:Landroid/media/tv/BroadcastInfoRequest;

    invoke-interface {v0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;->onBroadcastInfoRequest(Landroid/media/tv/BroadcastInfoRequest;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    :cond_0
    goto :goto_0

    .line 708
    :catch_0
    move-exception v0

    .line 709
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvInteractiveAppService"

    const-string v2, "error in requestBroadcastInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 711
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
