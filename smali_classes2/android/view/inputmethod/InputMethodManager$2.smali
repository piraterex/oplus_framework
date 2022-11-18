.class Landroid/view/inputmethod/InputMethodManager$2;
.super Lcom/android/internal/view/IInputMethodClient$Stub;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor blacklist <init>(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/inputmethod/InputMethodManager;

    .line 1175
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$2;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Lcom/android/internal/view/IInputMethodClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1180
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1181
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 1182
    .local v2, "sargs":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1183
    iput-object p2, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1184
    iput-object p3, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1185
    iput-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 1186
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$2;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v3, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager$2;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v4, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    invoke-virtual {v4, v1, v2}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/view/inputmethod/InputMethodManager$H;->sendMessage(Landroid/os/Message;)Z

    .line 1188
    const-wide/16 v3, 0x5

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1189
    const-string v1, "Timeout waiting for dump"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1193
    :cond_0
    goto :goto_0

    .line 1191
    :catch_0
    move-exception v1

    .line 1192
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v3, "Interrupted waiting for dump"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1194
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method

.method public blacklist onBindAccessibilityService(Lcom/android/internal/inputmethod/InputBindResult;I)V
    .locals 3
    .param p1, "res"    # Lcom/android/internal/inputmethod/InputBindResult;
    .param p2, "id"    # I

    .line 1203
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$2;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1204
    return-void
.end method

.method public blacklist onBindMethod(Lcom/android/internal/inputmethod/InputBindResult;)V
    .locals 2
    .param p1, "res"    # Lcom/android/internal/inputmethod/InputBindResult;

    .line 1198
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$2;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1199
    return-void
.end method

.method public blacklist onUnbindAccessibilityService(II)V
    .locals 2
    .param p1, "sequence"    # I
    .param p2, "id"    # I

    .line 1213
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$2;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1214
    return-void
.end method

.method public blacklist onUnbindMethod(II)V
    .locals 2
    .param p1, "sequence"    # I
    .param p2, "unbindReason"    # I

    .line 1208
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$2;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1209
    return-void
.end method

.method public blacklist reportFullscreenMode(Z)V
    .locals 3
    .param p1, "fullscreen"    # Z

    .line 1231
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$2;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1232
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1233
    return-void
.end method

.method public blacklist scheduleStartInputIfNecessary(Z)V
    .locals 3
    .param p1, "fullscreen"    # Z

    .line 1225
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$2;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1226
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$2;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p1}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1227
    return-void
.end method

.method public blacklist setActive(ZZZ)V
    .locals 3
    .param p1, "active"    # Z
    .param p2, "fullscreen"    # Z
    .param p3, "reportToImeController"    # Z

    .line 1218
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$2;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    .line 1219
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1218
    const/4 v2, 0x4

    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1219
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1220
    return-void
.end method

.method public blacklist setImeTraceEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 1243
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/ImeTracing;->setEnabled(Z)V

    .line 1244
    return-void
.end method

.method public blacklist throwExceptionFromSystem(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 1248
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist updateVirtualDisplayToScreenMatrix(I[F)V
    .locals 3
    .param p1, "bindSequence"    # I
    .param p2, "matrixValues"    # [F

    .line 1237
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$2;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/16 v1, 0x1e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1238
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1239
    return-void
.end method
