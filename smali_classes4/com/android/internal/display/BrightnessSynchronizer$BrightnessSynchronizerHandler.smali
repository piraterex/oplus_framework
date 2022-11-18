.class Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSynchronizerHandler;
.super Landroid/os/Handler;
.source "BrightnessSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/display/BrightnessSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BrightnessSynchronizerHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/display/BrightnessSynchronizer;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/display/BrightnessSynchronizer;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/display/BrightnessSynchronizer;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 469
    iput-object p1, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSynchronizerHandler;->this$0:Lcom/android/internal/display/BrightnessSynchronizer;

    .line 470
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 471
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 475
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 483
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 480
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSynchronizerHandler;->this$0:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$mrunUpdate(Lcom/android/internal/display/BrightnessSynchronizer;)V

    .line 481
    nop

    .line 486
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
