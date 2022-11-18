.class public interface abstract Lcom/android/internal/view/IInlineSuggestionsRequestCallback;
.super Ljava/lang/Object;
.source "IInlineSuggestionsRequestCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInlineSuggestionsRequestCallback$Stub;,
        Lcom/android/internal/view/IInlineSuggestionsRequestCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInlineSuggestionsRequestCallback"


# virtual methods
.method public abstract blacklist onInlineSuggestionsRequest(Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/internal/view/IInlineSuggestionsResponseCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onInlineSuggestionsSessionInvalidated()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onInlineSuggestionsUnsupported()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onInputMethodFinishInput()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onInputMethodFinishInputView()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onInputMethodShowInputRequested(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onInputMethodStartInput(Landroid/view/autofill/AutofillId;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onInputMethodStartInputView()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
