.class final Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;
.super Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AccessibilityInteractionConnection"
.end annotation


# instance fields
.field private final greylist-max-o mViewRootImpl:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewRootImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Landroid/view/ViewRootImpl;)V
    .locals 1
    .param p1, "viewRootImpl"    # Landroid/view/ViewRootImpl;

    .line 10785
    invoke-direct {p0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;-><init>()V

    .line 10786
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    .line 10787
    return-void
.end method


# virtual methods
.method public blacklist clearAccessibilityFocus()V
    .locals 2

    .line 10919
    iget-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 10920
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 10921
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;

    move-result-object v1

    .line 10922
    invoke-virtual {v1}, Landroid/view/AccessibilityInteractionController;->clearAccessibilityFocusClientThread()V

    .line 10924
    :cond_0
    return-void
.end method

.method public blacklist findAccessibilityNodeInfoByAccessibilityId(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[FLandroid/os/Bundle;)V
    .locals 16
    .param p1, "accessibilityNodeId"    # J
    .param p3, "interactiveRegion"    # Landroid/graphics/Region;
    .param p4, "interactionId"    # I
    .param p5, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p6, "flags"    # I
    .param p7, "interrogatingPid"    # I
    .param p8, "interrogatingTid"    # J
    .param p10, "spec"    # Landroid/view/MagnificationSpec;
    .param p11, "matrix"    # [F
    .param p12, "args"    # Landroid/os/Bundle;

    .line 10795
    move-object/from16 v1, p0

    iget-object v0, v1, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/ViewRootImpl;

    .line 10796
    .local v2, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v2, :cond_0

    iget-object v0, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 10797
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;

    move-result-object v3

    .line 10798
    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-wide/from16 v11, p8

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    invoke-virtual/range {v3 .. v15}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfoByAccessibilityIdClientThread(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[FLandroid/os/Bundle;)V

    move/from16 v3, p4

    move-object/from16 v4, p5

    goto :goto_0

    .line 10804
    :cond_0
    const/4 v0, 0x0

    move/from16 v3, p4

    move-object/from16 v4, p5

    :try_start_0
    invoke-interface {v4, v0, v3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10807
    goto :goto_0

    .line 10805
    :catch_0
    move-exception v0

    .line 10809
    :goto_0
    return-void
.end method

.method public blacklist findAccessibilityNodeInfosByText(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V
    .locals 16
    .param p1, "accessibilityNodeId"    # J
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;
    .param p12, "matrix"    # [F

    .line 10859
    move-object/from16 v1, p0

    iget-object v0, v1, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/ViewRootImpl;

    .line 10860
    .local v2, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v2, :cond_0

    iget-object v0, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 10861
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;

    move-result-object v3

    .line 10862
    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-wide/from16 v12, p9

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    invoke-virtual/range {v3 .. v15}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfosByTextClientThread(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V

    move/from16 v3, p5

    move-object/from16 v4, p6

    goto :goto_0

    .line 10868
    :cond_0
    const/4 v0, 0x0

    move/from16 v3, p5

    move-object/from16 v4, p6

    :try_start_0
    invoke-interface {v4, v0, v3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10871
    goto :goto_0

    .line 10869
    :catch_0
    move-exception v0

    .line 10873
    :goto_0
    return-void
.end method

.method public blacklist findAccessibilityNodeInfosByViewId(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V
    .locals 16
    .param p1, "accessibilityNodeId"    # J
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;
    .param p12, "matrix"    # [F

    .line 10837
    move-object/from16 v1, p0

    iget-object v0, v1, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/ViewRootImpl;

    .line 10838
    .local v2, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v2, :cond_0

    iget-object v0, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 10839
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;

    move-result-object v3

    .line 10840
    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-wide/from16 v12, p9

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    invoke-virtual/range {v3 .. v15}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfosByViewIdClientThread(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V

    move/from16 v3, p5

    move-object/from16 v4, p6

    goto :goto_0

    .line 10846
    :cond_0
    const/4 v0, 0x0

    move/from16 v3, p5

    move-object/from16 v4, p6

    :try_start_0
    invoke-interface {v4, v0, v3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10849
    goto :goto_0

    .line 10847
    :catch_0
    move-exception v0

    .line 10851
    :goto_0
    return-void
.end method

.method public blacklist findFocus(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V
    .locals 16
    .param p1, "accessibilityNodeId"    # J
    .param p3, "focusType"    # I
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;
    .param p12, "matrix"    # [F

    .line 10880
    move-object/from16 v1, p0

    iget-object v0, v1, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/ViewRootImpl;

    .line 10881
    .local v2, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v2, :cond_0

    iget-object v0, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 10882
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;

    move-result-object v3

    .line 10883
    move-wide/from16 v4, p1

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-wide/from16 v12, p9

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    invoke-virtual/range {v3 .. v15}, Landroid/view/AccessibilityInteractionController;->findFocusClientThread(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V

    move/from16 v3, p5

    move-object/from16 v4, p6

    goto :goto_0

    .line 10889
    :cond_0
    const/4 v0, 0x0

    move/from16 v3, p5

    move-object/from16 v4, p6

    :try_start_0
    invoke-interface {v4, v0, v3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10892
    goto :goto_0

    .line 10890
    :catch_0
    move-exception v0

    .line 10894
    :goto_0
    return-void
.end method

.method public blacklist focusSearch(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V
    .locals 16
    .param p1, "accessibilityNodeId"    # J
    .param p3, "direction"    # I
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;
    .param p12, "matrix"    # [F

    .line 10901
    move-object/from16 v1, p0

    iget-object v0, v1, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/ViewRootImpl;

    .line 10902
    .local v2, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v2, :cond_0

    iget-object v0, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 10903
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;

    move-result-object v3

    .line 10904
    move-wide/from16 v4, p1

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-wide/from16 v12, p9

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    invoke-virtual/range {v3 .. v15}, Landroid/view/AccessibilityInteractionController;->focusSearchClientThread(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V

    move/from16 v3, p5

    move-object/from16 v4, p6

    goto :goto_0

    .line 10910
    :cond_0
    const/4 v0, 0x0

    move/from16 v3, p5

    move-object/from16 v4, p6

    :try_start_0
    invoke-interface {v4, v0, v3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10913
    goto :goto_0

    .line 10911
    :catch_0
    move-exception v0

    .line 10915
    :goto_0
    return-void
.end method

.method public blacklist notifyOutsideTouch()V
    .locals 2

    .line 10928
    iget-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 10929
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 10930
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;

    move-result-object v1

    .line 10931
    invoke-virtual {v1}, Landroid/view/AccessibilityInteractionController;->notifyOutsideTouchClientThread()V

    .line 10933
    :cond_0
    return-void
.end method

.method public greylist-max-o performAccessibilityAction(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .locals 14
    .param p1, "accessibilityNodeId"    # J
    .param p3, "action"    # I
    .param p4, "arguments"    # Landroid/os/Bundle;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J

    .line 10816
    move-object v1, p0

    iget-object v0, v1, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/ViewRootImpl;

    .line 10817
    .local v2, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v2, :cond_0

    iget-object v0, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 10818
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;

    move-result-object v3

    .line 10819
    move-wide v4, p1

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-wide/from16 v12, p9

    invoke-virtual/range {v3 .. v13}, Landroid/view/AccessibilityInteractionController;->performAccessibilityActionClientThread(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V

    move/from16 v3, p5

    move-object/from16 v4, p6

    goto :goto_0

    .line 10824
    :cond_0
    const/4 v0, 0x0

    move/from16 v3, p5

    move-object/from16 v4, p6

    :try_start_0
    invoke-interface {v4, v0, v3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10827
    goto :goto_0

    .line 10825
    :catch_0
    move-exception v0

    .line 10829
    :goto_0
    return-void
.end method
