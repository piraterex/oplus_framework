.class Landroid/media/tv/TvInputService$Session$4;
.super Ljava/lang/Object;
.source "TvInputService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputService$Session;->notifyTuned(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/TvInputService$Session;

.field final synthetic blacklist val$channelUri:Landroid/net/Uri;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/TvInputService$Session;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/tv/TvInputService$Session;

    .line 601
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session$4;->this$0:Landroid/media/tv/TvInputService$Session;

    iput-object p2, p0, Landroid/media/tv/TvInputService$Session$4;->val$channelUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    .line 607
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$4;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v0}, Landroid/media/tv/TvInputService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$4;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v0}, Landroid/media/tv/TvInputService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvInputService$Session$4;->val$channelUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Landroid/media/tv/ITvInputSessionCallback;->onTuned(Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    :cond_0
    goto :goto_0

    .line 610
    :catch_0
    move-exception v0

    .line 611
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvInputService"

    const-string v2, "error in notifyTuned"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 613
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
