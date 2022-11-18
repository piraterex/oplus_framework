.class Landroid/inputmethodservice/IInputMethodSessionWrapper;
.super Lcom/android/internal/view/IInputMethodSession$Stub;
.source "IInputMethodSessionWrapper.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;
    }
.end annotation


# static fields
.field private static final blacklist DO_APP_PRIVATE_COMMAND:I = 0x64

.field private static final blacklist DO_DISPLAY_COMPLETIONS:I = 0x41

.field private static final blacklist DO_FINISH_INPUT:I = 0x8c

.field private static final blacklist DO_FINISH_SESSION:I = 0x6e

.field private static final blacklist DO_INVALIDATE_INPUT:I = 0x96

.field private static final blacklist DO_REMOVE_IME_SURFACE:I = 0x82

.field private static final blacklist DO_UPDATE_CURSOR:I = 0x5f

.field private static final blacklist DO_UPDATE_CURSOR_ANCHOR_INFO:I = 0x63

.field private static final blacklist DO_UPDATE_EXTRACTED_TEXT:I = 0x43

.field private static final blacklist DO_UPDATE_SELECTION:I = 0x5a

.field private static final blacklist DO_VIEW_CLICKED:I = 0x73

.field private static final blacklist TAG:Ljava/lang/String; = "InputMethodWrapper"


# instance fields
.field greylist mCaller:Lcom/android/internal/os/HandlerCaller;

.field blacklist mChannel:Landroid/view/InputChannel;

.field blacklist mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

.field blacklist mReceiver:Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodSession;Landroid/view/InputChannel;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputMethodSession"    # Landroid/view/inputmethod/InputMethodSession;
    .param p3, "channel"    # Landroid/view/InputChannel;

    .line 68
    invoke-direct {p0}, Lcom/android/internal/view/IInputMethodSession$Stub;-><init>()V

    .line 69
    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, p0, v2}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 71
    iput-object p2, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    .line 72
    iput-object p3, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mChannel:Landroid/view/InputChannel;

    .line 73
    if-eqz p3, :cond_0

    .line 74
    new-instance v0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, p3, v1}, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;-><init>(Landroid/inputmethodservice/IInputMethodSessionWrapper;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mReceiver:Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;

    .line 76
    :cond_0
    return-void
.end method

.method private blacklist doFinishSession()V
    .locals 2

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    .line 159
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mReceiver:Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;

    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {v1}, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->dispose()V

    .line 161
    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mReceiver:Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;

    .line 163
    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mChannel:Landroid/view/InputChannel;

    if-eqz v1, :cond_1

    .line 164
    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 165
    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mChannel:Landroid/view/InputChannel;

    .line 167
    :cond_1
    return-void
.end method


# virtual methods
.method public blacklist appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 214
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 215
    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 214
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 216
    return-void
.end method

.method public blacklist displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 2
    .param p1, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .line 171
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x41

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 173
    return-void
.end method

.method public blacklist executeMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 84
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    if-nez v0, :cond_0

    .line 87
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 90
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 91
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 94
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :goto_0
    return-void

    .line 97
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_1

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled message code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void

    .line 144
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 146
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/view/inputmethod/EditorInfo;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/view/IInputContext;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2, v3, v4}, Landroid/view/inputmethod/InputMethodSession;->invalidateInputInternal(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 150
    nop

    .line 151
    return-void

    .line 149
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 150
    throw v1

    .line 140
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_2
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    invoke-interface {v0}, Landroid/view/inputmethod/InputMethodSession;->finishInput()V

    .line 141
    return-void

    .line 136
    :sswitch_3
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    invoke-interface {v0}, Landroid/view/inputmethod/InputMethodSession;->removeImeSurface()V

    .line 137
    return-void

    .line 132
    :sswitch_4
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-interface {v0, v2}, Landroid/view/inputmethod/InputMethodSession;->viewClicked(Z)V

    .line 133
    return-void

    .line 128
    :sswitch_5
    invoke-direct {p0}, Landroid/inputmethodservice/IInputMethodSessionWrapper;->doFinishSession()V

    .line 129
    return-void

    .line 121
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 122
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    invoke-interface {v1, v2, v3}, Landroid/view/inputmethod/InputMethodSession;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 124
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 125
    return-void

    .line 117
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_7
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/inputmethod/CursorAnchorInfo;

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputMethodSession;->updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V

    .line 118
    return-void

    .line 113
    :sswitch_8
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputMethodSession;->updateCursor(Landroid/graphics/Rect;)V

    .line 114
    return-void

    .line 106
    :sswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 107
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget v5, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    iget v6, v0, Lcom/android/internal/os/SomeArgs;->argi5:I

    iget v7, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    invoke-interface/range {v1 .. v7}, Landroid/view/inputmethod/InputMethodSession;->updateSelection(IIIIII)V

    .line 109
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 110
    return-void

    .line 102
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_a
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/inputmethod/ExtractedText;

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputMethodSession;->updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V

    .line 104
    return-void

    .line 99
    :sswitch_b
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Landroid/view/inputmethod/CompletionInfo;

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputMethodSession;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    .line 100
    return-void

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x64 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x41 -> :sswitch_b
        0x43 -> :sswitch_a
        0x5a -> :sswitch_9
        0x5f -> :sswitch_8
        0x63 -> :sswitch_7
        0x64 -> :sswitch_6
        0x6e -> :sswitch_5
        0x73 -> :sswitch_4
        0x82 -> :sswitch_3
        0x8c -> :sswitch_2
        0x96 -> :sswitch_1
    .end sparse-switch
.end method

.method public blacklist finishInput()V
    .locals 2

    .line 231
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x8c

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 232
    return-void
.end method

.method public blacklist finishSession()V
    .locals 2

    .line 220
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 221
    return-void
.end method

.method public blacklist getInternalInputMethodSession()Landroid/view/inputmethod/InputMethodSession;
    .locals 1

    .line 79
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    return-object v0
.end method

.method public blacklist invalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;I)V
    .locals 2
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p3, "sessionId"    # I

    .line 225
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x96

    invoke-virtual {v0, v1, p3, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 227
    return-void
.end method

.method public blacklist removeImeSurface()V
    .locals 2

    .line 197
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 198
    return-void
.end method

.method public blacklist updateCursor(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "newCursor"    # Landroid/graphics/Rect;

    .line 202
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 203
    const/16 v1, 0x5f

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 202
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 204
    return-void
.end method

.method public blacklist updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V
    .locals 2
    .param p1, "cursorAnchorInfo"    # Landroid/view/inputmethod/CursorAnchorInfo;

    .line 208
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 209
    const/16 v1, 0x63

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 208
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 210
    return-void
.end method

.method public blacklist updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "text"    # Landroid/view/inputmethod/ExtractedText;

    .line 177
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x43

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 179
    return-void
.end method

.method public blacklist updateSelection(IIIIII)V
    .locals 9
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "candidatesStart"    # I
    .param p6, "candidatesEnd"    # I

    .line 184
    iget-object v8, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x5a

    move-object v0, v8

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIIIII(IIIIIII)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 187
    return-void
.end method

.method public blacklist viewClicked(Z)V
    .locals 2
    .param p1, "focusChanged"    # Z

    .line 191
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 192
    const/16 v1, 0x73

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v1

    .line 191
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 193
    return-void
.end method
