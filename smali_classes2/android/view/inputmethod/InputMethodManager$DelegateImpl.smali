.class final Landroid/view/inputmethod/InputMethodManager$DelegateImpl;
.super Ljava/lang/Object;
.source "InputMethodManager.java"

# interfaces
.implements Landroid/view/ImeFocusController$InputMethodManagerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DelegateImpl"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method private constructor blacklist <init>(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    .line 652
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$DelegateImpl-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;-><init>(Landroid/view/inputmethod/InputMethodManager;)V

    return-void
.end method


# virtual methods
.method public blacklist closeCurrentIme()V
    .locals 1

    .line 714
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->closeCurrentInput()V

    .line 715
    return-void
.end method

.method public blacklist finishComposingText()V
    .locals 1

    .line 780
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->finishComposingTextFromImm()V

    .line 783
    :cond_0
    return-void
.end method

.method public blacklist finishInput()V
    .locals 4

    .line 681
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v1, "InputMethodManager.DelegateImpl#finishInput"

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 684
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 685
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->finishInputLocked()V

    .line 686
    monitor-exit v0

    .line 687
    return-void

    .line 686
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist finishInputAndReportToIme()V
    .locals 3

    .line 699
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 700
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->finishInputLocked()V

    .line 701
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmCurrentInputMethodSession(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodSessionWrapper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 702
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmCurrentInputMethodSession(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodSessionWrapper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSessionWrapper;->finishInput()V

    .line 704
    :cond_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    new-instance v2, Landroid/view/inputmethod/InputMethodManager$DelegateImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/view/inputmethod/InputMethodManager$DelegateImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mforAccessibilitySessionsLocked(Landroid/view/inputmethod/InputMethodManager;Ljava/util/function/Consumer;)V

    .line 706
    monitor-exit v0

    .line 707
    return-void

    .line 706
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist hasActiveConnection(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 834
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 835
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1, p1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mhasServedByInputMethodLocked(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmCurrentInputMethodSession(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodSessionWrapper;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 840
    :cond_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    .line 841
    invoke-virtual {v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    .line 842
    invoke-virtual {v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getServedView()Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    monitor-exit v0

    .line 840
    return v2

    .line 837
    :cond_2
    :goto_1
    monitor-exit v0

    return v2

    .line 843
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist isCurrentRootView(Landroid/view/ViewRootImpl;)Z
    .locals 2
    .param p1, "rootView"    # Landroid/view/ViewRootImpl;

    .line 807
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 808
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 809
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist isRestartOnNextWindowFocus(Z)Z
    .locals 3
    .param p1, "reset"    # Z

    .line 817
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmRestartOnNextWindowFocus(Landroid/view/inputmethod/InputMethodManager;)Z

    move-result v0

    .line 818
    .local v0, "result":Z
    if-eqz p1, :cond_0

    .line 819
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmRestartOnNextWindowFocus(Landroid/view/inputmethod/InputMethodManager;Z)V

    .line 821
    :cond_0
    return v0
.end method

.method public blacklist setCurrentRootView(Landroid/view/ViewRootImpl;)V
    .locals 3
    .param p1, "rootView"    # Landroid/view/ViewRootImpl;

    .line 790
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 791
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmImeDispatcher(Landroid/view/inputmethod/InputMethodManager;)Landroid/window/ImeOnBackInvokedDispatcher;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v2, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, v2, p1}, Landroid/window/ImeOnBackInvokedDispatcher;->switchRootView(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl;)V

    .line 792
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, v1, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    .line 795
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmImmWrapper(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager$InputMethodManagerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager$InputMethodManagerWrapper;->getExtImpl()Landroid/view/inputmethod/IInputMethodManagerExt;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/inputmethod/IInputMethodManagerExt;->updateCurrentRootView(Landroid/view/ViewRootImpl;)V

    .line 797
    monitor-exit v0

    .line 798
    return-void

    .line 797
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist startInput(ILandroid/view/View;III)Z
    .locals 10
    .param p1, "startInputReason"    # I
    .param p2, "focusedView"    # Landroid/view/View;
    .param p3, "startInputFlags"    # I
    .param p4, "softInputMode"    # I
    .param p5, "windowFlags"    # I

    .line 662
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v1, "InputMethodManager.DelegateImpl#startInput"

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 665
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 666
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iput-object v3, v1, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 667
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iput-object v3, v1, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 668
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 669
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mgetServedViewLocked(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/View;

    move-result-object v1

    .line 670
    .local v1, "servedView":Landroid/view/View;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    .line 672
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    :cond_0
    move-object v6, v3

    .line 671
    move v5, p1

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-virtual/range {v4 .. v9}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z

    move-result v0

    return v0

    .line 670
    .end local v1    # "servedView":Landroid/view/View;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist startInputAsyncOnWindowFocusGain(Landroid/view/View;IIZ)V
    .locals 23
    .param p1, "focusedView"    # Landroid/view/View;
    .param p2, "softInputMode"    # I
    .param p3, "windowFlags"    # I
    .param p4, "forceNewFocus"    # Z

    .line 723
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v0, v7, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v9, 0x0

    invoke-static {v0, v8, v9}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mgetStartInputFlags(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;I)I

    move-result v0

    .line 724
    .local v0, "startInputFlags":I
    or-int/lit8 v22, v0, 0x8

    .line 726
    .end local v0    # "startInputFlags":I
    .local v22, "startInputFlags":I
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v1, "InputMethodManager.DelegateImpl#startInputAsyncOnWindowFocusGain"

    iget-object v2, v7, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 730
    iget-object v0, v7, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mgetFocusController(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/ImeFocusController;

    move-result-object v15

    .line 731
    .local v15, "controller":Landroid/view/ImeFocusController;
    if-nez v15, :cond_0

    .line 732
    return-void

    .line 734
    :cond_0
    move/from16 v14, p4

    invoke-virtual {v15, v14, v9}, Landroid/view/ImeFocusController;->checkFocus(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 739
    const/4 v2, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v4, v22

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->startInput(ILandroid/view/View;III)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 741
    return-void

    .line 745
    :cond_1
    iget-object v0, v7, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 749
    :try_start_0
    invoke-virtual {v15}, Landroid/view/ImeFocusController;->getServedView()Landroid/view/View;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 750
    .local v0, "servedView":Landroid/view/View;
    if-eqz v0, :cond_2

    if-ne v0, v8, :cond_2

    .line 751
    :try_start_1
    invoke-virtual/range {p0 .. p1}, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->hasActiveConnection(Landroid/view/View;)Z

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    const/4 v9, 0x1

    goto :goto_0

    .line 772
    .end local v0    # "servedView":Landroid/view/View;
    :catchall_0
    move-exception v0

    move-object v4, v15

    goto/16 :goto_3

    .line 769
    :catch_0
    move-exception v0

    move-object v4, v15

    goto :goto_2

    .line 751
    .restart local v0    # "servedView":Landroid/view/View;
    :cond_2
    nop

    :goto_0
    move v2, v9

    .line 752
    .local v2, "nextFocusHasConnection":Z
    :try_start_2
    sget-boolean v3, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_3

    .line 753
    :try_start_3
    const-string v3, "InputMethodManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reporting focus gain, without startInput, nextFocusIsServedView="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 757
    :cond_3
    if-eqz v2, :cond_4

    .line 758
    const/4 v3, 0x2

    move v11, v3

    goto :goto_1

    .line 759
    :cond_4
    const/4 v3, 0x3

    move v11, v3

    :goto_1
    nop

    .line 761
    .local v11, "startInputReason":I
    :try_start_4
    iget-object v3, v7, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v10, v3, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v3, v7, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v12, v3, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    .line 763
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v13

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    iget-object v3, v7, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v3, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 767
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v4, v7, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v4}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmImeDispatcher(Landroid/view/inputmethod/InputMethodManager;)Landroid/window/ImeOnBackInvokedDispatcher;

    move-result-object v21
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 761
    move/from16 v14, v22

    move-object v4, v15

    .end local v15    # "controller":Landroid/view/ImeFocusController;
    .local v4, "controller":Landroid/view/ImeFocusController;
    move/from16 v15, p2

    move/from16 v16, p3

    move/from16 v20, v3

    :try_start_5
    invoke-interface/range {v10 .. v21}, Lcom/android/internal/view/IInputMethodManager;->startInputOrWindowGainedFocus(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;ILandroid/window/ImeOnBackInvokedDispatcher;)Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 771
    .end local v0    # "servedView":Landroid/view/View;
    .end local v2    # "nextFocusHasConnection":Z
    .end local v11    # "startInputReason":I
    nop

    .line 772
    :try_start_6
    monitor-exit v1

    .line 773
    return-void

    .line 769
    :catch_1
    move-exception v0

    goto :goto_2

    .line 772
    .end local v4    # "controller":Landroid/view/ImeFocusController;
    .restart local v15    # "controller":Landroid/view/ImeFocusController;
    :catchall_1
    move-exception v0

    move-object v4, v15

    .end local v15    # "controller":Landroid/view/ImeFocusController;
    .restart local v4    # "controller":Landroid/view/ImeFocusController;
    goto :goto_3

    .line 769
    .end local v4    # "controller":Landroid/view/ImeFocusController;
    .restart local v15    # "controller":Landroid/view/ImeFocusController;
    :catch_2
    move-exception v0

    move-object v4, v15

    .line 770
    .end local v15    # "controller":Landroid/view/ImeFocusController;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v4    # "controller":Landroid/view/ImeFocusController;
    :goto_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v4    # "controller":Landroid/view/ImeFocusController;
    .end local v22    # "startInputFlags":I
    .end local p0    # "this":Landroid/view/inputmethod/InputMethodManager$DelegateImpl;
    .end local p1    # "focusedView":Landroid/view/View;
    .end local p2    # "softInputMode":I
    .end local p3    # "windowFlags":I
    .end local p4    # "forceNewFocus":Z
    throw v2

    .line 772
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v4    # "controller":Landroid/view/ImeFocusController;
    .restart local v22    # "startInputFlags":I
    .restart local p0    # "this":Landroid/view/inputmethod/InputMethodManager$DelegateImpl;
    .restart local p1    # "focusedView":Landroid/view/View;
    .restart local p2    # "softInputMode":I
    .restart local p3    # "windowFlags":I
    .restart local p4    # "forceNewFocus":Z
    :catchall_2
    move-exception v0

    :goto_3
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0
.end method
