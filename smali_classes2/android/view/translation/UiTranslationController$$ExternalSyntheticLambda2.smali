.class public final synthetic Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/translation/UiTranslationController;

.field public final synthetic blacklist f$1:Landroid/view/View;

.field public final synthetic blacklist f$2:Landroid/view/translation/ViewTranslationResponse;

.field public final synthetic blacklist f$3:Landroid/view/autofill/AutofillId;

.field public final synthetic blacklist f$4:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/translation/UiTranslationController;Landroid/view/View;Landroid/view/translation/ViewTranslationResponse;Landroid/view/autofill/AutofillId;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda2;->f$0:Landroid/view/translation/UiTranslationController;

    iput-object p2, p0, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda2;->f$1:Landroid/view/View;

    iput-object p3, p0, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda2;->f$2:Landroid/view/translation/ViewTranslationResponse;

    iput-object p4, p0, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda2;->f$3:Landroid/view/autofill/AutofillId;

    iput p5, p0, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda2;->f$4:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 5

    iget-object v0, p0, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda2;->f$0:Landroid/view/translation/UiTranslationController;

    iget-object v1, p0, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda2;->f$1:Landroid/view/View;

    iget-object v2, p0, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda2;->f$2:Landroid/view/translation/ViewTranslationResponse;

    iget-object v3, p0, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda2;->f$3:Landroid/view/autofill/AutofillId;

    iget v4, p0, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda2;->f$4:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/translation/UiTranslationController;->lambda$onTranslationCompleted$4$android-view-translation-UiTranslationController(Landroid/view/View;Landroid/view/translation/ViewTranslationResponse;Landroid/view/autofill/AutofillId;I)V

    return-void
.end method
