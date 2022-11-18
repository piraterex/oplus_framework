.class public final synthetic Lcom/android/internal/inputmethod/CancellationGroup$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/concurrent/CompletableFuture;

    invoke-static {p1}, Lcom/android/internal/inputmethod/CancellationGroup;->lambda$cancelAll$0(Ljava/util/concurrent/CompletableFuture;)V

    return-void
.end method
