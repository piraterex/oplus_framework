.class abstract Landroid/view/ViewRootImpl$InputStage;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "InputStage"
.end annotation


# static fields
.field protected static final greylist-max-o FINISH_HANDLED:I = 0x1

.field protected static final greylist-max-o FINISH_NOT_HANDLED:I = 0x2

.field protected static final greylist-max-o FORWARD:I


# instance fields
.field private final greylist-max-o mNext:Landroid/view/ViewRootImpl$InputStage;

.field private blacklist mTracePrefix:Ljava/lang/String;

.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;
    .param p2, "next"    # Landroid/view/ViewRootImpl$InputStage;

    .line 6092
    iput-object p1, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6093
    iput-object p2, p0, Landroid/view/ViewRootImpl$InputStage;->mNext:Landroid/view/ViewRootImpl$InputStage;

    .line 6094
    return-void
.end method

.method private blacklist traceEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;J)V
    .locals 2
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;
    .param p2, "traceTag"    # J

    .line 6246
    invoke-static {p2, p3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6247
    return-void

    .line 6250
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->mTracePrefix:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 6251
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->mTracePrefix:Ljava/lang/String;

    .line 6253
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/view/ViewRootImpl$InputStage;->mTracePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 6254
    invoke-virtual {v1}, Landroid/view/InputEvent;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6253
    invoke-static {p2, p3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6255
    return-void
.end method


# virtual methods
.method protected greylist-max-o apply(Landroid/view/ViewRootImpl$QueuedInputEvent;I)V
    .locals 3
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;
    .param p2, "result"    # I

    .line 6138
    if-nez p2, :cond_0

    .line 6139
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    goto :goto_0

    .line 6140
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 6141
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewRootImpl$InputStage;->finish(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    goto :goto_0

    .line 6142
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 6143
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewRootImpl$InputStage;->finish(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    .line 6147
    :goto_0
    return-void

    .line 6145
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final greylist-max-o deliver(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 3
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 6100
    iget v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 6101
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    goto :goto_0

    .line 6102
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->shouldDropInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6103
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewRootImpl$InputStage;->finish(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    goto :goto_0

    .line 6105
    :cond_1
    const-wide/16 v0, 0x8

    invoke-direct {p0, p1, v0, v1}, Landroid/view/ViewRootImpl$InputStage;->traceEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;J)V

    .line 6108
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6110
    .local v2, "result":I
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 6111
    nop

    .line 6112
    invoke-virtual {p0, p1, v2}, Landroid/view/ViewRootImpl$InputStage;->apply(Landroid/view/ViewRootImpl$QueuedInputEvent;I)V

    .line 6114
    .end local v2    # "result":I
    :goto_0
    return-void

    .line 6110
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 6111
    throw v2
.end method

.method greylist-max-o dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 6232
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->mNext:Landroid/view/ViewRootImpl$InputStage;

    if-eqz v0, :cond_0

    .line 6233
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl$InputStage;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 6235
    :cond_0
    return-void
.end method

.method protected greylist-max-o finish(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V
    .locals 1
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;
    .param p2, "handled"    # Z

    .line 6120
    iget v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    .line 6121
    if-eqz p2, :cond_0

    .line 6122
    iget v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    .line 6124
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 6125
    return-void
.end method

.method protected greylist-max-o forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 0
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 6131
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->onDeliverToNext(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 6132
    return-void
.end method

.method greylist-max-o isBack(Landroid/view/InputEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 6238
    instance-of v0, p1, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 6239
    move-object v0, p1

    check-cast v0, Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 6241
    :cond_1
    return v1
.end method

.method protected greylist-max-o onDeliverToNext(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 7
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 6163
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmViewRootImplExt(Landroid/view/ViewRootImpl;)Landroid/view/IViewRootImplExt;

    move-result-object v1

    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    iget-object v4, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    .line 6164
    sget-boolean v0, Landroid/view/ViewRootImpl;->DEBUG_INPUT_STAGES:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmViewRootImplExt(Landroid/view/ViewRootImpl;)Landroid/view/IViewRootImplExt;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IViewRootImplExt;->isLevelDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v6, v0

    .line 6163
    invoke-interface/range {v1 .. v6}, Landroid/view/IViewRootImplExt;->debugInputStageDeliverd(Ljava/lang/String;ILandroid/view/InputEvent;Ljava/lang/String;Ljava/lang/String;)V

    .line 6166
    sget-boolean v0, Landroid/view/ViewRootImpl;->DEBUG_INPUT_STAGES:Z

    if-eqz v0, :cond_2

    .line 6167
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Done with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6169
    :cond_2
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->mNext:Landroid/view/ViewRootImpl$InputStage;

    if-eqz v0, :cond_3

    .line 6170
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InputStage;->deliver(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    goto :goto_2

    .line 6172
    :cond_3
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->-$$Nest$mfinishInputEvent(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 6174
    :goto_2
    return-void
.end method

.method protected greylist-max-o onDetachedFromWindow()V
    .locals 1

    .line 6187
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->mNext:Landroid/view/ViewRootImpl$InputStage;

    if-eqz v0, :cond_0

    .line 6188
    invoke-virtual {v0}, Landroid/view/ViewRootImpl$InputStage;->onDetachedFromWindow()V

    .line 6190
    :cond_0
    return-void
.end method

.method protected greylist-max-o onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 1
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 6154
    const/4 v0, 0x0

    return v0
.end method

.method protected greylist-max-o onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .line 6179
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmViewRootImplExt(Landroid/view/ViewRootImpl;)Landroid/view/IViewRootImplExt;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v2, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmLastReportedMergedConfiguration(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Landroid/view/IViewRootImplExt;->onWindowFocusChangedByRoot(ZLandroid/view/View;Landroid/util/MergedConfiguration;)V

    .line 6181
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->mNext:Landroid/view/ViewRootImpl$InputStage;

    if-eqz v0, :cond_0

    .line 6182
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InputStage;->onWindowFocusChanged(Z)V

    .line 6184
    :cond_0
    return-void
.end method

.method protected greylist-max-o shouldDropInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)Z
    .locals 6
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 6193
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 6200
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    const/4 v3, 0x2

    .line 6201
    invoke-virtual {v0, v3}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    .line 6202
    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$misAutofillUiShowing(Landroid/view/ViewRootImpl;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6206
    const-string/jumbo v0, "no window focus"

    .local v0, "reason":Ljava/lang/String;
    goto :goto_0

    .line 6207
    .end local v0    # "reason":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eqz v0, :cond_2

    .line 6208
    const-string/jumbo v0, "window is stopped"

    .restart local v0    # "reason":Ljava/lang/String;
    goto :goto_0

    .line 6209
    .end local v0    # "reason":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mIsAmbientMode:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 6210
    invoke-virtual {v0, v1}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 6211
    const-string/jumbo v0, "non-button event in ambient mode"

    .restart local v0    # "reason":Ljava/lang/String;
    goto :goto_0

    .line 6212
    .end local v0    # "reason":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    if-eqz v0, :cond_5

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl$InputStage;->isBack(Landroid/view/InputEvent;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 6213
    const-string/jumbo v0, "paused for transition"

    .line 6219
    .restart local v0    # "reason":Ljava/lang/String;
    :goto_0
    iget-object v3, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->isTerminalInputEvent(Landroid/view/InputEvent;)Z

    move-result v3

    const-string v4, "):"

    if-eqz v3, :cond_4

    .line 6221
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v1}, Landroid/view/InputEvent;->cancel()V

    .line 6222
    iget-object v1, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cancelling event ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6223
    return v2

    .line 6227
    :cond_4
    iget-object v2, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dropping event ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6228
    return v1

    .line 6216
    .end local v0    # "reason":Ljava/lang/String;
    :cond_5
    return v2

    .line 6194
    :cond_6
    :goto_1
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dropping event due to root view being removed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6195
    return v1
.end method
