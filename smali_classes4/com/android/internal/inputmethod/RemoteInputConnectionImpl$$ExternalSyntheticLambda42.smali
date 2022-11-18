.class public final synthetic Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda42;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

.field public final synthetic blacklist f$1:Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:I

.field public final synthetic blacklist f$4:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda42;->f$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    iput-object p2, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda42;->f$1:Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    iput p3, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda42;->f$2:I

    iput p4, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda42;->f$3:I

    iput p5, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda42;->f$4:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda42;->f$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda42;->f$1:Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    iget v2, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda42;->f$2:I

    iget v3, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda42;->f$3:I

    iget v4, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda42;->f$4:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->lambda$getSurroundingText$10$com-android-internal-inputmethod-RemoteInputConnectionImpl(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;III)Landroid/view/inputmethod/SurroundingText;

    move-result-object v0

    return-object v0
.end method
