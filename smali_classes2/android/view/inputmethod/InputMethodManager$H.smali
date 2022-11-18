.class Landroid/view/inputmethod/InputMethodManager$H;
.super Landroid/os/Handler;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "H"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor blacklist <init>(Landroid/view/inputmethod/InputMethodManager;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 903
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    .line 904
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 905
    return-void
.end method

.method static synthetic blacklist lambda$handleMessage$0(Landroid/view/ImeFocusController;Z)V
    .locals 0
    .param p0, "controller"    # Landroid/view/ImeFocusController;
    .param p1, "active"    # Z

    .line 1065
    invoke-virtual {p0, p1}, Landroid/view/ImeFocusController;->onInteractiveChanged(Z)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    .line 909
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const/16 v3, 0x9

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 1172
    return-void

    .line 1164
    :sswitch_0
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v7

    .line 1165
    :try_start_0
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmImeInsetsConsumer(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/ImeInsetsSourceConsumer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1166
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmImeInsetsConsumer(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/ImeInsetsSourceConsumer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ImeInsetsSourceConsumer;->onShowRequested()V

    .line 1168
    :cond_0
    monitor-exit v7

    .line 1169
    return-void

    .line 1168
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1119
    :sswitch_1
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, [F

    .line 1120
    .local v7, "matrixValues":[F
    iget v8, v2, Landroid/os/Message;->arg1:I

    .line 1121
    .local v8, "bindSequence":I
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v9, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v9

    .line 1122
    :try_start_1
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v0, v0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    if-eq v0, v8, :cond_1

    .line 1123
    monitor-exit v9

    return-void

    .line 1125
    :cond_1
    if-eqz v7, :cond_8

    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmVirtualDisplayToScreenMatrix(Landroid/view/inputmethod/InputMethodManager;)Landroid/graphics/Matrix;

    move-result-object v0

    if-nez v0, :cond_2

    goto/16 :goto_2

    .line 1133
    :cond_2
    new-array v0, v3, [F

    .line 1134
    .local v0, "currentValues":[F
    iget-object v3, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v3}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmVirtualDisplayToScreenMatrix(Landroid/view/inputmethod/InputMethodManager;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1135
    invoke-static {v0, v7}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1136
    monitor-exit v9

    return-void

    .line 1138
    :cond_3
    iget-object v3, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v3}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmVirtualDisplayToScreenMatrix(Landroid/view/inputmethod/InputMethodManager;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/graphics/Matrix;->setValues([F)V

    .line 1140
    iget-object v3, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v3}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmCursorAnchorInfo(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v3}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmCurrentInputMethodSession(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodSessionWrapper;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v3, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    if-nez v3, :cond_4

    goto :goto_1

    .line 1144
    :cond_4
    iget-object v3, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v3}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmRequestUpdateCursorAnchorInfoMonitorMode(Landroid/view/inputmethod/InputMethodManager;)I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_5
    move v5, v6

    :goto_0
    move v3, v5

    .line 1146
    .local v3, "isMonitoring":Z
    if-nez v3, :cond_6

    .line 1147
    monitor-exit v9

    return-void

    .line 1151
    :cond_6
    iget-object v4, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v4}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmCurrentInputMethodSession(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodSessionWrapper;

    move-result-object v4

    iget-object v5, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v5}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmCursorAnchorInfo(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v5

    iget-object v6, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v6}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmVirtualDisplayToScreenMatrix(Landroid/view/inputmethod/InputMethodManager;)Landroid/graphics/Matrix;

    move-result-object v6

    .line 1152
    invoke-static {v5, v6}, Landroid/view/inputmethod/CursorAnchorInfo;->createForAdditionalParentMatrix(Landroid/view/inputmethod/CursorAnchorInfo;Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v5

    .line 1151
    invoke-virtual {v4, v5}, Landroid/view/inputmethod/InputMethodSessionWrapper;->updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V

    .line 1156
    iget-object v4, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v4}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmImmWrapper(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager$InputMethodManagerWrapper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodManager$InputMethodManagerWrapper;->getExtImpl()Landroid/view/inputmethod/IInputMethodManagerExt;

    move-result-object v4

    iget-object v5, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v5}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmCursorAnchorInfo(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v5

    iget-object v6, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v6}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmVirtualDisplayToScreenMatrix(Landroid/view/inputmethod/InputMethodManager;)Landroid/graphics/Matrix;

    move-result-object v6

    .line 1157
    invoke-static {v5, v6}, Landroid/view/inputmethod/CursorAnchorInfo;->createForAdditionalParentMatrix(Landroid/view/inputmethod/CursorAnchorInfo;Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v5

    .line 1156
    invoke-interface {v4, v5}, Landroid/view/inputmethod/IInputMethodManagerExt;->updateCursorAnchorInfoToSynergy(Landroid/view/inputmethod/CursorAnchorInfo;)V

    .line 1160
    .end local v0    # "currentValues":[F
    .end local v3    # "isMonitoring":Z
    monitor-exit v9

    .line 1161
    return-void

    .line 1142
    .restart local v0    # "currentValues":[F
    :cond_7
    :goto_1
    monitor-exit v9

    return-void

    .line 1129
    .end local v0    # "currentValues":[F
    :cond_8
    :goto_2
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0, v4}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmVirtualDisplayToScreenMatrix(Landroid/view/inputmethod/InputMethodManager;Landroid/graphics/Matrix;)V

    .line 1130
    monitor-exit v9

    return-void

    .line 1160
    :catchall_1
    move-exception v0

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 1031
    .end local v7    # "matrixValues":[F
    .end local v8    # "bindSequence":I
    :sswitch_2
    iget v3, v2, Landroid/os/Message;->arg1:I

    .line 1032
    .local v3, "sequence":I
    iget v4, v2, Landroid/os/Message;->arg2:I

    .line 1033
    .local v4, "id":I
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v0, :cond_9

    .line 1034
    const-string v0, "InputMethodManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage: MSG_UNBIND_ACCESSIBILITY_SERVICE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    :cond_9
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v5

    .line 1038
    :try_start_2
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v0, v0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    if-eq v0, v3, :cond_b

    .line 1039
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v0, :cond_a

    .line 1040
    const-string v0, "InputMethodManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mBindSequence ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v7, v7, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " sequence ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    :cond_a
    monitor-exit v5

    return-void

    .line 1045
    :cond_b
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v4}, Landroid/view/inputmethod/InputMethodManager;->clearAccessibilityBindingLocked(I)V

    .line 1046
    monitor-exit v5

    .line 1047
    return-void

    .line 1046
    :catchall_2
    move-exception v0

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    .line 985
    .end local v3    # "sequence":I
    .end local v4    # "id":I
    :sswitch_3
    iget v3, v2, Landroid/os/Message;->arg1:I

    .line 986
    .local v3, "id":I
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/android/internal/inputmethod/InputBindResult;

    .line 987
    .local v4, "res":Lcom/android/internal/inputmethod/InputBindResult;
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 988
    const-string v0, "InputMethodManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage: MSG_BIND_ACCESSIBILITY "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Lcom/android/internal/inputmethod/InputBindResult;->sequence:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/android/internal/inputmethod/InputBindResult;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    :cond_c
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v7

    .line 992
    :try_start_3
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v0, v0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    if-ltz v0, :cond_10

    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v0, v0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    iget v5, v4, Lcom/android/internal/inputmethod/InputBindResult;->sequence:I

    if-eq v0, v5, :cond_d

    goto :goto_4

    .line 1004
    :cond_d
    iget-object v0, v4, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    if-eqz v0, :cond_f

    .line 1005
    iget-object v0, v4, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    .line 1007
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    .line 1006
    invoke-static {v0}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->createOrNull(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;)Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;

    move-result-object v0

    .line 1008
    .local v0, "invoker":Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;
    if-eqz v0, :cond_f

    .line 1009
    iget-object v5, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v5}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmAccessibilityInputMethodSession(Landroid/view/inputmethod/InputMethodManager;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1010
    iget-object v5, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, v5, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    if-eqz v5, :cond_e

    .line 1011
    iget-object v5, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v9, v5, Landroid/view/inputmethod/InputMethodManager;->mInitialSelStart:I

    iget-object v5, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v10, v5, Landroid/view/inputmethod/InputMethodManager;->mInitialSelEnd:I

    iget-object v5, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v11, v5, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    iget-object v5, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v12, v5, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    iget-object v5, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v13, v5, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    iget-object v5, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v14, v5, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    move-object v8, v0

    invoke-virtual/range {v8 .. v14}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->updateSelection(IIIIII)V

    goto :goto_3

    .line 1020
    :cond_e
    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, -0x1

    move-object v8, v0

    invoke-virtual/range {v8 .. v14}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->updateSelection(IIIIII)V

    .line 1024
    .end local v0    # "invoker":Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;
    :cond_f
    :goto_3
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v5, v4, Lcom/android/internal/inputmethod/InputBindResult;->sequence:I

    iput v5, v0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    .line 1025
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1026
    iget-object v8, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/16 v9, 0xc

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z

    .line 1028
    return-void

    .line 993
    :cond_10
    :goto_4
    :try_start_4
    const-string v0, "InputMethodManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring onBind: cur seq="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v6, v6, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", given seq="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Lcom/android/internal/inputmethod/InputBindResult;->sequence:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    iget-object v0, v4, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v0, :cond_11

    iget-object v0, v4, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    iget-object v5, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, v5, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    if-eq v0, v5, :cond_11

    .line 996
    iget-object v0, v4, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 998
    :cond_11
    monitor-exit v7

    return-void

    .line 1025
    :catchall_3
    move-exception v0

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    .line 1105
    .end local v3    # "id":I
    .end local v4    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    :sswitch_4
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_12

    goto :goto_5

    :cond_12
    move v5, v6

    :goto_5
    move v3, v5

    .line 1106
    .local v3, "fullscreen":Z
    const/4 v4, 0x0

    .line 1107
    .local v4, "ic":Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v5

    .line 1108
    :try_start_5
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-boolean v0, v0, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    if-eq v0, v3, :cond_13

    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    if-eqz v0, :cond_13

    .line 1109
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    move-object v4, v0

    .line 1110
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iput-boolean v3, v0, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    .line 1112
    :cond_13
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 1113
    if-eqz v4, :cond_14

    .line 1114
    invoke-virtual {v4, v3}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->dispatchReportFullscreenMode(Z)V

    .line 1116
    :cond_14
    return-void

    .line 1112
    :catchall_4
    move-exception v0

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v0

    .line 1101
    .end local v3    # "fullscreen":Z
    .end local v4    # "ic":Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;
    :sswitch_5
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v3, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3, v6, v6}, Landroid/view/inputmethod/InputMethodManager;->finishedInputEvent(IZZ)V

    .line 1102
    return-void

    .line 1097
    :sswitch_6
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v3, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3, v6, v5}, Landroid/view/inputmethod/InputMethodManager;->finishedInputEvent(IZZ)V

    .line 1098
    return-void

    .line 1093
    :sswitch_7
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    invoke-virtual {v0, v3}, Landroid/view/inputmethod/InputMethodManager;->sendInputEventAndReportResultOnMainLooper(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V

    .line 1094
    return-void

    .line 1050
    :sswitch_8
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_15

    move v0, v5

    goto :goto_6

    :cond_15
    move v0, v6

    :goto_6
    move v7, v0

    .line 1051
    .local v7, "active":Z
    iget v0, v2, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_16

    move v0, v5

    goto :goto_7

    :cond_16
    move v0, v6

    :goto_7
    move v8, v0

    .line 1052
    .local v8, "fullscreen":Z
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_17

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v5

    goto :goto_8

    :cond_17
    move v0, v6

    :goto_8
    move v9, v0

    .line 1053
    .local v9, "reportToImeController":Z
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v0, :cond_18

    .line 1054
    const-string v0, "InputMethodManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleMessage: MSG_SET_ACTIVE "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", was "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-boolean v11, v11, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    :cond_18
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v10, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v10

    .line 1057
    :try_start_7
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iput-boolean v7, v0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    .line 1058
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iput-boolean v8, v0, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    .line 1062
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mgetFocusController(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/ImeFocusController;

    move-result-object v0

    .line 1063
    .local v0, "controller":Landroid/view/ImeFocusController;
    iget-object v11, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v11, v11, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v11, :cond_19

    iget-object v4, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v4, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v4

    .line 1064
    .local v4, "rootView":Landroid/view/View;
    :cond_19
    if-eqz v0, :cond_1a

    if-eqz v4, :cond_1a

    if-eqz v9, :cond_1a

    .line 1065
    new-instance v3, Landroid/view/inputmethod/InputMethodManager$H$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v7}, Landroid/view/inputmethod/InputMethodManager$H$$ExternalSyntheticLambda0;-><init>(Landroid/view/ImeFocusController;Z)V

    invoke-virtual {v4, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1066
    monitor-exit v10

    return-void

    .line 1069
    :cond_1a
    if-nez v7, :cond_1b

    .line 1073
    iget-object v11, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v11, v5}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmRestartOnNextWindowFocus(Landroid/view/inputmethod/InputMethodManager;Z)V

    .line 1076
    iget-object v5, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v5}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmFallbackInputConnection(Landroid/view/inputmethod/InputMethodManager;)Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->finishComposingTextFromImm()V

    .line 1080
    :cond_1b
    iget-object v5, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v5}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mgetServedViewLocked(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/View;

    move-result-object v5

    .line 1081
    .local v5, "servedView":Landroid/view/View;
    if-eqz v5, :cond_1d

    invoke-static {v5}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$smcanStartInput(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_1d

    .line 1082
    iget-object v11, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v11, v11, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v11, :cond_1d

    iget-object v11, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v11, v11, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {v11}, Landroid/view/ViewRootImpl;->getImeFocusController()Landroid/view/ImeFocusController;

    move-result-object v11

    iget-object v12, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v12}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmRestartOnNextWindowFocus(Landroid/view/inputmethod/InputMethodManager;)Z

    move-result v12

    .line 1083
    invoke-virtual {v11, v12, v6}, Landroid/view/ImeFocusController;->checkFocus(ZZ)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 1084
    if-eqz v7, :cond_1c

    const/16 v3, 0x8

    move v12, v3

    goto :goto_9

    .line 1085
    :cond_1c
    move v12, v3

    :goto_9
    nop

    .line 1086
    .local v12, "reason":I
    iget-object v3, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v11, v3, Landroid/view/inputmethod/InputMethodManager;->mDelegate:Landroid/view/inputmethod/InputMethodManager$DelegateImpl;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->startInput(ILandroid/view/View;III)Z

    .line 1089
    .end local v0    # "controller":Landroid/view/ImeFocusController;
    .end local v4    # "rootView":Landroid/view/View;
    .end local v5    # "servedView":Landroid/view/View;
    .end local v12    # "reason":I
    :cond_1d
    monitor-exit v10

    .line 1090
    return-void

    .line 1089
    :catchall_5
    move-exception v0

    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw v0

    .line 956
    .end local v7    # "active":Z
    .end local v8    # "fullscreen":Z
    .end local v9    # "reportToImeController":Z
    :sswitch_9
    iget v3, v2, Landroid/os/Message;->arg1:I

    .line 958
    .local v3, "sequence":I
    iget v4, v2, Landroid/os/Message;->arg2:I

    .line 959
    .local v4, "reason":I
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v0, :cond_1e

    .line 960
    const-string v0, "InputMethodManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage: MSG_UNBIND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " reason="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 961
    invoke-static {v4}, Lcom/android/internal/inputmethod/InputMethodDebug;->unbindReasonToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 960
    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    :cond_1e
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v7

    .line 965
    :try_start_8
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v0, v0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    if-eq v0, v3, :cond_1f

    .line 966
    monitor-exit v7

    return-void

    .line 968
    :cond_1f
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->clearAllAccessibilityBindingLocked()V

    .line 969
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->clearBindingLocked()V

    .line 972
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mgetServedViewLocked(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/View;

    move-result-object v0

    .line 973
    .local v0, "servedView":Landroid/view/View;
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_20

    .line 974
    iget-object v6, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iput-boolean v5, v6, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 976
    :cond_20
    iget-object v5, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-boolean v5, v5, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    move v0, v5

    .line 977
    .local v0, "startInput":Z
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 978
    if-eqz v0, :cond_21

    .line 979
    iget-object v8, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v9, 0x7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z

    .line 982
    :cond_21
    return-void

    .line 977
    .end local v0    # "startInput":Z
    :catchall_6
    move-exception v0

    :try_start_9
    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    throw v0

    .line 925
    .end local v3    # "sequence":I
    .end local v4    # "reason":I
    :sswitch_a
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/internal/inputmethod/InputBindResult;

    .line 926
    .local v3, "res":Lcom/android/internal/inputmethod/InputBindResult;
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 927
    const-string v0, "InputMethodManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage: MSG_BIND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/android/internal/inputmethod/InputBindResult;->sequence:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/android/internal/inputmethod/InputBindResult;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    :cond_22
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v4

    .line 930
    :try_start_a
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v0, v0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    if-ltz v0, :cond_24

    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v0, v0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    iget v5, v3, Lcom/android/internal/inputmethod/InputBindResult;->sequence:I

    if-eq v0, v5, :cond_23

    goto :goto_a

    .line 939
    :cond_23
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0, v6}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmRequestUpdateCursorAnchorInfoMonitorMode(Landroid/view/inputmethod/InputMethodManager;I)V

    .line 942
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, v3, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v0, v5}, Landroid/view/inputmethod/InputMethodManager;->setInputChannelLocked(Landroid/view/InputChannel;)V

    .line 943
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, v3, Lcom/android/internal/inputmethod/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    iput-object v5, v0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    .line 944
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, v3, Lcom/android/internal/inputmethod/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    .line 945
    invoke-static {v5}, Landroid/view/inputmethod/InputMethodSessionWrapper;->createOrNull(Lcom/android/internal/view/IInputMethodSession;)Landroid/view/inputmethod/InputMethodSessionWrapper;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmCurrentInputMethodSession(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodSessionWrapper;)V

    .line 946
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, v3, Lcom/android/internal/inputmethod/InputBindResult;->id:Ljava/lang/String;

    iput-object v5, v0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    .line 947
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v5, v3, Lcom/android/internal/inputmethod/InputBindResult;->sequence:I

    iput v5, v0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    .line 948
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputBindResult;->getVirtualDisplayToScreenMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmVirtualDisplayToScreenMatrix(Landroid/view/inputmethod/InputMethodManager;Landroid/graphics/Matrix;)V

    .line 949
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-boolean v5, v3, Lcom/android/internal/inputmethod/InputBindResult;->isInputMethodSuppressingSpellChecker:Z

    invoke-static {v0, v5}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmIsInputMethodSuppressingSpellChecker(Landroid/view/inputmethod/InputMethodManager;Z)V

    .line 951
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 952
    iget-object v6, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z

    .line 953
    return-void

    .line 931
    :cond_24
    :goto_a
    :try_start_b
    const-string v0, "InputMethodManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring onBind: cur seq="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v6, v6, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", given seq="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/internal/inputmethod/InputBindResult;->sequence:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    iget-object v0, v3, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v0, :cond_25

    iget-object v0, v3, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    iget-object v5, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, v5, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    if-eq v0, v5, :cond_25

    .line 934
    iget-object v0, v3, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 936
    :cond_25
    monitor-exit v4

    return-void

    .line 951
    :catchall_7
    move-exception v0

    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    throw v0

    .line 911
    .end local v3    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    :sswitch_b
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/internal/os/SomeArgs;

    .line 913
    .local v3, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_c
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Ljava/io/FileDescriptor;

    iget-object v5, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Ljava/io/PrintWriter;

    iget-object v6, v3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v0, v4, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0

    .line 917
    goto :goto_b

    .line 915
    :catch_0
    move-exception v0

    .line 916
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v4, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/io/PrintWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 918
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_b
    iget-object v4, v3, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    monitor-enter v4

    .line 919
    :try_start_d
    iget-object v0, v3, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 920
    monitor-exit v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 921
    invoke-virtual {v3}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 922
    return-void

    .line 920
    :catchall_8
    move-exception v0

    :try_start_e
    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_b
        0x2 -> :sswitch_a
        0x3 -> :sswitch_9
        0x4 -> :sswitch_8
        0x5 -> :sswitch_7
        0x6 -> :sswitch_6
        0x7 -> :sswitch_5
        0xa -> :sswitch_4
        0xb -> :sswitch_3
        0xc -> :sswitch_2
        0x1e -> :sswitch_1
        0x1f -> :sswitch_0
    .end sparse-switch
.end method
