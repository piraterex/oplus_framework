.class Landroid/widget/MediaController$5;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/MediaController;


# direct methods
.method constructor blacklist <init>(Landroid/widget/MediaController;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/MediaController;

    .line 453
    iput-object p1, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 5

    .line 456
    iget-object v0, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    invoke-static {v0}, Landroid/widget/MediaController;->-$$Nest$msetProgress(Landroid/widget/MediaController;)I

    move-result v0

    .line 457
    .local v0, "pos":I
    iget-object v1, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    invoke-static {v1}, Landroid/widget/MediaController;->-$$Nest$fgetmDragging(Landroid/widget/MediaController;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    invoke-static {v1}, Landroid/widget/MediaController;->-$$Nest$fgetmShowing(Landroid/widget/MediaController;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    invoke-static {v1}, Landroid/widget/MediaController;->-$$Nest$fgetmPlayer(Landroid/widget/MediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 458
    iget-object v1, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    invoke-static {v1}, Landroid/widget/MediaController;->-$$Nest$fgetmShowProgress(Landroid/widget/MediaController;)Ljava/lang/Runnable;

    move-result-object v2

    rem-int/lit16 v3, v0, 0x3e8

    rsub-int v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/MediaController;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 460
    :cond_0
    return-void
.end method
