.class public interface abstract Lcom/android/internal/view/IInlineSuggestionsResponseCallback;
.super Ljava/lang/Object;
.source "IInlineSuggestionsResponseCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInlineSuggestionsResponseCallback$Stub;,
        Lcom/android/internal/view/IInlineSuggestionsResponseCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInlineSuggestionsResponseCallback"


# virtual methods
.method public abstract blacklist onInlineSuggestionsResponse(Landroid/view/autofill/AutofillId;Landroid/view/inputmethod/InlineSuggestionsResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
