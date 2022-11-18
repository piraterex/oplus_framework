.class Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord$4;
.super Ljava/lang/Object;
.source "TvInteractiveAppManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;->postTvInteractiveAppServiceInfoUpdated(Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;

.field final synthetic blacklist val$iAppInfo:Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;

    .line 708
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord$4;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;

    iput-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord$4;->val$iAppInfo:Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    .line 711
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord$4;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;)Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord$4;->val$iAppInfo:Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;

    invoke-virtual {v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallback;->onTvInteractiveAppServiceInfoUpdated(Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;)V

    .line 712
    return-void
.end method
