.class public final synthetic Landroid/widget/TextViewTranslationCallback$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/widget/TextViewTranslationCallback;

.field public final synthetic blacklist f$1:Ljava/lang/ref/WeakReference;

.field public final synthetic blacklist f$2:Landroid/text/method/TransformationMethod;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/widget/TextViewTranslationCallback;Ljava/lang/ref/WeakReference;Landroid/text/method/TransformationMethod;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/TextViewTranslationCallback$$ExternalSyntheticLambda1;->f$0:Landroid/widget/TextViewTranslationCallback;

    iput-object p2, p0, Landroid/widget/TextViewTranslationCallback$$ExternalSyntheticLambda1;->f$1:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Landroid/widget/TextViewTranslationCallback$$ExternalSyntheticLambda1;->f$2:Landroid/text/method/TransformationMethod;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 3

    iget-object v0, p0, Landroid/widget/TextViewTranslationCallback$$ExternalSyntheticLambda1;->f$0:Landroid/widget/TextViewTranslationCallback;

    iget-object v1, p0, Landroid/widget/TextViewTranslationCallback$$ExternalSyntheticLambda1;->f$1:Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Landroid/widget/TextViewTranslationCallback$$ExternalSyntheticLambda1;->f$2:Landroid/text/method/TransformationMethod;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextViewTranslationCallback;->lambda$onHideTranslation$1$android-widget-TextViewTranslationCallback(Ljava/lang/ref/WeakReference;Landroid/text/method/TransformationMethod;)V

    return-void
.end method
