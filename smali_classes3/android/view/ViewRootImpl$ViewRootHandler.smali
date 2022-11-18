.class final Landroid/view/ViewRootImpl$ViewRootHandler;
.super Landroid/os/Handler;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ViewRootHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    .line 5667
    iput-object p1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private blacklist handleMessageImpl(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 5758
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "Dispatching key "

    const-string v2, "ViewRootImpl"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    .line 5947
    :pswitch_1
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->reportKeepClearAreasChanged()V

    .line 5948
    goto/16 :goto_4

    .line 5944
    :pswitch_2
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->keepClearRectsChanged()V

    .line 5945
    goto/16 :goto_4

    .line 5840
    :pswitch_3
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$mhandleWindowTouchModeChanged(Landroid/view/ViewRootImpl;)V

    .line 5841
    goto/16 :goto_4

    .line 5950
    :pswitch_4
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/IScrollCaptureResponseListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->handleScrollCaptureRequest(Landroid/view/IScrollCaptureResponseListener;)V

    goto/16 :goto_4

    .line 5819
    :pswitch_5
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmInsetsController(Landroid/view/ViewRootImpl;)Landroid/view/InsetsController;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v5, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {v0, v1, v4}, Landroid/view/InsetsController;->hide(IZ)V

    .line 5820
    goto/16 :goto_4

    .line 5809
    :pswitch_6
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_2

    .line 5810
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 5812
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    iget v1, p1, Landroid/os/Message;->arg2:I

    if-ne v1, v5, :cond_1

    move v1, v5

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v5

    .line 5811
    const-string v1, "Calling showInsets(%d,%b) on window that no longer has views."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5810
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5814
    :cond_2
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v5, :cond_3

    move v2, v5

    goto :goto_1

    :cond_3
    move v2, v4

    :goto_1
    invoke-static {v0, v1, v2}, Landroid/view/ViewRootImpl;->-$$Nest$mclearLowProfileModeIfNeeded(Landroid/view/ViewRootImpl;IZ)V

    .line 5815
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmInsetsController(Landroid/view/ViewRootImpl;)Landroid/view/InsetsController;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v5, :cond_4

    move v4, v5

    :cond_4
    invoke-virtual {v0, v1, v4}, Landroid/view/InsetsController;->show(IZ)V

    .line 5816
    goto/16 :goto_4

    .line 5941
    :pswitch_7
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->systemGestureExclusionChanged()V

    .line 5942
    goto/16 :goto_4

    .line 5787
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 5794
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmInsetsController(Landroid/view/ViewRootImpl;)Landroid/view/InsetsController;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/view/InsetsState;

    invoke-virtual {v1, v2}, Landroid/view/InsetsController;->onStateChanged(Landroid/view/InsetsState;)Z

    .line 5795
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, [Landroid/view/InsetsSourceControl;

    .line 5796
    .local v1, "controls":[Landroid/view/InsetsSourceControl;
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v2, :cond_5

    .line 5797
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmInsetsController(Landroid/view/ViewRootImpl;)Landroid/view/InsetsController;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/InsetsController;->onControlsChanged([Landroid/view/InsetsSourceControl;)V

    goto :goto_3

    .line 5798
    :cond_5
    if-eqz v1, :cond_7

    .line 5799
    array-length v2, v1

    :goto_2
    if-ge v4, v2, :cond_7

    aget-object v3, v1, v4

    .line 5800
    .local v3, "control":Landroid/view/InsetsSourceControl;
    if-eqz v3, :cond_6

    .line 5801
    new-instance v5, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v3, v5}, Landroid/view/InsetsSourceControl;->release(Ljava/util/function/Consumer;)V

    .line 5799
    .end local v3    # "control":Landroid/view/InsetsSourceControl;
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 5805
    :cond_7
    :goto_3
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 5806
    goto/16 :goto_4

    .line 5937
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "controls":[Landroid/view/InsetsSourceControl;
    :pswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_8

    move v4, v5

    :cond_8
    move v0, v4

    .line 5938
    .local v0, "hasCapture":Z
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1, v0}, Landroid/view/ViewRootImpl;->-$$Nest$mhandlePointerCaptureChanged(Landroid/view/ViewRootImpl;Z)V

    .line 5939
    .end local v0    # "hasCapture":Z
    goto/16 :goto_4

    .line 5933
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/MotionEvent;

    .line 5934
    .local v0, "event":Landroid/view/MotionEvent;
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1, v0}, Landroid/view/ViewRootImpl;->-$$Nest$mresetPointerIcon(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)V

    .line 5935
    .end local v0    # "event":Landroid/view/MotionEvent;
    goto/16 :goto_4

    .line 5928
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/IResultReceiver;

    .line 5929
    .local v0, "receiver":Lcom/android/internal/os/IResultReceiver;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 5930
    .local v1, "deviceId":I
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewRootImpl;->handleRequestKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V

    .line 5931
    .end local v0    # "receiver":Lcom/android/internal/os/IResultReceiver;
    .end local v1    # "deviceId":I
    goto/16 :goto_4

    .line 5920
    :pswitch_c
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->handleDispatchWindowShown()V

    .line 5924
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmViewRootImplExt(Landroid/view/ViewRootImpl;)Landroid/view/IViewRootImplExt;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/IViewRootImplExt;->checkKeyguardAndConfig(Ljava/lang/String;)V

    .line 5926
    goto/16 :goto_4

    .line 5853
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/InputEvent;

    .line 5854
    .local v0, "event":Landroid/view/InputEvent;
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/16 v2, 0x20

    invoke-virtual {v1, v0, v3, v2, v5}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    .line 5855
    .end local v0    # "event":Landroid/view/InputEvent;
    goto/16 :goto_4

    .line 5823
    :pswitch_e
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v0, :cond_e

    .line 5824
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 5825
    .local v0, "w":I
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 5826
    .local v1, "h":I
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 5827
    .local v2, "l":I
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 5828
    .local v3, "t":I
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v4}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTmpFrames(Landroid/view/ViewRootImpl;)Landroid/window/ClientWindowFrames;

    move-result-object v4

    iget-object v4, v4, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->left:I

    .line 5829
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v4}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTmpFrames(Landroid/view/ViewRootImpl;)Landroid/window/ClientWindowFrames;

    move-result-object v4

    iget-object v4, v4, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    add-int v5, v2, v0

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 5830
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v4}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTmpFrames(Landroid/view/ViewRootImpl;)Landroid/window/ClientWindowFrames;

    move-result-object v4

    iget-object v4, v4, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iput v3, v4, Landroid/graphics/Rect;->top:I

    .line 5831
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v4}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTmpFrames(Landroid/view/ViewRootImpl;)Landroid/window/ClientWindowFrames;

    move-result-object v4

    iget-object v4, v4, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    add-int v5, v3, v1

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 5832
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v4}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTmpFrames(Landroid/view/ViewRootImpl;)Landroid/window/ClientWindowFrames;

    move-result-object v5

    iget-object v5, v5, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-static {v4, v5}, Landroid/view/ViewRootImpl;->-$$Nest$msetFrame(Landroid/view/ViewRootImpl;Landroid/graphics/Rect;)V

    .line 5833
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v4, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-static {v4, v5}, Landroid/view/ViewRootImpl;->-$$Nest$mmaybeHandleWindowMove(Landroid/view/ViewRootImpl;Landroid/graphics/Rect;)V

    .line 5834
    .end local v0    # "w":I
    .end local v1    # "h":I
    .end local v2    # "l":I
    .end local v3    # "t":I
    goto/16 :goto_4

    .line 5915
    :pswitch_f
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 5916
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->invalidateWorld(Landroid/view/View;)V

    goto/16 :goto_4

    .line 5912
    :pswitch_10
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v3, v3}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 5913
    goto/16 :goto_4

    .line 5769
    :pswitch_11
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    .line 5770
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    .line 5771
    goto/16 :goto_4

    .line 5897
    :pswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/Configuration;

    .line 5898
    .local v0, "config":Landroid/content/res/Configuration;
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmLastReportedMergedConfiguration(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;

    move-result-object v1

    .line 5899
    invoke-virtual {v1}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 5898
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 5901
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmLastReportedMergedConfiguration(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 5905
    :cond_9
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmPendingMergedConfiguration(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmLastReportedMergedConfiguration(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;

    move-result-object v2

    .line 5906
    invoke-virtual {v2}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 5905
    invoke-virtual {v1, v0, v2}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 5908
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v2, Landroid/util/MergedConfiguration;

    iget-object v3, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmPendingMergedConfiguration(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/util/MergedConfiguration;-><init>(Landroid/util/MergedConfiguration;)V

    const/4 v3, -0x1

    invoke-static {v1, v2, v4, v3}, Landroid/view/ViewRootImpl;->-$$Nest$mperformConfigurationChange(Landroid/view/ViewRootImpl;Landroid/util/MergedConfiguration;ZI)V

    .line 5910
    .end local v0    # "config":Landroid/content/res/Configuration;
    goto/16 :goto_4

    .line 5894
    :pswitch_13
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    invoke-static {v0, v1}, Landroid/view/ViewRootImpl;->-$$Nest$mhandleDispatchSystemUiVisibilityChanged(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;)V

    .line 5895
    goto/16 :goto_4

    .line 5888
    :pswitch_14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/DragEvent;

    .line 5890
    .local v0, "event":Landroid/view/DragEvent;
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mLocalDragState:Ljava/lang/Object;

    iput-object v1, v0, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    .line 5891
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1, v0}, Landroid/view/ViewRootImpl;->-$$Nest$mhandleDragEvent(Landroid/view/ViewRootImpl;Landroid/view/DragEvent;)V

    .line 5892
    .end local v0    # "event":Landroid/view/DragEvent;
    goto/16 :goto_4

    .line 5881
    :pswitch_15
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 5882
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->onCloseSystemDialogs(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 5878
    :pswitch_16
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getImeFocusController()Landroid/view/ImeFocusController;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ImeFocusController;->checkFocus(ZZ)Z

    .line 5879
    goto/16 :goto_4

    .line 5871
    :pswitch_17
    sget-boolean v0, Landroid/view/ViewRootImpl;->LOCAL_LOGV:Z

    if-eqz v0, :cond_a

    .line 5872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from Autofill to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5874
    :cond_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    .line 5875
    .local v0, "event":Landroid/view/KeyEvent;
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, v0, v3, v4, v5}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    .line 5876
    .end local v0    # "event":Landroid/view/KeyEvent;
    goto/16 :goto_4

    .line 5857
    :pswitch_18
    sget-boolean v0, Landroid/view/ViewRootImpl;->LOCAL_LOGV:Z

    if-eqz v0, :cond_b

    .line 5858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from IME to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5860
    :cond_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    .line 5861
    .restart local v0    # "event":Landroid/view/KeyEvent;
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_c

    .line 5865
    nop

    .line 5866
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, -0x9

    .line 5865
    invoke-static {v0, v1}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 5868
    :cond_c
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, v0, v3, v5, v5}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    .line 5869
    .end local v0    # "event":Landroid/view/KeyEvent;
    goto :goto_4

    .line 5776
    :pswitch_19
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->handleGetNewSurface()V

    .line 5777
    goto :goto_4

    .line 5773
    :pswitch_1a
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_d

    move v4, v5

    :cond_d
    invoke-virtual {v0, v4}, Landroid/view/ViewRootImpl;->handleAppVisibility(Z)V

    .line 5774
    goto :goto_4

    .line 5846
    :pswitch_1b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 5847
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/view/InputEvent;

    .line 5848
    .local v1, "event":Landroid/view/InputEvent;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/view/InputEventReceiver;

    .line 5849
    .local v2, "receiver":Landroid/view/InputEventReceiver;
    iget-object v3, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    .line 5850
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 5851
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "event":Landroid/view/InputEvent;
    .end local v2    # "receiver":Landroid/view/InputEventReceiver;
    goto :goto_4

    .line 5837
    :pswitch_1c
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$mhandleWindowFocusChanged(Landroid/view/ViewRootImpl;)V

    .line 5838
    goto :goto_4

    .line 5780
    :pswitch_1d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 5781
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmInsetsController(Landroid/view/ViewRootImpl;)Landroid/view/InsetsController;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Landroid/view/InsetsState;

    invoke-virtual {v1, v2}, Landroid/view/InsetsController;->onStateChanged(Landroid/view/InsetsState;)Z

    .line 5782
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v2, v0}, Landroid/view/ViewRootImpl;->-$$Nest$mhandleResized(Landroid/view/ViewRootImpl;ILcom/android/internal/os/SomeArgs;)V

    .line 5783
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 5784
    goto :goto_4

    .line 5843
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_1e
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->doDie()V

    .line 5844
    goto :goto_4

    .line 5763
    :pswitch_1f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View$AttachInfo$InvalidateInfo;

    .line 5765
    .local v0, "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    iget-object v1, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    iget v2, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    iget v3, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    iget v4, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    iget v5, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->invalidate(IIII)V

    .line 5766
    invoke-virtual {v0}, Landroid/view/View$AttachInfo$InvalidateInfo;->recycle()V

    .line 5767
    goto :goto_4

    .line 5760
    .end local v0    # "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    :pswitch_20
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 5761
    nop

    .line 5953
    :cond_e
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public whitelist getMessageName(Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .line 5670
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 5732
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->getMessageName(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5730
    :pswitch_1
    const-string v0, "MSG_KEEP_CLEAR_RECTS_CHANGED"

    return-object v0

    .line 5728
    :pswitch_2
    const-string v0, "MSG_WINDOW_TOUCH_MODE_CHANGED"

    return-object v0

    .line 5726
    :pswitch_3
    const-string v0, "MSG_HIDE_INSETS"

    return-object v0

    .line 5724
    :pswitch_4
    const-string v0, "MSG_SHOW_INSETS"

    return-object v0

    .line 5722
    :pswitch_5
    const-string v0, "MSG_SYSTEM_GESTURE_EXCLUSION_CHANGED"

    return-object v0

    .line 5720
    :pswitch_6
    const-string v0, "MSG_INSETS_CONTROL_CHANGED"

    return-object v0

    .line 5718
    :pswitch_7
    const-string v0, "MSG_POINTER_CAPTURE_CHANGED"

    return-object v0

    .line 5716
    :pswitch_8
    const-string v0, "MSG_UPDATE_POINTER_ICON"

    return-object v0

    .line 5714
    :pswitch_9
    const-string v0, "MSG_DISPATCH_WINDOW_SHOWN"

    return-object v0

    .line 5712
    :pswitch_a
    const-string v0, "MSG_SYNTHESIZE_INPUT_EVENT"

    return-object v0

    .line 5710
    :pswitch_b
    const-string v0, "MSG_WINDOW_MOVED"

    return-object v0

    .line 5708
    :pswitch_c
    const-string v0, "MSG_CLEAR_ACCESSIBILITY_FOCUS_HOST"

    return-object v0

    .line 5706
    :pswitch_d
    const-string v0, "MSG_PROCESS_INPUT_EVENTS"

    return-object v0

    .line 5704
    :pswitch_e
    const-string v0, "MSG_UPDATE_CONFIGURATION"

    return-object v0

    .line 5702
    :pswitch_f
    const-string v0, "MSG_DISPATCH_SYSTEM_UI_VISIBILITY"

    return-object v0

    .line 5700
    :pswitch_10
    const-string v0, "MSG_DISPATCH_DRAG_LOCATION_EVENT"

    return-object v0

    .line 5698
    :pswitch_11
    const-string v0, "MSG_DISPATCH_DRAG_EVENT"

    return-object v0

    .line 5696
    :pswitch_12
    const-string v0, "MSG_CLOSE_SYSTEM_DIALOGS"

    return-object v0

    .line 5694
    :pswitch_13
    const-string v0, "MSG_CHECK_FOCUS"

    return-object v0

    .line 5692
    :pswitch_14
    const-string v0, "MSG_DISPATCH_KEY_FROM_AUTOFILL"

    return-object v0

    .line 5690
    :pswitch_15
    const-string v0, "MSG_DISPATCH_KEY_FROM_IME"

    return-object v0

    .line 5688
    :pswitch_16
    const-string v0, "MSG_DISPATCH_GET_NEW_SURFACE"

    return-object v0

    .line 5686
    :pswitch_17
    const-string v0, "MSG_DISPATCH_APP_VISIBILITY"

    return-object v0

    .line 5684
    :pswitch_18
    const-string v0, "MSG_DISPATCH_INPUT_EVENT"

    return-object v0

    .line 5682
    :pswitch_19
    const-string v0, "MSG_WINDOW_FOCUS_CHANGED"

    return-object v0

    .line 5680
    :pswitch_1a
    const-string v0, "MSG_RESIZED_REPORT"

    return-object v0

    .line 5678
    :pswitch_1b
    const-string v0, "MSG_RESIZED"

    return-object v0

    .line 5676
    :pswitch_1c
    const-string v0, "MSG_DIE"

    return-object v0

    .line 5674
    :pswitch_1d
    const-string v0, "MSG_INVALIDATE_RECT"

    return-object v0

    .line 5672
    :pswitch_1e
    const-string v0, "MSG_INVALIDATE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 5747
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5748
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->getMessageName(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5751
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->handleMessageImpl(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5753
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 5754
    nop

    .line 5755
    return-void

    .line 5753
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 5754
    throw v2
.end method

.method public whitelist sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "uptimeMillis"    # J

    .line 5737
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5739
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Attempted to call MSG_REQUEST_KEYBOARD_SHORTCUTS with null receiver:"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5742
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method
