.class Landroid/widget/VideoView$7;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/VideoView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/VideoView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/VideoView;

    .line 675
    iput-object p1, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .line 679
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v0, p3}, Landroid/widget/VideoView;->-$$Nest$fputmSurfaceWidth(Landroid/widget/VideoView;I)V

    .line 680
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v0, p4}, Landroid/widget/VideoView;->-$$Nest$fputmSurfaceHeight(Landroid/widget/VideoView;I)V

    .line 681
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->-$$Nest$fgetmTargetState(Landroid/widget/VideoView;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 682
    .local v0, "isValidState":Z
    :goto_0
    iget-object v3, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v3}, Landroid/widget/VideoView;->-$$Nest$fgetmVideoWidth(Landroid/widget/VideoView;)I

    move-result v3

    if-ne v3, p3, :cond_1

    iget-object v3, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v3}, Landroid/widget/VideoView;->-$$Nest$fgetmVideoHeight(Landroid/widget/VideoView;)I

    move-result v3

    if-ne v3, p4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 683
    .local v1, "hasValidSize":Z
    :goto_1
    iget-object v2, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->-$$Nest$fgetmMediaPlayer(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 684
    iget-object v2, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->-$$Nest$fgetmSeekWhenPrepared(Landroid/widget/VideoView;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 685
    iget-object v2, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->-$$Nest$fgetmSeekWhenPrepared(Landroid/widget/VideoView;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->seekTo(I)V

    .line 687
    :cond_2
    iget-object v2, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->start()V

    .line 689
    :cond_3
    return-void
.end method

.method public whitelist surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 693
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v0, p1}, Landroid/widget/VideoView;->-$$Nest$fputmSurfaceHolder(Landroid/widget/VideoView;Landroid/view/SurfaceHolder;)V

    .line 694
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->-$$Nest$mopenVideo(Landroid/widget/VideoView;)V

    .line 695
    return-void
.end method

.method public whitelist surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 700
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/VideoView;->-$$Nest$fputmSurfaceHolder(Landroid/widget/VideoView;Landroid/view/SurfaceHolder;)V

    .line 701
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->-$$Nest$fgetmMediaController(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->-$$Nest$fgetmMediaController(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 702
    :cond_0
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/widget/VideoView;->-$$Nest$mrelease(Landroid/widget/VideoView;Z)V

    .line 703
    return-void
.end method
