.class public final synthetic Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;

.field public final synthetic blacklist f$1:Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

.field public final synthetic blacklist f$2:Landroid/view/KeyEvent;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda10;->f$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;

    iput-object p2, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda10;->f$1:Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    iput-object p3, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda10;->f$2:Landroid/view/KeyEvent;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda10;->f$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda10;->f$1:Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    iget-object v2, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda10;->f$2:Landroid/view/KeyEvent;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->lambda$sendKeyEvent$5$com-android-internal-inputmethod-RemoteInputConnectionImpl$1(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V

    return-void
.end method
