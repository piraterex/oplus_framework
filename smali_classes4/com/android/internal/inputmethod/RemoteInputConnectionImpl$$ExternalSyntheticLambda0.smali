.class public final synthetic Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

.field public final synthetic blacklist f$1:Lcom/android/internal/inputmethod/InputConnectionCommandHeader;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    iput-object p2, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->lambda$performSpellCheck$35$com-android-internal-inputmethod-RemoteInputConnectionImpl(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V

    return-void
.end method
