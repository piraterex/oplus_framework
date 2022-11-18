.class public interface abstract Landroid/inputmethodservice/IInputMethodServiceExt;
.super Ljava/lang/Object;
.source "IInputMethodServiceExt.java"


# virtual methods
.method public blacklist appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 98
    return-void
.end method

.method public blacklist configDebug([Ljava/lang/String;)V
    .locals 0
    .param p1, "args"    # [Ljava/lang/String;

    .line 62
    return-void
.end method

.method public blacklist hookHideImmediately(ILandroid/inputmethodservice/SoftInputWindow;)Z
    .locals 1
    .param p1, "flags"    # I
    .param p2, "mWindow"    # Landroid/inputmethodservice/SoftInputWindow;

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hookOnColorChange(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .line 40
    return-void
.end method

.method public blacklist hookOnComputeRaise(Landroid/inputmethodservice/InputMethodService$Insets;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "insets"    # Landroid/inputmethodservice/InputMethodService$Insets;
    .param p2, "dialog"    # Landroid/app/Dialog;

    .line 33
    return-void
.end method

.method public blacklist hookOnCreate(Landroid/database/ContentObserver;Landroid/content/Context;)V
    .locals 0
    .param p1, "mSettingObserver"    # Landroid/database/ContentObserver;
    .param p2, "context"    # Landroid/content/Context;

    .line 43
    return-void
.end method

.method public blacklist hookOnDestroy()V
    .locals 0

    .line 46
    return-void
.end method

.method public blacklist hookRootViewUpdated(Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;

    .line 69
    return-void
.end method

.method public blacklist hookShouldPreventTouch(Landroid/inputmethodservice/SoftInputWindow;)Z
    .locals 1
    .param p1, "mWindow"    # Landroid/inputmethodservice/SoftInputWindow;

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hookUpdateNavigationGuardColor(Landroid/inputmethodservice/SoftInputWindow;)V
    .locals 0
    .param p1, "mWindow"    # Landroid/inputmethodservice/SoftInputWindow;

    .line 52
    return-void
.end method

.method public blacklist hookUpdateNavigationGuardColorDelay(Landroid/inputmethodservice/SoftInputWindow;)V
    .locals 0
    .param p1, "mWindow"    # Landroid/inputmethodservice/SoftInputWindow;

    .line 49
    return-void
.end method

.method public blacklist hookUpdateNavigationGuardColorForDialog(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "mWindow"    # Landroid/app/Dialog;

    .line 55
    return-void
.end method

.method public blacklist hookUpdatedFlag()I
    .locals 1

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isFoldDisplayOpen()Z
    .locals 1

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist logDebug(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 79
    return-void
.end method

.method public blacklist logDebugIme(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 82
    return-void
.end method

.method public blacklist logMethodCallers(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 85
    return-void
.end method

.method public blacklist onEditorInfoUpdate(Landroid/view/inputmethod/EditorInfo;)V
    .locals 0
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;

    .line 76
    return-void
.end method

.method public blacklist updateExtractViewStyle(Landroid/view/View;)V
    .locals 0
    .param p1, "extractView"    # Landroid/view/View;

    .line 95
    return-void
.end method

.method public blacklist updateNavButtonFlags(I)I
    .locals 0
    .param p1, "navButtonFlags"    # I

    .line 91
    return p1
.end method

.method public blacklist updateNavigationBarOnShown(Landroid/view/View;)V
    .locals 0
    .param p1, "navigationBarFrame"    # Landroid/view/View;

    .line 88
    return-void
.end method
