.class Landroid/media/tv/TvInputService$Session$18;
.super Ljava/lang/Object;
.source "TvInputService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputService$Session;->layoutSurface(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/TvInputService$Session;

.field final synthetic blacklist val$bottom:I

.field final synthetic blacklist val$left:I

.field final synthetic blacklist val$right:I

.field final synthetic blacklist val$top:I


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/TvInputService$Session;IIII)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/tv/TvInputService$Session;

    .line 1011
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session$18;->this$0:Landroid/media/tv/TvInputService$Session;

    iput p2, p0, Landroid/media/tv/TvInputService$Session$18;->val$left:I

    iput p3, p0, Landroid/media/tv/TvInputService$Session$18;->val$top:I

    iput p4, p0, Landroid/media/tv/TvInputService$Session$18;->val$right:I

    iput p5, p0, Landroid/media/tv/TvInputService$Session$18;->val$bottom:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 5

    .line 1018
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$18;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v0}, Landroid/media/tv/TvInputService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1019
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$18;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v0}, Landroid/media/tv/TvInputService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v0

    iget v1, p0, Landroid/media/tv/TvInputService$Session$18;->val$left:I

    iget v2, p0, Landroid/media/tv/TvInputService$Session$18;->val$top:I

    iget v3, p0, Landroid/media/tv/TvInputService$Session$18;->val$right:I

    iget v4, p0, Landroid/media/tv/TvInputService$Session$18;->val$bottom:I

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/media/tv/ITvInputSessionCallback;->onLayoutSurface(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1023
    :cond_0
    goto :goto_0

    .line 1021
    :catch_0
    move-exception v0

    .line 1022
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvInputService"

    const-string v2, "error in layoutSurface"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1024
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
