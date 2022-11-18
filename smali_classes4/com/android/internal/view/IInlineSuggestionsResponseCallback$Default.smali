.class public Lcom/android/internal/view/IInlineSuggestionsResponseCallback$Default;
.super Ljava/lang/Object;
.source "IInlineSuggestionsResponseCallback.java"

# interfaces
.implements Lcom/android/internal/view/IInlineSuggestionsResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInlineSuggestionsResponseCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onInlineSuggestionsResponse(Landroid/view/autofill/AutofillId;Landroid/view/inputmethod/InlineSuggestionsResponse;)V
    .locals 0
    .param p1, "fieldId"    # Landroid/view/autofill/AutofillId;
    .param p2, "response"    # Landroid/view/inputmethod/InlineSuggestionsResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method
