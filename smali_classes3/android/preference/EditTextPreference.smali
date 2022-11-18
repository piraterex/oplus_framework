.class public Landroid/preference/EditTextPreference;
.super Landroid/preference/DialogPreference;
.source "EditTextPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/EditTextPreference$SavedState;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist mEditText:Landroid/widget/EditText;

.field private greylist-max-o mText:Ljava/lang/String;

.field private greylist-max-o mTextSet:Z


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 87
    const v0, 0x1010092

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 84
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 68
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Landroid/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    .line 71
    const v1, 0x1020003

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setId(I)V

    .line 79
    iget-object v0, p0, Landroid/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 80
    return-void
.end method


# virtual methods
.method public whitelist getEditText()Landroid/widget/EditText;
    .locals 1

    .line 192
    iget-object v0, p0, Landroid/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method public whitelist getText()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Landroid/preference/EditTextPreference;->mText:Ljava/lang/String;

    return-object v0
.end method

.method protected whitelist onAddEditTextToDialogView(Landroid/view/View;Landroid/widget/EditText;)V
    .locals 3
    .param p1, "dialogView"    # Landroid/view/View;
    .param p2, "editText"    # Landroid/widget/EditText;

    .line 151
    nop

    .line 152
    const v0, 0x10202ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 153
    .local v0, "container":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 154
    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, p2, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 157
    :cond_0
    return-void
.end method

.method protected whitelist onBindDialogView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 124
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 126
    iget-object v0, p0, Landroid/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    .line 127
    .local v0, "editText":Landroid/widget/EditText;
    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 130
    .local v1, "oldParent":Landroid/view/ViewParent;
    if-eq v1, p1, :cond_1

    .line 131
    if-eqz v1, :cond_0

    .line 132
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 134
    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/preference/EditTextPreference;->onAddEditTextToDialogView(Landroid/view/View;Landroid/widget/EditText;)V

    .line 136
    :cond_1
    return-void
.end method

.method protected whitelist onDialogClosed(Z)V
    .locals 2
    .param p1, "positiveResult"    # Z

    .line 161
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 163
    if-eqz p1, :cond_0

    .line 164
    iget-object v0, p0, Landroid/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/preference/EditTextPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {p0, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 169
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected whitelist onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .line 173
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 210
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/preference/EditTextPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/preference/EditTextPreference$SavedState;

    .line 217
    .local v0, "myState":Landroid/preference/EditTextPreference$SavedState;
    invoke-virtual {v0}, Landroid/preference/EditTextPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 218
    iget-object v1, v0, Landroid/preference/EditTextPreference$SavedState;->text:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 219
    return-void

    .line 212
    .end local v0    # "myState":Landroid/preference/EditTextPreference$SavedState;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 213
    return-void
.end method

.method protected whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 197
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 198
    .local v0, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    return-object v0

    .line 203
    :cond_0
    new-instance v1, Landroid/preference/EditTextPreference$SavedState;

    invoke-direct {v1, v0}, Landroid/preference/EditTextPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 204
    .local v1, "myState":Landroid/preference/EditTextPreference$SavedState;
    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/EditTextPreference$SavedState;->text:Ljava/lang/String;

    .line 205
    return-object v1
.end method

.method protected whitelist onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .line 178
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/EditTextPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public whitelist setText(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .line 101
    iget-object v0, p0, Landroid/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 102
    .local v0, "changed":Z
    if-nez v0, :cond_0

    iget-boolean v2, p0, Landroid/preference/EditTextPreference;->mTextSet:Z

    if-nez v2, :cond_1

    .line 103
    :cond_0
    iput-object p1, p0, Landroid/preference/EditTextPreference;->mText:Ljava/lang/String;

    .line 104
    iput-boolean v1, p0, Landroid/preference/EditTextPreference;->mTextSet:Z

    .line 105
    invoke-virtual {p0, p1}, Landroid/preference/EditTextPreference;->persistString(Ljava/lang/String;)Z

    .line 106
    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->shouldDisableDependents()Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/preference/EditTextPreference;->notifyDependencyChange(Z)V

    .line 108
    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->notifyChanged()V

    .line 111
    :cond_1
    return-void
.end method

.method public whitelist shouldDisableDependents()Z
    .locals 1

    .line 183
    iget-object v0, p0, Landroid/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/preference/DialogPreference;->shouldDisableDependents()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected whitelist showDialog(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Bundle;

    .line 140
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 141
    iget-object v0, p0, Landroid/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 142
    iget-object v0, p0, Landroid/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->show(I)V

    .line 143
    return-void
.end method
