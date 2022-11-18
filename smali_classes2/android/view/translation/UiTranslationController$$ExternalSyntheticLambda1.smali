.class public final synthetic Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/util/ArrayMap;

.field public final synthetic blacklist f$1:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/util/ArrayMap;Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda1;->f$0:Landroid/util/ArrayMap;

    iput-object p2, p0, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda1;->f$0:Landroid/util/ArrayMap;

    iget-object v1, p0, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/BiConsumer;

    invoke-static {v0, v1}, Landroid/view/translation/UiTranslationController;->lambda$runForEachView$7(Landroid/util/ArrayMap;Ljava/util/function/BiConsumer;)V

    return-void
.end method
