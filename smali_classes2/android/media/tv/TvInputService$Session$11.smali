.class Landroid/media/tv/TvInputService$Session$11;
.super Ljava/lang/Object;
.source "TvInputService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputService$Session;->notifyTimeShiftStatusChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/TvInputService$Session;

.field final synthetic blacklist val$status:I


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/TvInputService$Session;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/tv/TvInputService$Session;

    .line 853
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session$11;->this$0:Landroid/media/tv/TvInputService$Session;

    iput p2, p0, Landroid/media/tv/TvInputService$Session$11;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    .line 857
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$11;->this$0:Landroid/media/tv/TvInputService$Session;

    iget v1, p0, Landroid/media/tv/TvInputService$Session$11;->val$status:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputService$Session;->timeShiftEnablePositionTracking(Z)V

    .line 861
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$11;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v0}, Landroid/media/tv/TvInputService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 862
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$11;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v0}, Landroid/media/tv/TvInputService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v0

    iget v1, p0, Landroid/media/tv/TvInputService$Session$11;->val$status:I

    invoke-interface {v0, v1}, Landroid/media/tv/ITvInputSessionCallback;->onTimeShiftStatusChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 866
    :cond_1
    goto :goto_1

    .line 864
    :catch_0
    move-exception v0

    .line 865
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvInputService"

    const-string v2, "error in notifyTimeShiftStatusChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 867
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method
