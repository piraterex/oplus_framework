.class Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord$1;
.super Ljava/lang/Object;
.source "TvInteractiveAppManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;->postInteractiveAppServiceAdded(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;

.field final synthetic blacklist val$iAppServiceId:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;

    .line 680
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;

    iput-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord$1;->val$iAppServiceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    .line 683
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;)Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord$1;->val$iAppServiceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallback;->onInteractiveAppServiceAdded(Ljava/lang/String;)V

    .line 684
    return-void
.end method
