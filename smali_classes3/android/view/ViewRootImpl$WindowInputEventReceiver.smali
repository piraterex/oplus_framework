.class final Landroid/view/ViewRootImpl$WindowInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WindowInputEventReceiver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/view/ViewRootImpl;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 9371
    iput-object p1, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    .line 9372
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 9373
    return-void
.end method


# virtual methods
.method public greylist-max-o dispose()V
    .locals 1

    .line 9459
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->unscheduleConsumeBatchedInput()V

    .line 9460
    invoke-super {p0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 9461
    return-void
.end method

.method public blacklist onBatchedInputEventPending(I)V
    .locals 3
    .param p1, "source"    # I

    .line 9415
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    iget v0, v0, Landroid/view/ViewRootImpl;->mUnbufferedInputSource:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 9417
    .local v0, "unbuffered":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 9418
    iget-object v1, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v1, v1, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    if-eqz v1, :cond_2

    .line 9419
    iget-object v1, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->unscheduleConsumeBatchedInput()V

    .line 9422
    :cond_2
    const-wide/16 v1, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->consumeBatchedInputEvents(J)Z

    .line 9423
    return-void

    .line 9425
    :cond_3
    iget-object v1, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInput()V

    .line 9426
    return-void
.end method

.method public blacklist onDragEvent(ZFF)V
    .locals 12
    .param p1, "isExiting"    # Z
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 9450
    if-eqz p1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    move v1, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 9449
    move v2, p2

    move v3, p3

    invoke-static/range {v1 .. v11}, Landroid/view/DragEvent;->obtain(IFFFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Landroid/view/SurfaceControl;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object v0

    .line 9454
    .local v0, "event":Landroid/view/DragEvent;
    iget-object v1, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 9455
    return-void
.end method

.method public blacklist onFocusEvent(Z)V
    .locals 3
    .param p1, "hasFocus"    # Z

    .line 9431
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFocusEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9433
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->windowFocusChanged(Z)V

    .line 9434
    return-void
.end method

.method public blacklist onInputEvent(Landroid/view/InputEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 9377
    const-wide/16 v0, 0x8

    const-string/jumbo v2, "processInputEventForCompatibility"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 9380
    iget-object v2, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmViewRootImplExt(Landroid/view/ViewRootImpl;)Landroid/view/IViewRootImplExt;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Landroid/view/IViewRootImplExt;->debugInputEventStart(Ljava/lang/String;Landroid/view/InputEvent;)V

    .line 9386
    :try_start_0
    iget-object v2, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmViewRootImplExt(Landroid/view/ViewRootImpl;)Landroid/view/IViewRootImplExt;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IViewRootImplExt;->updateInputEventToInputMethod(Landroid/view/InputEvent;)V

    .line 9390
    iget-object v2, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmViewRootImplExt(Landroid/view/ViewRootImpl;)Landroid/view/IViewRootImplExt;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v4, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v4}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmLastReportedMergedConfiguration(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;

    move-result-object v4

    invoke-interface {v2, p0, p1, v3, v4}, Landroid/view/IViewRootImplExt;->dispatchTouchEventForZoomWinow(Landroid/view/InputEventReceiver;Landroid/view/InputEvent;Landroid/view/View;Landroid/util/MergedConfiguration;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 9395
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 9390
    return-void

    .line 9392
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmInputCompatProcessor(Landroid/view/ViewRootImpl;)Landroid/view/InputEventCompatProcessor;

    move-result-object v2

    .line 9393
    invoke-virtual {v2, p1}, Landroid/view/InputEventCompatProcessor;->processInputEventForCompatibility(Landroid/view/InputEvent;)Ljava/util/List;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9395
    .local v2, "processedEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputEvent;>;"
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 9396
    nop

    .line 9397
    const/4 v0, 0x1

    if-eqz v2, :cond_3

    .line 9398
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9400
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_1

    .line 9402
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 9403
    iget-object v3, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    .line 9404
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InputEvent;

    const/16 v5, 0x40

    .line 9403
    invoke-virtual {v3, v4, p0, v5, v0}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    .line 9402
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_2
    goto :goto_1

    .line 9409
    :cond_3
    iget-object v1, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, p0, v3, v0}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    .line 9411
    :goto_1
    return-void

    .line 9395
    .end local v2    # "processedEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputEvent;>;"
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 9396
    throw v2
.end method

.method public blacklist onPointerCaptureEvent(Z)V
    .locals 1
    .param p1, "pointerCaptureEnabled"    # Z

    .line 9443
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->-$$Nest$mdispatchPointerCaptureChanged(Landroid/view/ViewRootImpl;Z)V

    .line 9444
    return-void
.end method

.method public blacklist onTouchModeChanged(Z)V
    .locals 1
    .param p1, "inTouchMode"    # Z

    .line 9438
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->touchModeChanged(Z)V

    .line 9439
    return-void
.end method
