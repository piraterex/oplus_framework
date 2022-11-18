.class final Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "ITvInputSessionWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputSessionWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TvInputEventReceiver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/ITvInputSessionWrapper;


# direct methods
.method public constructor blacklist <init>(Landroid/media/tv/ITvInputSessionWrapper;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 428
    iput-object p1, p0, Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;->this$0:Landroid/media/tv/ITvInputSessionWrapper;

    .line 429
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 430
    return-void
.end method


# virtual methods
.method public blacklist onInputEvent(Landroid/view/InputEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 434
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;->this$0:Landroid/media/tv/ITvInputSessionWrapper;

    invoke-static {v0}, Landroid/media/tv/ITvInputSessionWrapper;->-$$Nest$fgetmTvInputSessionImpl(Landroid/media/tv/ITvInputSessionWrapper;)Landroid/media/tv/TvInputService$Session;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 436
    invoke-virtual {p0, p1, v1}, Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 437
    return-void

    .line 440
    :cond_0
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;->this$0:Landroid/media/tv/ITvInputSessionWrapper;

    invoke-static {v0}, Landroid/media/tv/ITvInputSessionWrapper;->-$$Nest$fgetmTvInputSessionImpl(Landroid/media/tv/ITvInputSessionWrapper;)Landroid/media/tv/TvInputService$Session;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Landroid/media/tv/TvInputService$Session;->dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)I

    move-result v0

    .line 441
    .local v0, "handled":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 442
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p0, p1, v1}, Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 444
    :cond_2
    return-void
.end method
