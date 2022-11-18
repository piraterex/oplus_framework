.class Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$1;
.super Ljava/lang/Object;
.source "TvInteractiveAppManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postSessionCreated(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

.field final synthetic blacklist val$session:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 1585
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    iput-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$1;->val$session:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    .line 1588
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;)Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$1;->val$session:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    invoke-virtual {v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;->onSessionCreated(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V

    .line 1589
    return-void
.end method
