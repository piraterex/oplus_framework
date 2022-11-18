.class public final synthetic Lcom/android/internal/app/UnlaunchableAppActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/app/UnlaunchableAppActivity;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/app/UnlaunchableAppActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/UnlaunchableAppActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/app/UnlaunchableAppActivity;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/UnlaunchableAppActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/app/UnlaunchableAppActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/UnlaunchableAppActivity;->lambda$getDialogMessage$1$com-android-internal-app-UnlaunchableAppActivity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
