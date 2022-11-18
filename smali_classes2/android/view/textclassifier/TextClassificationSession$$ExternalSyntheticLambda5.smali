.class public final synthetic Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/textclassifier/TextClassificationSession;

.field public final synthetic blacklist f$1:Landroid/view/textclassifier/TextClassifierEvent;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/textclassifier/TextClassificationSession;Landroid/view/textclassifier/TextClassifierEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda5;->f$0:Landroid/view/textclassifier/TextClassificationSession;

    iput-object p2, p0, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda5;->f$1:Landroid/view/textclassifier/TextClassifierEvent;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda5;->f$0:Landroid/view/textclassifier/TextClassificationSession;

    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda5;->f$1:Landroid/view/textclassifier/TextClassifierEvent;

    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextClassificationSession;->lambda$onTextClassifierEvent$6$android-view-textclassifier-TextClassificationSession(Landroid/view/textclassifier/TextClassifierEvent;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
