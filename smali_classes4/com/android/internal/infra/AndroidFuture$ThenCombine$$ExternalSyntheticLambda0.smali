.class public final synthetic Lcom/android/internal/infra/AndroidFuture$ThenCombine$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/infra/AndroidFuture$ThenCombine;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/infra/AndroidFuture$ThenCombine;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/infra/AndroidFuture$ThenCombine$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/infra/AndroidFuture$ThenCombine;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/infra/AndroidFuture$ThenCombine$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/infra/AndroidFuture$ThenCombine;

    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/infra/AndroidFuture$ThenCombine;->lambda$accept$0$com-android-internal-infra-AndroidFuture$ThenCombine(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method
