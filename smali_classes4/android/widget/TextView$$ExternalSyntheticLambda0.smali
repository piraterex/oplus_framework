.class public final synthetic Landroid/widget/TextView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Landroid/widget/TextView;

.field public final synthetic blacklist f$1:Landroid/view/textclassifier/TextClassification$Request;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/widget/TextView;Landroid/view/textclassifier/TextClassification$Request;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/TextView$$ExternalSyntheticLambda0;->f$0:Landroid/widget/TextView;

    iput-object p2, p0, Landroid/widget/TextView$$ExternalSyntheticLambda0;->f$1:Landroid/view/textclassifier/TextClassification$Request;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView$$ExternalSyntheticLambda0;->f$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$$ExternalSyntheticLambda0;->f$1:Landroid/view/textclassifier/TextClassification$Request;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->lambda$handleClick$0$android-widget-TextView(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    return-object v0
.end method
