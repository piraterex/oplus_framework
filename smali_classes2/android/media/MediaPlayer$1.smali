.class Landroid/media/MediaPlayer$1;
.super Ljava/lang/Thread;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/MediaPlayer;

.field final synthetic blacklist val$delay:I


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaPlayer;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaPlayer;

    .line 1362
    iput-object p1, p0, Landroid/media/MediaPlayer$1;->this$0:Landroid/media/MediaPlayer;

    iput p2, p0, Landroid/media/MediaPlayer$1;->val$delay:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    .line 1365
    :try_start_0
    iget v0, p0, Landroid/media/MediaPlayer$1;->val$delay:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1368
    goto :goto_0

    .line 1366
    :catch_0
    move-exception v0

    .line 1367
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1369
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v0, p0, Landroid/media/MediaPlayer$1;->this$0:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->baseSetStartDelayMs(I)V

    .line 1371
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaPlayer$1;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->-$$Nest$mstartImpl(Landroid/media/MediaPlayer;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1376
    goto :goto_1

    .line 1372
    :catch_1
    move-exception v0

    .line 1377
    :goto_1
    return-void
.end method
