.class Landroid/media/tv/TvInputManager$TvInputCallbackRecord$6;
.super Ljava/lang/Object;
.source "TvInputManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->postCurrentTunedInfosUpdated(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

.field final synthetic blacklist val$currentTunedInfos:Ljava/util/List;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/TvInputManager$TvInputCallbackRecord;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    .line 1105
    iput-object p1, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$6;->this$0:Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    iput-object p2, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$6;->val$currentTunedInfos:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    .line 1108
    iget-object v0, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$6;->this$0:Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    invoke-static {v0}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->-$$Nest$fgetmCallback(Landroid/media/tv/TvInputManager$TvInputCallbackRecord;)Landroid/media/tv/TvInputManager$TvInputCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$6;->val$currentTunedInfos:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputManager$TvInputCallback;->onCurrentTunedInfosUpdated(Ljava/util/List;)V

    .line 1109
    return-void
.end method
