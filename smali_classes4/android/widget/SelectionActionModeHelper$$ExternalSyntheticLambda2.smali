.class public final synthetic Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda2;->f$0:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda2;->f$0:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->getOriginalSelection()Landroid/widget/SelectionActionModeHelper$SelectionResult;

    move-result-object v0

    return-object v0
.end method
