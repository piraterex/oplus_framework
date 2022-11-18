.class public final synthetic Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/app/IntentForwarderActivity;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/app/IntentForwarderActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda3;->f$0:Lcom/android/internal/app/IntentForwarderActivity;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda3;->f$0:Lcom/android/internal/app/IntentForwarderActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/IntentForwarderActivity;->lambda$getForwardToPersonalMessage$2$com-android-internal-app-IntentForwarderActivity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
