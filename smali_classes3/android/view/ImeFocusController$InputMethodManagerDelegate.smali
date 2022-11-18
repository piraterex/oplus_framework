.class public interface abstract Landroid/view/ImeFocusController$InputMethodManagerDelegate;
.super Ljava/lang/Object;
.source "ImeFocusController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ImeFocusController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InputMethodManagerDelegate"
.end annotation


# virtual methods
.method public abstract blacklist closeCurrentIme()V
.end method

.method public abstract blacklist finishComposingText()V
.end method

.method public abstract blacklist finishInput()V
.end method

.method public abstract blacklist finishInputAndReportToIme()V
.end method

.method public abstract blacklist hasActiveConnection(Landroid/view/View;)Z
.end method

.method public abstract blacklist isCurrentRootView(Landroid/view/ViewRootImpl;)Z
.end method

.method public abstract blacklist isRestartOnNextWindowFocus(Z)Z
.end method

.method public abstract blacklist setCurrentRootView(Landroid/view/ViewRootImpl;)V
.end method

.method public abstract blacklist startInput(ILandroid/view/View;III)Z
.end method

.method public abstract blacklist startInputAsyncOnWindowFocusGain(Landroid/view/View;IIZ)V
.end method
