.class public final synthetic Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda43;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:I

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda43;->f$0:I

    iput p2, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda43;->f$1:I

    iput p3, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda43;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda43;->f$0:I

    iget v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda43;->f$1:I

    iget v2, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda43;->f$2:I

    check-cast p1, Landroid/view/inputmethod/SurroundingText;

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->lambda$getSurroundingText$11(IIILandroid/view/inputmethod/SurroundingText;)[B

    move-result-object p1

    return-object p1
.end method
