.class Landroid/media/tv/TvInputManager$SessionCallbackRecord$4;
.super Ljava/lang/Object;
.source "TvInputManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postTracksChanged(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

.field final synthetic blacklist val$tracks:Ljava/util/List;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    .line 756
    iput-object p1, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$4;->this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    iput-object p2, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$4;->val$tracks:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    .line 759
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$4;->this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    invoke-static {v0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$SessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$4;->this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    invoke-static {v1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-$$Nest$fgetmSession(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$4;->val$tracks:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Landroid/media/tv/TvInputManager$SessionCallback;->onTracksChanged(Landroid/media/tv/TvInputManager$Session;Ljava/util/List;)V

    .line 760
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$4;->this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    invoke-static {v0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-$$Nest$fgetmSession(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v0

    invoke-static {v0}, Landroid/media/tv/TvInputManager$Session;->-$$Nest$fgetmIAppNotificationEnabled(Landroid/media/tv/TvInputManager$Session;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$4;->this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    invoke-static {v0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-$$Nest$fgetmSession(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v0

    .line 761
    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$Session;->getInteractiveAppSession()Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$4;->this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    invoke-static {v0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-$$Nest$fgetmSession(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$Session;->getInteractiveAppSession()Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$4;->val$tracks:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->notifyTracksChanged(Ljava/util/List;)V

    .line 764
    :cond_0
    return-void
.end method
