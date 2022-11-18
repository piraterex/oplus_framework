.class public Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;
.super Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InputMethodSessionImpl"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method public constructor whitelist <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/inputmethodservice/InputMethodService;

    .line 1171
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-direct {p0, p1}, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;-><init>(Landroid/inputmethodservice/AbstractInputMethodService;)V

    return-void
.end method


# virtual methods
.method public whitelist appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 1241
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1242
    return-void

    .line 1246
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getWrapper()Landroid/inputmethodservice/IInputMethodServiceWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/inputmethodservice/IInputMethodServiceWrapper;->getExtImpl()Landroid/inputmethodservice/IInputMethodServiceExt;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/inputmethodservice/IInputMethodServiceExt;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1248
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1249
    return-void
.end method

.method public whitelist displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 1
    .param p1, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .line 1185
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1186
    return-void

    .line 1188
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iput-object p1, v0, Landroid/inputmethodservice/InputMethodService;->mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 1189
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InputMethodService;->onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    .line 1190
    return-void
.end method

.method public whitelist finishInput()V
    .locals 2

    .line 1173
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1174
    return-void

    .line 1176
    :cond_0
    sget-boolean v0, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishInput() in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->doFinishInput()V

    .line 1178
    return-void
.end method

.method public final blacklist invalidateInputInternal(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;I)V
    .locals 3
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p3, "sessionId"    # I

    .line 1290
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    instance-of v0, v0, Landroid/inputmethodservice/RemoteInputConnection;

    if-eqz v0, :cond_2

    .line 1291
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    check-cast v0, Landroid/inputmethodservice/RemoteInputConnection;

    .line 1292
    .local v0, "ric":Landroid/inputmethodservice/RemoteInputConnection;
    invoke-virtual {v0, p2}, Landroid/inputmethodservice/RemoteInputConnection;->isSameConnection(Lcom/android/internal/view/IInputContext;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1294
    sget-boolean v1, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1295
    const-string v1, "InputMethodService"

    const-string v2, "ignoring invalidateInput() due to context mismatch."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    :cond_0
    return-void

    .line 1299
    :cond_1
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {p1, v1}, Landroid/view/inputmethod/EditorInfo;->makeCompatible(I)V

    .line 1300
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodService;->getInputMethodInternal()Landroid/view/inputmethod/InputMethod;

    move-result-object v1

    new-instance v2, Landroid/inputmethodservice/RemoteInputConnection;

    invoke-direct {v2, v0, p3}, Landroid/inputmethodservice/RemoteInputConnection;-><init>(Landroid/inputmethodservice/RemoteInputConnection;I)V

    invoke-interface {v1, v2, p1}, Landroid/view/inputmethod/InputMethod;->restartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    .line 1303
    .end local v0    # "ric":Landroid/inputmethodservice/RemoteInputConnection;
    :cond_2
    return-void
.end method

.method public final blacklist removeImeSurface()V
    .locals 1

    .line 1280
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$mscheduleImeSurfaceRemoval(Landroid/inputmethodservice/InputMethodService;)V

    .line 1281
    return-void
.end method

.method public whitelist toggleSoftInput(II)V
    .locals 1
    .param p1, "showFlags"    # I
    .param p2, "hideFlags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1261
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$monToggleSoftInput(Landroid/inputmethodservice/InputMethodService;II)V

    .line 1262
    return-void
.end method

.method public whitelist updateCursor(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "newCursor"    # Landroid/graphics/Rect;

    .line 1230
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1231
    return-void

    .line 1233
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InputMethodService;->onUpdateCursor(Landroid/graphics/Rect;)V

    .line 1234
    return-void
.end method

.method public whitelist updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/inputmethod/CursorAnchorInfo;

    .line 1269
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1270
    return-void

    .line 1272
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InputMethodService;->onUpdateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V

    .line 1273
    return-void
.end method

.method public whitelist updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "text"    # Landroid/view/inputmethod/ExtractedText;

    .line 1197
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1198
    return-void

    .line 1200
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onUpdateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V

    .line 1201
    return-void
.end method

.method public whitelist updateSelection(IIIIII)V
    .locals 8
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "candidatesStart"    # I
    .param p6, "candidatesEnd"    # I

    .line 1210
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1211
    return-void

    .line 1213
    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/inputmethodservice/InputMethodService;->onUpdateSelection(IIIIII)V

    .line 1215
    return-void
.end method

.method public whitelist viewClicked(Z)V
    .locals 1
    .param p1, "focusChanged"    # Z

    .line 1219
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1220
    return-void

    .line 1222
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InputMethodService;->onViewClicked(Z)V

    .line 1223
    return-void
.end method
