.class Landroid/media/tv/TvInputManager$SessionCallbackRecord$14;
.super Ljava/lang/Object;
.source "TvInputManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postTimeShiftStartPositionChanged(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

.field final synthetic blacklist val$timeMs:J


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;J)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    .line 871
    iput-object p1, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$14;->this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    iput-wide p2, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$14;->val$timeMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 4

    .line 874
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$14;->this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    invoke-static {v0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$SessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$14;->this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    invoke-static {v1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-$$Nest$fgetmSession(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v1

    iget-wide v2, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$14;->val$timeMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/tv/TvInputManager$SessionCallback;->onTimeShiftStartPositionChanged(Landroid/media/tv/TvInputManager$Session;J)V

    .line 875
    return-void
.end method
