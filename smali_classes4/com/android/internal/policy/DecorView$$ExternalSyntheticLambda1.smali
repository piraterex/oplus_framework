.class public final synthetic Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/policy/DecorView;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/policy/DecorView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/policy/DecorView;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/policy/DecorView;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->lambda$setBackgroundBlurRadius$1$com-android-internal-policy-DecorView(Ljava/lang/Boolean;)V

    return-void
.end method
