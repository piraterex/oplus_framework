.class public final synthetic Lcom/android/internal/util/FunctionalUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;

.field public final synthetic blacklist f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/FunctionalUtils$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;

    iput-object p2, p0, Lcom/android/internal/util/FunctionalUtils$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/util/FunctionalUtils$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;

    iget-object v1, p0, Lcom/android/internal/util/FunctionalUtils$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    invoke-static {v0, v1}, Lcom/android/internal/util/FunctionalUtils;->lambda$handleExceptions$0(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Ljava/util/function/Consumer;)V

    return-void
.end method
