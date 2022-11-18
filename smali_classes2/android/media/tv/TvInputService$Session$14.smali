.class Landroid/media/tv/TvInputService$Session$14;
.super Ljava/lang/Object;
.source "TvInputService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputService$Session;->notifyTimeShiftStartPositionChanged(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/TvInputService$Session;

.field final synthetic blacklist val$timeMs:J


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/TvInputService$Session;J)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/tv/TvInputService$Session;

    .line 917
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session$14;->this$0:Landroid/media/tv/TvInputService$Session;

    iput-wide p2, p0, Landroid/media/tv/TvInputService$Session$14;->val$timeMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    .line 923
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$14;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v0}, Landroid/media/tv/TvInputService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 924
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$14;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v0}, Landroid/media/tv/TvInputService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/tv/TvInputService$Session$14;->val$timeMs:J

    invoke-interface {v0, v1, v2}, Landroid/media/tv/ITvInputSessionCallback;->onTimeShiftStartPositionChanged(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 928
    :cond_0
    goto :goto_0

    .line 926
    :catch_0
    move-exception v0

    .line 927
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvInputService"

    const-string v2, "error in notifyTimeShiftStartPositionChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 929
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
