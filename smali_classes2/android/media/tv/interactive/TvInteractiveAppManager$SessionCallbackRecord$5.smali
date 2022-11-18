.class Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$5;
.super Ljava/lang/Object;
.source "TvInteractiveAppManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postRemoveBroadcastInfo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

.field final synthetic blacklist val$requestId:I


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 1622
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$5;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    iput p2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$5;->val$requestId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    .line 1625
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$5;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->-$$Nest$fgetmSession(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;)Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->getInputSession()Landroid/media/tv/TvInputManager$Session;

    move-result-object v0

    iget v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$5;->val$requestId:I

    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputManager$Session;->removeBroadcastInfo(I)V

    .line 1626
    return-void
.end method
