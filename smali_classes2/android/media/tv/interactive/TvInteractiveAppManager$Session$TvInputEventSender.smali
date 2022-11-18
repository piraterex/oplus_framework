.class final Landroid/media/tv/interactive/TvInteractiveAppManager$Session$TvInputEventSender;
.super Landroid/view/InputEventSender;
.source "TvInteractiveAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/TvInteractiveAppManager$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TvInputEventSender"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 1537
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$TvInputEventSender;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    .line 1538
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventSender;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 1539
    return-void
.end method


# virtual methods
.method public blacklist onInputEventFinished(IZ)V
    .locals 2
    .param p1, "seq"    # I
    .param p2, "handled"    # Z

    .line 1543
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$TvInputEventSender;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->finishedInputEvent(IZZ)V

    .line 1544
    return-void
.end method
