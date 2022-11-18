.class public Lcom/android/internal/preference/YesNoPreference;
.super Landroid/preference/DialogPreference;
.source "YesNoPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/preference/YesNoPreference$SavedState;
    }
.end annotation


# instance fields
.field private blacklist mWasPositiveResult:Z


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/preference/YesNoPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 46
    const v0, 0x1010090

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/preference/YesNoPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/preference/YesNoPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 42
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 38
    return-void
.end method


# virtual methods
.method public blacklist getValue()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/android/internal/preference/YesNoPreference;->mWasPositiveResult:Z

    return v0
.end method

.method protected whitelist onDialogClosed(Z)V
    .locals 1
    .param p1, "positiveResult"    # Z

    .line 55
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 57
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/preference/YesNoPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/internal/preference/YesNoPreference;->setValue(Z)V

    .line 60
    :cond_0
    return-void
.end method

.method protected whitelist onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 116
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/internal/preference/YesNoPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 119
    return-void

    .line 122
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/preference/YesNoPreference$SavedState;

    .line 123
    .local v0, "myState":Lcom/android/internal/preference/YesNoPreference$SavedState;
    invoke-virtual {v0}, Lcom/android/internal/preference/YesNoPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 124
    iget-boolean v1, v0, Lcom/android/internal/preference/YesNoPreference$SavedState;->wasPositiveResult:Z

    invoke-virtual {p0, v1}, Lcom/android/internal/preference/YesNoPreference;->setValue(Z)V

    .line 125
    return-void
.end method

.method protected whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 103
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 104
    .local v0, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/internal/preference/YesNoPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    return-object v0

    .line 109
    :cond_0
    new-instance v1, Lcom/android/internal/preference/YesNoPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/android/internal/preference/YesNoPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 110
    .local v1, "myState":Lcom/android/internal/preference/YesNoPreference$SavedState;
    invoke-virtual {p0}, Lcom/android/internal/preference/YesNoPreference;->getValue()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/internal/preference/YesNoPreference$SavedState;->wasPositiveResult:Z

    .line 111
    return-object v1
.end method

.method protected whitelist onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restorePersistedValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .line 92
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/preference/YesNoPreference;->mWasPositiveResult:Z

    invoke-virtual {p0, v0}, Lcom/android/internal/preference/YesNoPreference;->getPersistedBoolean(Z)Z

    move-result v0

    goto :goto_0

    .line 93
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 92
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/preference/YesNoPreference;->setValue(Z)V

    .line 94
    return-void
.end method

.method public blacklist setValue(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 69
    iput-boolean p1, p0, Lcom/android/internal/preference/YesNoPreference;->mWasPositiveResult:Z

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/internal/preference/YesNoPreference;->persistBoolean(Z)Z

    .line 73
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/preference/YesNoPreference;->notifyDependencyChange(Z)V

    .line 74
    return-void
.end method

.method public whitelist shouldDisableDependents()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/android/internal/preference/YesNoPreference;->mWasPositiveResult:Z

    if-eqz v0, :cond_1

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
