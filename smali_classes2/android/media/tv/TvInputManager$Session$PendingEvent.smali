.class final Landroid/media/tv/TvInputManager$Session$PendingEvent;
.super Ljava/lang/Object;
.source "TvInputManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputManager$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PendingEvent"
.end annotation


# instance fields
.field public greylist-max-o mCallback:Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;

.field public greylist-max-o mEvent:Landroid/view/InputEvent;

.field public greylist-max-o mEventHandler:Landroid/os/Handler;

.field public greylist-max-o mEventToken:Ljava/lang/Object;

.field public greylist-max-o mHandled:Z

.field final synthetic blacklist this$0:Landroid/media/tv/TvInputManager$Session;


# direct methods
.method private constructor blacklist <init>(Landroid/media/tv/TvInputManager$Session;)V
    .locals 0

    .line 3247
    iput-object p1, p0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->this$0:Landroid/media/tv/TvInputManager$Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/tv/TvInputManager$Session;Landroid/media/tv/TvInputManager$Session$PendingEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/TvInputManager$Session$PendingEvent;-><init>(Landroid/media/tv/TvInputManager$Session;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o recycle()V
    .locals 1

    .line 3255
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mEvent:Landroid/view/InputEvent;

    .line 3256
    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mEventToken:Ljava/lang/Object;

    .line 3257
    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mCallback:Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;

    .line 3258
    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mEventHandler:Landroid/os/Handler;

    .line 3259
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mHandled:Z

    .line 3260
    return-void
.end method

.method public whitelist test-api run()V
    .locals 3

    .line 3264
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mCallback:Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mEventToken:Ljava/lang/Object;

    iget-boolean v2, p0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mHandled:Z

    invoke-interface {v0, v1, v2}, Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;->onFinishedInputEvent(Ljava/lang/Object;Z)V

    .line 3266
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mEventHandler:Landroid/os/Handler;

    monitor-enter v0

    .line 3267
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->this$0:Landroid/media/tv/TvInputManager$Session;

    invoke-static {v1, p0}, Landroid/media/tv/TvInputManager$Session;->-$$Nest$mrecyclePendingEventLocked(Landroid/media/tv/TvInputManager$Session;Landroid/media/tv/TvInputManager$Session$PendingEvent;)V

    .line 3268
    monitor-exit v0

    .line 3269
    return-void

    .line 3268
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
