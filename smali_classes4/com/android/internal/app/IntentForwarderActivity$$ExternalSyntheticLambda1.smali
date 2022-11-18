.class public final synthetic Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/app/IntentForwarderActivity;

.field public final synthetic blacklist f$1:Landroid/content/Intent;

.field public final synthetic blacklist f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/app/IntentForwarderActivity;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/app/IntentForwarderActivity;

    iput-object p2, p0, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda1;->f$1:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/app/IntentForwarderActivity;

    iget-object v1, p0, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda1;->f$1:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    check-cast p1, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/app/IntentForwarderActivity;->lambda$onCreate$1$com-android-internal-app-IntentForwarderActivity(Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ResolveInfo;)V

    return-void
.end method
