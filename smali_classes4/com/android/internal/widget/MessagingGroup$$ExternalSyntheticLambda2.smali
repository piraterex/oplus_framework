.class public final synthetic Lcom/android/internal/widget/MessagingGroup$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/widget/MessagingGroup;

.field public final synthetic blacklist f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/widget/MessagingGroup;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/MessagingGroup$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/widget/MessagingGroup;

    iput-object p2, p0, Lcom/android/internal/widget/MessagingGroup$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/widget/MessagingGroup;

    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MessagingGroup;->lambda$removeGroupAnimated$1$com-android-internal-widget-MessagingGroup(Ljava/lang/Runnable;)V

    return-void
.end method
