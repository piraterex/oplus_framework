.class public final synthetic Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

.field public final synthetic blacklist f$1:Ljava/util/function/Supplier;

.field public final synthetic blacklist f$2:Lcom/android/internal/infra/AndroidFuture;

.field public final synthetic blacklist f$3:Ljava/util/function/Function;

.field public final synthetic blacklist f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Ljava/util/function/Supplier;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Function;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    iput-object p2, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda2;->f$1:Ljava/util/function/Supplier;

    iput-object p3, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda2;->f$2:Lcom/android/internal/infra/AndroidFuture;

    iput-object p4, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda2;->f$3:Ljava/util/function/Function;

    iput-object p5, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda2;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda2;->f$1:Ljava/util/function/Supplier;

    iget-object v2, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda2;->f$2:Lcom/android/internal/infra/AndroidFuture;

    iget-object v3, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda2;->f$3:Ljava/util/function/Function;

    iget-object v4, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda2;->f$4:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->lambda$dispatchWithTracing$43$com-android-internal-inputmethod-RemoteInputConnectionImpl(Ljava/util/function/Supplier;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Function;Ljava/lang/String;)V

    return-void
.end method
