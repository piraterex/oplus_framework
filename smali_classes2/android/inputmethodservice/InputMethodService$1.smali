.class Landroid/inputmethodservice/InputMethodService$1;
.super Ljava/lang/Object;
.source "InputMethodService.java"

# interfaces
.implements Landroid/inputmethodservice/InputMethodServiceInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/InputMethodService;->createInputMethodServiceInternal()Landroid/inputmethodservice/InputMethodServiceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method constructor blacklist <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/inputmethodservice/InputMethodService;

    .line 3768
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$1;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist exposeContentInternal(Landroid/view/inputmethod/InputContentInfo;Landroid/view/inputmethod/EditorInfo;)V
    .locals 4
    .param p1, "inputContentInfo"    # Landroid/view/inputmethod/InputContentInfo;
    .param p2, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;

    .line 3819
    invoke-virtual {p1}, Landroid/view/inputmethod/InputContentInfo;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 3820
    .local v0, "contentUri":Landroid/net/Uri;
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$1;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v1}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmPrivOps(Landroid/inputmethodservice/InputMethodService;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v1

    iget-object v2, p2, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 3821
    invoke-virtual {v1, v0, v2}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->createInputContentUriToken(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/inputmethod/IInputContentUriToken;

    move-result-object v1

    .line 3822
    .local v1, "uriToken":Lcom/android/internal/inputmethod/IInputContentUriToken;
    if-nez v1, :cond_0

    .line 3823
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createInputContentAccessToken failed. contentUri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3824
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3823
    const-string v3, "InputMethodService"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3825
    return-void

    .line 3827
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/inputmethod/InputContentInfo;->setUriToken(Lcom/android/internal/inputmethod/IInputContentUriToken;)V

    .line 3828
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 3835
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$1;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1, p2, p3}, Landroid/inputmethodservice/InputMethodService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3836
    return-void
.end method

.method public blacklist exposeContent(Landroid/view/inputmethod/InputContentInfo;Landroid/view/inputmethod/InputConnection;)V
    .locals 1
    .param p1, "inputContentInfo"    # Landroid/view/inputmethod/InputContentInfo;
    .param p2, "inputConnection"    # Landroid/view/inputmethod/InputConnection;

    .line 3784
    if-nez p2, :cond_0

    .line 3785
    return-void

    .line 3787
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$1;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eq v0, p2, :cond_1

    .line 3788
    return-void

    .line 3790
    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$1;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/inputmethodservice/InputMethodService$1;->exposeContentInternal(Landroid/view/inputmethod/InputContentInfo;Landroid/view/inputmethod/EditorInfo;)V

    .line 3791
    return-void
.end method

.method public blacklist getContext()Landroid/content/Context;
    .locals 1

    .line 3775
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$1;->this$0:Landroid/inputmethodservice/InputMethodService;

    return-object v0
.end method

.method public blacklist notifyUserActionIfNecessary()V
    .locals 3

    .line 3798
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$1;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmLock(Landroid/inputmethodservice/InputMethodService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3799
    :try_start_0
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$1;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v1}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmNotifyUserActionSent(Landroid/inputmethodservice/InputMethodService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3800
    monitor-exit v0

    return-void

    .line 3802
    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$1;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v1}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmPrivOps(Landroid/inputmethodservice/InputMethodService;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->notifyUserActionAsync()V

    .line 3803
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$1;->this$0:Landroid/inputmethodservice/InputMethodService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fputmNotifyUserActionSent(Landroid/inputmethodservice/InputMethodService;Z)V

    .line 3804
    monitor-exit v0

    .line 3805
    return-void

    .line 3804
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist triggerServiceDump(Ljava/lang/String;[B)V
    .locals 2
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "icProto"    # [B

    .line 3843
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$1;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v1}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmDumper(Landroid/inputmethodservice/InputMethodService;)Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;[B)V

    .line 3844
    return-void
.end method
