.class public final synthetic Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback;

.field public final synthetic blacklist f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback$$ExternalSyntheticLambda0;->f$0:Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback;

    iput-object p2, p0, Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback$$ExternalSyntheticLambda0;->f$0:Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback;

    iget-object v1, p0, Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback;->lambda$sendResult$0$android-view-translation-TranslationManager$TranslationCapabilityRemoteCallback(Landroid/os/Bundle;)V

    return-void
.end method
