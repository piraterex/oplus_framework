.class Landroid/media/tv/TvInputManager$SessionCallbackRecord$10;
.super Ljava/lang/Object;
.source "TvInputManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postContentBlocked(Landroid/media/tv/TvContentRating;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

.field final synthetic blacklist val$rating:Landroid/media/tv/TvContentRating;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;Landroid/media/tv/TvContentRating;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    .line 830
    iput-object p1, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$10;->this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    iput-object p2, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$10;->val$rating:Landroid/media/tv/TvContentRating;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    .line 833
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$10;->this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    invoke-static {v0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$SessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$10;->this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    invoke-static {v1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-$$Nest$fgetmSession(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$10;->val$rating:Landroid/media/tv/TvContentRating;

    invoke-virtual {v0, v1, v2}, Landroid/media/tv/TvInputManager$SessionCallback;->onContentBlocked(Landroid/media/tv/TvInputManager$Session;Landroid/media/tv/TvContentRating;)V

    .line 834
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$10;->this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    invoke-static {v0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-$$Nest$fgetmSession(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v0

    invoke-static {v0}, Landroid/media/tv/TvInputManager$Session;->-$$Nest$fgetmIAppNotificationEnabled(Landroid/media/tv/TvInputManager$Session;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$10;->this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    invoke-static {v0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-$$Nest$fgetmSession(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v0

    .line 835
    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$Session;->getInteractiveAppSession()Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$10;->this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    invoke-static {v0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-$$Nest$fgetmSession(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$Session;->getInteractiveAppSession()Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$10;->val$rating:Landroid/media/tv/TvContentRating;

    invoke-virtual {v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->notifyContentBlocked(Landroid/media/tv/TvContentRating;)V

    .line 838
    :cond_0
    return-void
.end method
