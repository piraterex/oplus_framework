.class Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$3;
.super Ljava/lang/Object;
.source "TvInteractiveAppManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postLayoutSurface(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

.field final synthetic blacklist val$bottom:I

.field final synthetic blacklist val$left:I

.field final synthetic blacklist val$right:I

.field final synthetic blacklist val$top:I


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;IIII)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 1604
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$3;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    iput p2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$3;->val$left:I

    iput p3, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$3;->val$top:I

    iput p4, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$3;->val$right:I

    iput p5, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$3;->val$bottom:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 7

    .line 1607
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$3;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;)Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;

    move-result-object v1

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$3;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->-$$Nest$fgetmSession(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;)Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    move-result-object v2

    iget v3, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$3;->val$left:I

    iget v4, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$3;->val$top:I

    iget v5, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$3;->val$right:I

    iget v6, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$3;->val$bottom:I

    invoke-virtual/range {v1 .. v6}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;->onLayoutSurface(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;IIII)V

    .line 1608
    return-void
.end method
