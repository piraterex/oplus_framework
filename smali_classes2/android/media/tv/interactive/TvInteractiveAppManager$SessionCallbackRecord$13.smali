.class Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$13;
.super Ljava/lang/Object;
.source "TvInteractiveAppManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

.field final synthetic blacklist val$algorithm:Ljava/lang/String;

.field final synthetic blacklist val$alias:Ljava/lang/String;

.field final synthetic blacklist val$data:[B

.field final synthetic blacklist val$id:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 1696
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$13;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    iput-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$13;->val$id:Ljava/lang/String;

    iput-object p3, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$13;->val$algorithm:Ljava/lang/String;

    iput-object p4, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$13;->val$alias:Ljava/lang/String;

    iput-object p5, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$13;->val$data:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 7

    .line 1699
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$13;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;)Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;

    move-result-object v1

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$13;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->-$$Nest$fgetmSession(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;)Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    move-result-object v2

    iget-object v3, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$13;->val$id:Ljava/lang/String;

    iget-object v4, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$13;->val$algorithm:Ljava/lang/String;

    iget-object v5, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$13;->val$alias:Ljava/lang/String;

    iget-object v6, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$13;->val$data:[B

    invoke-virtual/range {v1 .. v6}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;->onRequestSigning(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 1700
    return-void
.end method
