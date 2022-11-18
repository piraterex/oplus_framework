.class final Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper$TvInteractiveAppEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "TvInteractiveAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TvInteractiveAppEventReceiver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 1585
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper$TvInteractiveAppEventReceiver;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;

    .line 1586
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 1587
    return-void
.end method


# virtual methods
.method public blacklist onInputEvent(Landroid/view/InputEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 1591
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper$TvInteractiveAppEventReceiver;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->-$$Nest$fgetmSessionImpl(Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;)Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1593
    invoke-virtual {p0, p1, v1}, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper$TvInteractiveAppEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 1594
    return-void

    .line 1597
    :cond_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper$TvInteractiveAppEventReceiver;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->-$$Nest$fgetmSessionImpl(Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;)Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)I

    move-result v0

    .line 1598
    .local v0, "handled":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 1599
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p0, p1, v1}, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper$TvInteractiveAppEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 1602
    :cond_2
    return-void
.end method
