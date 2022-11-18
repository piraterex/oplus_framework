.class final Landroid/view/Choreographer$FrameHandler;
.super Landroid/os/Handler;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Choreographer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FrameHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/Choreographer;


# direct methods
.method public constructor blacklist <init>(Landroid/view/Choreographer;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1278
    iput-object p1, p0, Landroid/view/Choreographer$FrameHandler;->this$0:Landroid/view/Choreographer;

    .line 1279
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1280
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 1284
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 1297
    :sswitch_0
    iget-object v0, p0, Landroid/view/Choreographer$FrameHandler;->this$0:Landroid/view/Choreographer;

    iget-object v0, v0, Landroid/view/Choreographer;->mChoreographerExt:Landroid/view/IChoreographerExt;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2, v3}, Landroid/view/IChoreographerExt;->doInitiativeFrame(JI)V

    .line 1298
    goto :goto_0

    .line 1300
    :sswitch_1
    iget-object v0, p0, Landroid/view/Choreographer$FrameHandler;->this$0:Landroid/view/Choreographer;

    iget-object v0, v0, Landroid/view/Choreographer;->mChoreographerExt:Landroid/view/IChoreographerExt;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/Choreographer$FrameData;

    invoke-interface {v0, v1}, Landroid/view/IChoreographerExt;->doAnimCallback(Landroid/view/Choreographer$FrameData;)V

    goto :goto_0

    .line 1292
    :sswitch_2
    iget-object v0, p0, Landroid/view/Choreographer$FrameHandler;->this$0:Landroid/view/Choreographer;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->doScheduleCallback(I)V

    .line 1293
    goto :goto_0

    .line 1289
    :sswitch_3
    iget-object v0, p0, Landroid/view/Choreographer$FrameHandler;->this$0:Landroid/view/Choreographer;

    invoke-virtual {v0}, Landroid/view/Choreographer;->doScheduleVsync()V

    .line 1290
    goto :goto_0

    .line 1286
    :sswitch_4
    iget-object v0, p0, Landroid/view/Choreographer$FrameHandler;->this$0:Landroid/view/Choreographer;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const/4 v3, 0x0

    new-instance v4, Landroid/view/DisplayEventReceiver$VsyncEventData;

    invoke-direct {v4}, Landroid/view/DisplayEventReceiver$VsyncEventData;-><init>()V

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/Choreographer;->doFrame(JILandroid/view/DisplayEventReceiver$VsyncEventData;)V

    .line 1287
    nop

    .line 1304
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x67 -> :sswitch_1
        0x68 -> :sswitch_0
    .end sparse-switch
.end method
