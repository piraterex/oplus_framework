.class public Landroid/inputmethodservice/ExtractEditText;
.super Landroid/widget/EditText;
.source "ExtractEditText.java"


# instance fields
.field private greylist-max-o mIME:Landroid/inputmethodservice/InputMethodService;

.field private greylist-max-o mSettingExtractedText:I


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 38
    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/inputmethodservice/ExtractEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 47
    return-void
.end method


# virtual methods
.method protected greylist-max-o deleteText_internal(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 197
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onExtractedDeleteText(II)V

    .line 198
    return-void
.end method

.method public whitelist finishInternalChanges()V
    .locals 1

    .line 68
    iget v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    .line 69
    return-void
.end method

.method public whitelist hasFocus()Z
    .locals 1

    .line 165
    invoke-virtual {p0}, Landroid/inputmethodservice/ExtractEditText;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public whitelist hasVerticalScrollBar()Z
    .locals 2

    .line 141
    invoke-virtual {p0}, Landroid/inputmethodservice/ExtractEditText;->computeVerticalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Landroid/inputmethodservice/ExtractEditText;->computeVerticalScrollExtent()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist hasWindowFocus()Z
    .locals 1

    .line 149
    invoke-virtual {p0}, Landroid/inputmethodservice/ExtractEditText;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public whitelist isFocused()Z
    .locals 1

    .line 157
    invoke-virtual {p0}, Landroid/inputmethodservice/ExtractEditText;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isInExtractedMode()Z
    .locals 1

    .line 186
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isInputMethodTarget()Z
    .locals 1

    .line 134
    const/4 v0, 0x1

    return v0
.end method

.method protected whitelist onSelectionChanged(II)V
    .locals 1
    .param p1, "selStart"    # I
    .param p2, "selEnd"    # I

    .line 88
    iget v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 89
    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onExtractedSelectionChanged(II)V

    .line 91
    :cond_0
    return-void
.end method

.method public whitelist onTextContextMenuItem(I)Z
    .locals 1
    .param p1, "id"    # I

    .line 108
    const v0, 0x102001f

    if-eq p1, v0, :cond_4

    const v0, 0x1020034

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InputMethodService;->onExtractTextContextMenuItem(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    const v0, 0x1020021

    if-eq p1, v0, :cond_1

    const v0, 0x1020022

    if-eq p1, v0, :cond_1

    const v0, 0x1020035

    if-ne p1, v0, :cond_2

    .line 121
    :cond_1
    invoke-virtual {p0}, Landroid/inputmethodservice/ExtractEditText;->stopTextActionMode()V

    .line 124
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 126
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result v0

    return v0

    .line 109
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result v0

    return v0
.end method

.method public whitelist performClick()Z
    .locals 1

    .line 98
    invoke-super {p0}, Landroid/widget/EditText;->performClick()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->onExtractedTextClicked()V

    .line 100
    const/4 v0, 0x1

    return v0

    .line 102
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected greylist-max-o replaceText_internal(IILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;

    .line 208
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1, p2, p3}, Landroid/inputmethodservice/InputMethodService;->onExtractedReplaceText(IILjava/lang/CharSequence;)V

    .line 209
    return-void
.end method

.method protected greylist-max-o setCursorPosition_internal(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 230
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onExtractedSelectionChanged(II)V

    .line 231
    return-void
.end method

.method public whitelist setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    .locals 2
    .param p1, "text"    # Landroid/view/inputmethod/ExtractedText;

    .line 77
    :try_start_0
    iget v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    .line 78
    invoke-super {p0, p1}, Landroid/widget/EditText;->setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    iget v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    .line 81
    nop

    .line 82
    return-void

    .line 80
    :catchall_0
    move-exception v0

    iget v1, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    .line 81
    throw v0
.end method

.method greylist-max-o setIME(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0
    .param p1, "ime"    # Landroid/inputmethodservice/InputMethodService;

    .line 50
    iput-object p1, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    .line 51
    return-void
.end method

.method protected greylist-max-o setSpan_internal(Ljava/lang/Object;III)V
    .locals 1
    .param p1, "span"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I

    .line 219
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/inputmethodservice/InputMethodService;->onExtractedSetSpan(Ljava/lang/Object;III)V

    .line 220
    return-void
.end method

.method public whitelist startInternalChanges()V
    .locals 1

    .line 59
    iget v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    .line 60
    return-void
.end method

.method protected greylist-max-o viewClicked(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 2
    .param p1, "imm"    # Landroid/view/inputmethod/InputMethodManager;

    .line 176
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    if-eqz v0, :cond_0

    .line 177
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InputMethodService;->onViewClicked(Z)V

    .line 179
    :cond_0
    return-void
.end method
