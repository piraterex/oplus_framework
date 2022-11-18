.class Landroid/media/tv/TvInputService$RecordingSession$3;
.super Ljava/lang/Object;
.source "TvInputService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputService$RecordingSession;->notifyError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/TvInputService$RecordingSession;

.field final synthetic blacklist val$validError:I


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/TvInputService$RecordingSession;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/tv/TvInputService$RecordingSession;

    .line 1991
    iput-object p1, p0, Landroid/media/tv/TvInputService$RecordingSession$3;->this$0:Landroid/media/tv/TvInputService$RecordingSession;

    iput p2, p0, Landroid/media/tv/TvInputService$RecordingSession$3;->val$validError:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    .line 1997
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputService$RecordingSession$3;->this$0:Landroid/media/tv/TvInputService$RecordingSession;

    invoke-static {v0}, Landroid/media/tv/TvInputService$RecordingSession;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvInputService$RecordingSession;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1998
    iget-object v0, p0, Landroid/media/tv/TvInputService$RecordingSession$3;->this$0:Landroid/media/tv/TvInputService$RecordingSession;

    invoke-static {v0}, Landroid/media/tv/TvInputService$RecordingSession;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvInputService$RecordingSession;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v0

    iget v1, p0, Landroid/media/tv/TvInputService$RecordingSession$3;->val$validError:I

    invoke-interface {v0, v1}, Landroid/media/tv/ITvInputSessionCallback;->onError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2002
    :cond_0
    goto :goto_0

    .line 2000
    :catch_0
    move-exception v0

    .line 2001
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvInputService"

    const-string v2, "error in notifyError"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2003
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
