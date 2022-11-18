.class Landroid/media/SubtitleTrack$1;
.super Ljava/lang/Object;
.source "SubtitleTrack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/SubtitleTrack;->addCue(Landroid/media/SubtitleTrack$Cue;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/SubtitleTrack;

.field final synthetic blacklist val$thenMs:J

.field final synthetic blacklist val$track:Landroid/media/SubtitleTrack;


# direct methods
.method constructor blacklist <init>(Landroid/media/SubtitleTrack;Landroid/media/SubtitleTrack;J)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/SubtitleTrack;

    .line 350
    iput-object p1, p0, Landroid/media/SubtitleTrack$1;->this$0:Landroid/media/SubtitleTrack;

    iput-object p2, p0, Landroid/media/SubtitleTrack$1;->val$track:Landroid/media/SubtitleTrack;

    iput-wide p3, p0, Landroid/media/SubtitleTrack$1;->val$thenMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 5

    .line 356
    iget-object v0, p0, Landroid/media/SubtitleTrack$1;->val$track:Landroid/media/SubtitleTrack;

    monitor-enter v0

    .line 357
    :try_start_0
    iget-object v1, p0, Landroid/media/SubtitleTrack$1;->this$0:Landroid/media/SubtitleTrack;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/media/SubtitleTrack;->-$$Nest$fputmRunnable(Landroid/media/SubtitleTrack;Ljava/lang/Runnable;)V

    .line 358
    iget-object v1, p0, Landroid/media/SubtitleTrack$1;->this$0:Landroid/media/SubtitleTrack;

    const/4 v2, 0x1

    iget-wide v3, p0, Landroid/media/SubtitleTrack$1;->val$thenMs:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SubtitleTrack;->updateActiveCues(ZJ)V

    .line 359
    iget-object v1, p0, Landroid/media/SubtitleTrack$1;->this$0:Landroid/media/SubtitleTrack;

    iget-object v2, v1, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Landroid/media/SubtitleTrack;->updateView(Ljava/util/Vector;)V

    .line 360
    monitor-exit v0

    .line 361
    return-void

    .line 360
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
