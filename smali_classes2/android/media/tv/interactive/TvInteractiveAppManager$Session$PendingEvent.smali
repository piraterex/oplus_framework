.class final Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;
.super Ljava/lang/Object;
.source "TvInteractiveAppManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/TvInteractiveAppManager$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PendingEvent"
.end annotation


# instance fields
.field public blacklist mCallback:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$FinishedInputEventCallback;

.field public blacklist mEvent:Landroid/view/InputEvent;

.field public blacklist mEventHandler:Landroid/os/Handler;

.field public blacklist mEventToken:Ljava/lang/Object;

.field public blacklist mHandled:Z

.field final synthetic blacklist this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;


# direct methods
.method private constructor blacklist <init>(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .locals 0

    .line 1547
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V

    return-void
.end method


# virtual methods
.method public blacklist recycle()V
    .locals 1

    .line 1555
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;->mEvent:Landroid/view/InputEvent;

    .line 1556
    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;->mEventToken:Ljava/lang/Object;

    .line 1557
    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;->mCallback:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$FinishedInputEventCallback;

    .line 1558
    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;->mEventHandler:Landroid/os/Handler;

    .line 1559
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;->mHandled:Z

    .line 1560
    return-void
.end method

.method public whitelist test-api run()V
    .locals 3

    .line 1564
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;->mCallback:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$FinishedInputEventCallback;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;->mEventToken:Ljava/lang/Object;

    iget-boolean v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;->mHandled:Z

    invoke-interface {v0, v1, v2}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$FinishedInputEventCallback;->onFinishedInputEvent(Ljava/lang/Object;Z)V

    .line 1566
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;->mEventHandler:Landroid/os/Handler;

    monitor-enter v0

    .line 1567
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    invoke-static {v1, p0}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->-$$Nest$mrecyclePendingEventLocked(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;)V

    .line 1568
    monitor-exit v0

    .line 1569
    return-void

    .line 1568
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
