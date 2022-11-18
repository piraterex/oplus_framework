.class Landroid/media/tv/TvInputService$RecordingSession$4;
.super Ljava/lang/Object;
.source "TvInputService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputService$RecordingSession;->notifySessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/TvInputService$RecordingSession;

.field final synthetic blacklist val$eventArgs:Landroid/os/Bundle;

.field final synthetic blacklist val$eventType:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/TvInputService$RecordingSession;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/tv/TvInputService$RecordingSession;

    .line 2017
    iput-object p1, p0, Landroid/media/tv/TvInputService$RecordingSession$4;->this$0:Landroid/media/tv/TvInputService$RecordingSession;

    iput-object p2, p0, Landroid/media/tv/TvInputService$RecordingSession$4;->val$eventType:Ljava/lang/String;

    iput-object p3, p0, Landroid/media/tv/TvInputService$RecordingSession$4;->val$eventArgs:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    .line 2023
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputService$RecordingSession$4;->this$0:Landroid/media/tv/TvInputService$RecordingSession;

    invoke-static {v0}, Landroid/media/tv/TvInputService$RecordingSession;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvInputService$RecordingSession;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2024
    iget-object v0, p0, Landroid/media/tv/TvInputService$RecordingSession$4;->this$0:Landroid/media/tv/TvInputService$RecordingSession;

    invoke-static {v0}, Landroid/media/tv/TvInputService$RecordingSession;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvInputService$RecordingSession;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvInputService$RecordingSession$4;->val$eventType:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/tv/TvInputService$RecordingSession$4;->val$eventArgs:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Landroid/media/tv/ITvInputSessionCallback;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2028
    :cond_0
    goto :goto_0

    .line 2026
    :catch_0
    move-exception v0

    .line 2027
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error in sending event (event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/TvInputService$RecordingSession$4;->val$eventType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TvInputService"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2029
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
