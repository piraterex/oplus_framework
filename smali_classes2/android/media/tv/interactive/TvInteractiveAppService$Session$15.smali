.class Landroid/media/tv/interactive/TvInteractiveAppService$Session$15;
.super Ljava/lang/Object;
.source "TvInteractiveAppService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyBiInteractiveAppCreated(Landroid/net/Uri;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

.field final synthetic blacklist val$biIAppId:Ljava/lang/String;

.field final synthetic blacklist val$biIAppUri:Landroid/net/Uri;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    .line 1160
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$15;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iput-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$15;->val$biIAppId:Ljava/lang/String;

    iput-object p3, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$15;->val$biIAppUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    .line 1169
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$15;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1170
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$15;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$15;->val$biIAppUri:Landroid/net/Uri;

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$15;->val$biIAppId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;->onBiInteractiveAppCreated(Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1174
    :cond_0
    goto :goto_0

    .line 1172
    :catch_0
    move-exception v0

    .line 1173
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvInteractiveAppService"

    const-string v2, "error in notifyBiInteractiveAppCreated"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1175
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
