.class Landroid/media/tv/interactive/TvInteractiveAppService$Session$5;
.super Ljava/lang/Object;
.source "TvInteractiveAppService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/interactive/TvInteractiveAppService$Session;->sendPlaybackCommandRequest(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

.field final synthetic blacklist val$cmdType:Ljava/lang/String;

.field final synthetic blacklist val$parameters:Landroid/os/Bundle;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    .line 749
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$5;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iput-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$5;->val$cmdType:Ljava/lang/String;

    iput-object p3, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$5;->val$parameters:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    .line 758
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$5;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$5;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$5;->val$cmdType:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$5;->val$parameters:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;->onCommandRequest(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 763
    :cond_0
    goto :goto_0

    .line 761
    :catch_0
    move-exception v0

    .line 762
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvInteractiveAppService"

    const-string v2, "error in requestCommand"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 764
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
