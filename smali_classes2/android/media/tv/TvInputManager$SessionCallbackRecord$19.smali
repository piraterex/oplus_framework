.class Landroid/media/tv/TvInputManager$SessionCallbackRecord$19;
.super Ljava/lang/Object;
.source "TvInputManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postRecordingStopped(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

.field final synthetic blacklist val$recordedProgramUri:Landroid/net/Uri;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    .line 925
    iput-object p1, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$19;->this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    iput-object p2, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$19;->val$recordedProgramUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    .line 928
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$19;->this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    invoke-static {v0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$SessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$19;->this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    invoke-static {v1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-$$Nest$fgetmSession(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$19;->val$recordedProgramUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/tv/TvInputManager$SessionCallback;->onRecordingStopped(Landroid/media/tv/TvInputManager$Session;Landroid/net/Uri;)V

    .line 929
    return-void
.end method
