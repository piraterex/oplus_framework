.class public Landroid/inputmethodservice/InputMethodService$InputMethodImpl;
.super Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InputMethodImpl"
.end annotation


# instance fields
.field private blacklist mSystemCallingHideSoftInput:Z

.field private blacklist mSystemCallingShowSoftInput:Z

.field final synthetic blacklist this$0:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method public constructor whitelist <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/inputmethodservice/InputMethodService;

    .line 679
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-direct {p0, p1}, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;-><init>(Landroid/inputmethodservice/AbstractInputMethodService;)V

    return-void
.end method


# virtual methods
.method public whitelist attachToken(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 731
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_1

    .line 735
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InputMethodService;->attachToWindowToken(Landroid/os/IBinder;)V

    .line 736
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iput-object p1, v0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    .line 737
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/SoftInputWindow;->setToken(Landroid/os/IBinder;)V

    .line 738
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmInkWindow(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/InkWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmInkWindow(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/InkWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InkWindow;->setToken(Landroid/os/IBinder;)V

    .line 741
    :cond_0
    return-void

    .line 732
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attachToken() must be called at most once. token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist bindInput(Landroid/view/inputmethod/InputBinding;)V
    .locals 4
    .param p1, "binding"    # Landroid/view/inputmethod/InputBinding;

    .line 751
    const-wide/16 v0, 0x20

    const-string v2, "IMS.bindInput"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 752
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iput-object p1, v2, Landroid/inputmethodservice/InputMethodService;->mInputBinding:Landroid/view/inputmethod/InputBinding;

    .line 753
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputBinding;->getConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    iput-object v3, v2, Landroid/inputmethodservice/InputMethodService;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 754
    sget-boolean v2, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindInput(): binding="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ic="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v3, v3, Landroid/inputmethodservice/InputMethodService;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InputMethod"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :cond_0
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v2}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$mreportFullscreenMode(Landroid/inputmethodservice/InputMethodService;)V

    .line 757
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v2}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    .line 758
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v2}, Landroid/inputmethodservice/InputMethodService;->onBindInput()V

    .line 759
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v2}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmConfigTracker(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/ImsConfigurationTracker;

    move-result-object v2

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v3}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/inputmethodservice/ImsConfigurationTracker;->onBindInput(Landroid/content/res/Resources;)V

    .line 760
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 761
    return-void
.end method

.method public blacklist canStartStylusHandwriting(I)V
    .locals 3
    .param p1, "requestId"    # I

    .line 956
    sget-boolean v0, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    const-string v1, "InputMethod"

    if-eqz v0, :cond_0

    const-string v0, "canStartStylusHandwriting()"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmHandwritingRequestId(Landroid/inputmethodservice/InputMethodService;)Ljava/util/OptionalInt;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 958
    const-string v0, "There is an ongoing Handwriting session. ignoring."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    return-void

    .line 961
    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-boolean v0, v0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    if-nez v0, :cond_2

    .line 962
    const-string v0, "Input should have started before starting Stylus handwriting."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    return-void

    .line 965
    :cond_2
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmOnPreparedStylusHwCalled(Landroid/inputmethodservice/InputMethodService;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 967
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->onPrepareStylusHandwriting()V

    .line 968
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fputmOnPreparedStylusHwCalled(Landroid/inputmethodservice/InputMethodService;Z)V

    .line 970
    :cond_3
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->onStartStylusHandwriting()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 971
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmPrivOps(Landroid/inputmethodservice/InputMethodService;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->onStylusHandwritingReady(II)V

    goto :goto_0

    .line 973
    :cond_4
    const-string v0, "IME is not ready. Can\'t start Stylus Handwriting"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    :goto_0
    return-void
.end method

.method public whitelist changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 1
    .param p1, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .line 1042
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0, p1}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$mdispatchOnCurrentInputMethodSubtypeChanged(Landroid/inputmethodservice/InputMethodService;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 1043
    return-void
.end method

.method public final blacklist dispatchStartInputWithToken(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;ZLandroid/os/IBinder;ILandroid/window/ImeOnBackInvokedDispatcher;)V
    .locals 1
    .param p1, "inputConnection"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p3, "restarting"    # Z
    .param p4, "startInputToken"    # Landroid/os/IBinder;
    .param p5, "navButtonFlags"    # I
    .param p6, "imeDispatcher"    # Landroid/window/ImeOnBackInvokedDispatcher;

    .line 817
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmPrivOps(Landroid/inputmethodservice/InputMethodService;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->reportStartInputAsync(Landroid/os/IBinder;)V

    .line 818
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmNavigationBarController(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/NavigationBarController;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/inputmethodservice/NavigationBarController;->onNavButtonFlagsChanged(I)V

    .line 819
    if-eqz p3, :cond_0

    .line 820
    invoke-virtual {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->restartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    goto :goto_0

    .line 822
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->startInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    .line 828
    :goto_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0, p6}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fputmImeDispatcher(Landroid/inputmethodservice/InputMethodService;Landroid/window/ImeOnBackInvokedDispatcher;)V

    .line 829
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    if-eqz v0, :cond_1

    .line 830
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    invoke-interface {v0, p6}, Landroid/window/OnBackInvokedDispatcher;->setImeOnBackInvokedDispatcher(Landroid/window/ImeOnBackInvokedDispatcher;)V

    .line 833
    :cond_1
    return-void
.end method

.method public blacklist finishStylusHandwriting()V
    .locals 1

    .line 1033
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->finishStylusHandwriting()V

    .line 1034
    return-void
.end method

.method public whitelist hideSoftInput(ILandroid/os/ResultReceiver;)V
    .locals 8
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 866
    sget-boolean v0, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    const-string v1, "InputMethod"

    if-eqz v0, :cond_0

    const-string v0, "hideSoftInput()"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmImsWrapper(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/InputMethodService$InputMethodServiceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService$InputMethodServiceWrapper;->getExtImpl()Landroid/inputmethodservice/IInputMethodServiceExt;

    move-result-object v0

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v2, v2, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-interface {v0, p1, v2}, Landroid/inputmethodservice/IInputMethodServiceExt;->hookHideImmediately(ILandroid/inputmethodservice/SoftInputWindow;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 870
    return-void

    .line 873
    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_2

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->mSystemCallingHideSoftInput:Z

    if-nez v0, :cond_2

    .line 875
    const-string v0, "IME shouldn\'t call hideSoftInput on itself. Use requestHideSelf(int) itself"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    return-void

    .line 879
    :cond_2
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v1}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmDumper(Landroid/inputmethodservice/InputMethodService;)Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    move-result-object v1

    const-string v2, "InputMethodService.InputMethodImpl#hideSoftInput"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/internal/inputmethod/ImeTracing;->triggerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;[B)V

    .line 882
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v0

    .line 883
    .local v0, "wasVisible":Z
    const-wide/16 v1, 0x20

    const-string v4, "IMS.hideSoftInput"

    invoke-static {v1, v2, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 885
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    const/4 v5, 0x0

    iput v5, v4, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    .line 886
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iput-boolean v5, v4, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    .line 887
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v4}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    .line 888
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v4}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v4

    .line 889
    .local v4, "isVisible":Z
    const/4 v6, 0x1

    if-eq v4, v0, :cond_3

    move v7, v6

    goto :goto_0

    :cond_3
    move v7, v5

    .line 890
    .local v7, "visibilityChanged":Z
    :goto_0
    if-eqz p2, :cond_6

    .line 891
    if-eqz v7, :cond_4

    .line 892
    const/4 v5, 0x3

    goto :goto_1

    .line 893
    :cond_4
    if-eqz v0, :cond_5

    goto :goto_1

    .line 894
    :cond_5
    move v5, v6

    :goto_1
    nop

    .line 891
    invoke-virtual {p2, v5, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 896
    :cond_6
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 897
    return-void
.end method

.method public blacklist hideSoftInputWithToken(ILandroid/os/ResultReceiver;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p3, "hideInputToken"    # Landroid/os/IBinder;

    .line 853
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->mSystemCallingHideSoftInput:Z

    .line 854
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0, p3}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fputmCurHideInputToken(Landroid/inputmethodservice/InputMethodService;Landroid/os/IBinder;)V

    .line 855
    invoke-virtual {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->hideSoftInput(ILandroid/os/ResultReceiver;)V

    .line 856
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fputmCurHideInputToken(Landroid/inputmethodservice/InputMethodService;Landroid/os/IBinder;)V

    .line 857
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->mSystemCallingHideSoftInput:Z

    .line 858
    return-void
.end method

.method public blacklist initInkWindow()V
    .locals 2

    .line 1022
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmInkWindow(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/InkWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/inputmethodservice/InkWindow;->initOnly()V

    .line 1023
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->onPrepareStylusHandwriting()V

    .line 1024
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fputmOnPreparedStylusHwCalled(Landroid/inputmethodservice/InputMethodService;Z)V

    .line 1025
    return-void
.end method

.method public final blacklist initializeInternal(Landroid/os/IBinder;Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;IZI)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "privilegedOperations"    # Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;
    .param p3, "configChanges"    # I
    .param p4, "stylusHwSupported"    # Z
    .param p5, "navButtonFlags"    # I

    .line 693
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmDestroyed(Landroid/inputmethodservice/InputMethodService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    const-string v0, "InputMethod"

    const-string v1, "The InputMethodService has already onDestroyed().Ignore the initialization."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    return-void

    .line 698
    :cond_0
    const-wide/16 v0, 0x20

    const-string v2, "IMS.initializeInternal"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 699
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v2}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmConfigTracker(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/ImsConfigurationTracker;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/inputmethodservice/ImsConfigurationTracker;->onInitialize(I)V

    .line 700
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v2}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmPrivOps(Landroid/inputmethodservice/InputMethodService;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->set(Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;)V

    .line 701
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v2}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmPrivOps(Landroid/inputmethodservice/InputMethodService;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->put(Landroid/os/IBinder;Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;)V

    .line 702
    if-eqz p4, :cond_1

    .line 703
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    new-instance v3, Landroid/inputmethodservice/InkWindow;

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v4, v4, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v4}, Landroid/inputmethodservice/SoftInputWindow;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/inputmethodservice/InkWindow;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fputmInkWindow(Landroid/inputmethodservice/InputMethodService;Landroid/inputmethodservice/InkWindow;)V

    .line 705
    :cond_1
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v2}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmNavigationBarController(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/NavigationBarController;

    move-result-object v2

    invoke-virtual {v2, p5}, Landroid/inputmethodservice/NavigationBarController;->onNavButtonFlagsChanged(I)V

    .line 706
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->attachToken(Landroid/os/IBinder;)V

    .line 707
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 708
    return-void
.end method

.method synthetic blacklist lambda$startStylusHandwriting$0$android-inputmethodservice-InputMethodService$InputMethodImpl(Landroid/view/InputEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 1008
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    .line 1009
    const/4 v0, 0x0

    return v0

    .line 1011
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    move-object v1, p1

    check-cast v1, Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InputMethodService;->onStylusHandwritingMotionEvent(Landroid/view/MotionEvent;)V

    .line 1012
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist onCreateInlineSuggestionsRequest(Lcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;)V
    .locals 2
    .param p1, "requestInfo"    # Lcom/android/internal/view/InlineSuggestionsRequestInfo;
    .param p2, "cb"    # Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    .line 719
    sget-boolean v0, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 720
    const-string v0, "InputMethod"

    const-string v1, "InputMethodService received onCreateInlineSuggestionsRequest()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmInlineSuggestionSessionController(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/InlineSuggestionSessionController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/InlineSuggestionSessionController;->onMakeInlineSuggestionsRequest(Lcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;)V

    .line 723
    return-void
.end method

.method public blacklist onNavButtonFlagsChanged(I)V
    .locals 1
    .param p1, "navButtonFlags"    # I

    .line 842
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmNavigationBarController(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/NavigationBarController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/NavigationBarController;->onNavButtonFlagsChanged(I)V

    .line 843
    return-void
.end method

.method public whitelist restartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .locals 4
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "attribute"    # Landroid/view/inputmethod/EditorInfo;

    .line 801
    sget-boolean v0, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restartInput(): editor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethod"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :cond_0
    const-wide/16 v0, 0x20

    const-string v2, "IMS.restartInput"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 803
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, p2, v3}, Landroid/inputmethodservice/InputMethodService;->doStartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 804
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 805
    return-void
.end method

.method public whitelist showSoftInput(ILandroid/os/ResultReceiver;)V
    .locals 9
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 920
    sget-boolean v0, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    const-string v1, "InputMethod"

    if-eqz v0, :cond_0

    const-string v0, "showSoftInput()"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_1

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->mSystemCallingShowSoftInput:Z

    if-nez v0, :cond_1

    .line 924
    const-string v0, " IME shouldn\'t call showSoftInput on itself. Use requestShowSelf(int) itself"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    return-void

    .line 929
    :cond_1
    const-wide/16 v0, 0x20

    const-string v2, "IMS.showSoftInput"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 930
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v2

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v3}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmDumper(Landroid/inputmethodservice/InputMethodService;)Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    move-result-object v3

    const-string v4, "InputMethodService.InputMethodImpl#showSoftInput"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Lcom/android/internal/inputmethod/ImeTracing;->triggerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;[B)V

    .line 933
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v2}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v2

    .line 934
    .local v2, "wasVisible":Z
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    const/4 v4, 0x0

    invoke-static {v3, p1, v4}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$mdispatchOnShowInputRequested(Landroid/inputmethodservice/InputMethodService;IZ)Z

    move-result v3

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    .line 935
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v3, v6}, Landroid/inputmethodservice/InputMethodService;->showWindow(Z)V

    .line 937
    :cond_2
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v3}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$mmapToImeWindowStatus(Landroid/inputmethodservice/InputMethodService;)I

    move-result v7

    iget-object v8, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget v8, v8, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    invoke-static {v3, v7, v8}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$msetImeWindowStatus(Landroid/inputmethodservice/InputMethodService;II)V

    .line 939
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v3}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v3

    .line 940
    .local v3, "isVisible":Z
    if-eq v3, v2, :cond_3

    move v7, v6

    goto :goto_0

    :cond_3
    move v7, v4

    .line 941
    .local v7, "visibilityChanged":Z
    :goto_0
    if-eqz p2, :cond_6

    .line 942
    if-eqz v7, :cond_4

    .line 943
    const/4 v4, 0x2

    goto :goto_1

    .line 944
    :cond_4
    if-eqz v2, :cond_5

    goto :goto_1

    .line 945
    :cond_5
    move v4, v6

    :goto_1
    nop

    .line 942
    invoke-virtual {p2, v4, v5}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 947
    :cond_6
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 948
    return-void
.end method

.method public blacklist showSoftInputWithToken(ILandroid/os/ResultReceiver;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p3, "showInputToken"    # Landroid/os/IBinder;

    .line 907
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->mSystemCallingShowSoftInput:Z

    .line 908
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0, p3}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fputmCurShowInputToken(Landroid/inputmethodservice/InputMethodService;Landroid/os/IBinder;)V

    .line 909
    invoke-virtual {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->showSoftInput(ILandroid/os/ResultReceiver;)V

    .line 910
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fputmCurShowInputToken(Landroid/inputmethodservice/InputMethodService;Landroid/os/IBinder;)V

    .line 911
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->mSystemCallingShowSoftInput:Z

    .line 912
    return-void
.end method

.method public whitelist startInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .locals 4
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "attribute"    # Landroid/view/inputmethod/EditorInfo;

    .line 789
    sget-boolean v0, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startInput(): editor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethod"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_0
    const-wide/16 v0, 0x20

    const-string v2, "IMS.startInput"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 791
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, v3}, Landroid/inputmethodservice/InputMethodService;->doStartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 792
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 793
    return-void
.end method

.method public blacklist startStylusHandwriting(ILandroid/view/InputChannel;Ljava/util/List;)V
    .locals 5
    .param p1, "requestId"    # I
    .param p2, "channel"    # Landroid/view/InputChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/InputChannel;",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;)V"
        }
    .end annotation

    .line 987
    .local p3, "stylusEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/MotionEvent;>;"
    sget-boolean v0, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "InputMethod"

    const-string v1, "startStylusHandwriting()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    :cond_0
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmHandwritingRequestId(Landroid/inputmethodservice/InputMethodService;)Ljava/util/OptionalInt;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 992
    return-void

    .line 995
    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {p1}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fputmHandwritingRequestId(Landroid/inputmethodservice/InputMethodService;Ljava/util/OptionalInt;)V

    .line 996
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    .line 998
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmInkWindow(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/InkWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/inputmethodservice/InkWindow;->show()V

    .line 1001
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    new-instance v1, Landroid/inputmethodservice/InputMethodService$InputMethodImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl$$ExternalSyntheticLambda0;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    invoke-interface {p3, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1004
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    new-instance v1, Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver;

    .line 1006
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v3

    new-instance v4, Landroid/inputmethodservice/InputMethodService$InputMethodImpl$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl$$ExternalSyntheticLambda1;-><init>(Landroid/inputmethodservice/InputMethodService$InputMethodImpl;)V

    invoke-direct {v1, p2, v2, v3, v4}, Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver$InputEventListener;)V

    invoke-static {v0, v1}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fputmHandwritingEventReceiver(Landroid/inputmethodservice/InputMethodService;Landroid/view/InputEventReceiver;)V

    .line 1014
    return-void
.end method

.method public whitelist unbindInput()V
    .locals 2

    .line 771
    sget-boolean v0, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unbindInput(): binding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v1, v1, Landroid/inputmethodservice/InputMethodService;->mInputBinding:Landroid/view/inputmethod/InputBinding;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v1, v1, Landroid/inputmethodservice/InputMethodService;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethod"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->onUnbindInput()V

    .line 775
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/inputmethodservice/InputMethodService;->mInputBinding:Landroid/view/inputmethod/InputBinding;

    .line 776
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iput-object v1, v0, Landroid/inputmethodservice/InputMethodService;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 778
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmInkWindow(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/InkWindow;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 779
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmInkWindow(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/InkWindow;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InkWindow;->hide(Z)V

    .line 781
    :cond_1
    return-void
.end method
