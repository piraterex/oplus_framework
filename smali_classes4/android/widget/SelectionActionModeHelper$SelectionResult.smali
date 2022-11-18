.class final Landroid/widget/SelectionActionModeHelper$SelectionResult;
.super Ljava/lang/Object;
.source "SelectionActionModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SelectionActionModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SelectionResult"
.end annotation


# instance fields
.field private final greylist-max-o mClassification:Landroid/view/textclassifier/TextClassification;

.field private final greylist-max-o mEnd:I

.field private final greylist-max-o mSelection:Landroid/view/textclassifier/TextSelection;

.field private final greylist-max-o mStart:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmClassification(Landroid/widget/SelectionActionModeHelper$SelectionResult;)Landroid/view/textclassifier/TextClassification;
    .locals 0

    iget-object p0, p0, Landroid/widget/SelectionActionModeHelper$SelectionResult;->mClassification:Landroid/view/textclassifier/TextClassification;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnd(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I
    .locals 0

    iget p0, p0, Landroid/widget/SelectionActionModeHelper$SelectionResult;->mEnd:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelection(Landroid/widget/SelectionActionModeHelper$SelectionResult;)Landroid/view/textclassifier/TextSelection;
    .locals 0

    iget-object p0, p0, Landroid/widget/SelectionActionModeHelper$SelectionResult;->mSelection:Landroid/view/textclassifier/TextSelection;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStart(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I
    .locals 0

    iget p0, p0, Landroid/widget/SelectionActionModeHelper$SelectionResult;->mStart:I

    return p0
.end method

.method constructor greylist-max-o <init>(IILandroid/view/textclassifier/TextClassification;Landroid/view/textclassifier/TextSelection;)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "classification"    # Landroid/view/textclassifier/TextClassification;
    .param p4, "selection"    # Landroid/view/textclassifier/TextSelection;

    .line 1240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1241
    invoke-static {p1, p2}, Landroid/widget/SelectionActionModeHelper;->-$$Nest$smsortSelectionIndices(II)[I

    move-result-object v0

    .line 1242
    .local v0, "sortedIndices":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionResult;->mStart:I

    .line 1243
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionResult;->mEnd:I

    .line 1244
    iput-object p3, p0, Landroid/widget/SelectionActionModeHelper$SelectionResult;->mClassification:Landroid/view/textclassifier/TextClassification;

    .line 1245
    iput-object p4, p0, Landroid/widget/SelectionActionModeHelper$SelectionResult;->mSelection:Landroid/view/textclassifier/TextSelection;

    .line 1246
    return-void
.end method
