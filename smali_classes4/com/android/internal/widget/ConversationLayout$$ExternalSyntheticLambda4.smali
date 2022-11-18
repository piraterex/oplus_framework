.class public final synthetic Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/widget/ConversationLayout;

.field public final synthetic blacklist f$1:Lcom/android/internal/widget/MessagingGroup;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/widget/ConversationLayout;Lcom/android/internal/widget/MessagingGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda4;->f$0:Lcom/android/internal/widget/ConversationLayout;

    iput-object p2, p0, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda4;->f$1:Lcom/android/internal/widget/MessagingGroup;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda4;->f$0:Lcom/android/internal/widget/ConversationLayout;

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda4;->f$1:Lcom/android/internal/widget/MessagingGroup;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ConversationLayout;->lambda$removeGroups$5$com-android-internal-widget-ConversationLayout(Lcom/android/internal/widget/MessagingGroup;)V

    return-void
.end method
