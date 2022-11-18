.class public final Landroid/service/autofill/Dataset$Builder;
.super Ljava/lang/Object;
.source "Dataset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/Dataset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mAuthentication:Landroid/content/IntentSender;

.field private greylist-max-o mDestroyed:Z

.field private blacklist mDialogPresentation:Landroid/widget/RemoteViews;

.field private blacklist mFieldContent:Landroid/content/ClipData;

.field private blacklist mFieldDialogPresentations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mFieldFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/Dataset$DatasetFieldFilter;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mFieldIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFieldInlinePresentations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/InlinePresentation;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFieldInlineTooltipPresentations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/InlinePresentation;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mFieldPresentations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mFieldValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillValue;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mId:Ljava/lang/String;

.field private blacklist mInlinePresentation:Landroid/service/autofill/InlinePresentation;

.field private blacklist mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

.field private greylist-max-o mPresentation:Landroid/widget/RemoteViews;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAuthentication(Landroid/service/autofill/Dataset$Builder;)Landroid/content/IntentSender;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/Dataset$Builder;->mAuthentication:Landroid/content/IntentSender;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDialogPresentation(Landroid/service/autofill/Dataset$Builder;)Landroid/widget/RemoteViews;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/Dataset$Builder;->mDialogPresentation:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFieldContent(Landroid/service/autofill/Dataset$Builder;)Landroid/content/ClipData;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldContent:Landroid/content/ClipData;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFieldDialogPresentations(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldDialogPresentations:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFieldFilters(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldFilters:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFieldIds(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFieldInlinePresentations(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlinePresentations:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFieldInlineTooltipPresentations(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlineTooltipPresentations:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFieldPresentations(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldPresentations:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFieldValues(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldValues:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmId(Landroid/service/autofill/Dataset$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/Dataset$Builder;->mId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInlinePresentation(Landroid/service/autofill/Dataset$Builder;)Landroid/service/autofill/InlinePresentation;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/Dataset$Builder;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInlineTooltipPresentation(Landroid/service/autofill/Dataset$Builder;)Landroid/service/autofill/InlinePresentation;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/Dataset$Builder;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPresentation(Landroid/service/autofill/Dataset$Builder;)Landroid/widget/RemoteViews;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/Dataset$Builder;->mPresentation:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetLifeTheUniverseAndEverything(Landroid/service/autofill/Dataset$Builder;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Landroid/service/autofill/Dataset$Builder;->setLifeTheUniverseAndEverything(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    return-void
.end method

.method public constructor whitelist <init>(Landroid/service/autofill/InlinePresentation;)V
    .locals 1
    .param p1, "inlinePresentation"    # Landroid/service/autofill/InlinePresentation;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    const-string/jumbo v0, "inlinePresentation must be non-null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 332
    iput-object p1, p0, Landroid/service/autofill/Dataset$Builder;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    .line 333
    return-void
.end method

.method public constructor whitelist <init>(Landroid/service/autofill/Presentations;)V
    .locals 1
    .param p1, "presentations"    # Landroid/service/autofill/Presentations;

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    const-string/jumbo v0, "presentations must be non-null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 343
    invoke-virtual {p1}, Landroid/service/autofill/Presentations;->getMenuPresentation()Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mPresentation:Landroid/widget/RemoteViews;

    .line 344
    invoke-virtual {p1}, Landroid/service/autofill/Presentations;->getInlinePresentation()Landroid/service/autofill/InlinePresentation;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    .line 345
    invoke-virtual {p1}, Landroid/service/autofill/Presentations;->getInlineTooltipPresentation()Landroid/service/autofill/InlinePresentation;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    .line 346
    invoke-virtual {p1}, Landroid/service/autofill/Presentations;->getDialogPresentation()Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mDialogPresentation:Landroid/widget/RemoteViews;

    .line 347
    return-void
.end method

.method public constructor whitelist <init>(Landroid/widget/RemoteViews;)V
    .locals 1
    .param p1, "presentation"    # Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    const-string/jumbo v0, "presentation must be non-null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 314
    iput-object p1, p0, Landroid/service/autofill/Dataset$Builder;->mPresentation:Landroid/widget/RemoteViews;

    .line 315
    return-void
.end method

.method private blacklist setLifeTheUniverseAndEverything(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)V
    .locals 2
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "value"    # Landroid/view/autofill/AutofillValue;
    .param p3, "presentation"    # Landroid/widget/RemoteViews;
    .param p4, "inlinePresentation"    # Landroid/service/autofill/InlinePresentation;
    .param p5, "tooltip"    # Landroid/service/autofill/InlinePresentation;
    .param p6, "filter"    # Landroid/service/autofill/Dataset$DatasetFieldFilter;
    .param p7, "dialogPresentation"    # Landroid/widget/RemoteViews;

    .line 967
    const-string/jumbo v0, "id cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 968
    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 969
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 970
    .local v0, "existingIdx":I
    if-ltz v0, :cond_0

    .line 971
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 972
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldPresentations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 973
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldDialogPresentations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 974
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlinePresentations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 975
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlineTooltipPresentations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 976
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 977
    return-void

    .line 979
    .end local v0    # "existingIdx":I
    :cond_0
    goto :goto_0

    .line 980
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    .line 981
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldValues:Ljava/util/ArrayList;

    .line 982
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldPresentations:Ljava/util/ArrayList;

    .line 983
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldDialogPresentations:Ljava/util/ArrayList;

    .line 984
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlinePresentations:Ljava/util/ArrayList;

    .line 985
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlineTooltipPresentations:Ljava/util/ArrayList;

    .line 986
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldFilters:Ljava/util/ArrayList;

    .line 988
    :goto_0
    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 989
    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 990
    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldPresentations:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 991
    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldDialogPresentations:Ljava/util/ArrayList;

    invoke-virtual {v0, p7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 992
    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlinePresentations:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 993
    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlineTooltipPresentations:Ljava/util/ArrayList;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 994
    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 995
    return-void
.end method

.method private greylist-max-o throwIfDestroyed()V
    .locals 2

    .line 1026
    iget-boolean v0, p0, Landroid/service/autofill/Dataset$Builder;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 1029
    return-void

    .line 1027
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already called #build()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/service/autofill/Dataset;
    .locals 3

    .line 1008
    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    .line 1009
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/autofill/Dataset$Builder;->mDestroyed:Z

    .line 1010
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 1013
    iget-object v2, p0, Landroid/service/autofill/Dataset$Builder;->mFieldContent:Landroid/content/ClipData;

    if-eqz v2, :cond_2

    .line 1014
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v0, :cond_1

    .line 1018
    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldValues:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1019
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot fill both content and values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1015
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "when filling content, only one field can be filled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1022
    :cond_2
    :goto_0
    new-instance v0, Landroid/service/autofill/Dataset;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/autofill/Dataset;-><init>(Landroid/service/autofill/Dataset$Builder;Landroid/service/autofill/Dataset-IA;)V

    return-object v0

    .line 1011
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "at least one value must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAuthentication(Landroid/content/IntentSender;)Landroid/service/autofill/Dataset$Builder;
    .locals 0
    .param p1, "authentication"    # Landroid/content/IntentSender;

    .line 457
    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    .line 458
    iput-object p1, p0, Landroid/service/autofill/Dataset$Builder;->mAuthentication:Landroid/content/IntentSender;

    .line 459
    return-object p0
.end method

.method public whitelist setContent(Landroid/view/autofill/AutofillId;Landroid/content/ClipData;)Landroid/service/autofill/Dataset$Builder;
    .locals 9
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "content"    # Landroid/content/ClipData;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 523
    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    .line 524
    if-eqz p2, :cond_1

    .line 525
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 526
    invoke-virtual {p2, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content items cannot contain an Intent: content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 525
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 530
    .end local v0    # "i":I
    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Landroid/service/autofill/Dataset$Builder;->setLifeTheUniverseAndEverything(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)V

    .line 531
    iput-object p2, p0, Landroid/service/autofill/Dataset$Builder;->mFieldContent:Landroid/content/ClipData;

    .line 532
    return-object p0
.end method

.method public whitelist setField(Landroid/view/autofill/AutofillId;Landroid/service/autofill/Field;)Landroid/service/autofill/Dataset$Builder;
    .locals 16
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "field"    # Landroid/service/autofill/Field;

    .line 904
    invoke-direct/range {p0 .. p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    .line 905
    if-nez p2, :cond_0

    .line 906
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/service/autofill/Dataset$Builder;->setLifeTheUniverseAndEverything(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)V

    goto :goto_0

    .line 908
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/Field;->getDatasetFieldFilter()Landroid/service/autofill/Dataset$DatasetFieldFilter;

    move-result-object v0

    .line 909
    .local v0, "filter":Landroid/service/autofill/Dataset$DatasetFieldFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/Field;->getPresentations()Landroid/service/autofill/Presentations;

    move-result-object v1

    .line 910
    .local v1, "presentations":Landroid/service/autofill/Presentations;
    if-nez v1, :cond_1

    .line 911
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/Field;->getValue()Landroid/view/autofill/AutofillValue;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object v14, v0

    invoke-direct/range {v8 .. v15}, Landroid/service/autofill/Dataset$Builder;->setLifeTheUniverseAndEverything(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)V

    goto :goto_0

    .line 914
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/Field;->getValue()Landroid/view/autofill/AutofillValue;

    move-result-object v10

    .line 915
    invoke-virtual {v1}, Landroid/service/autofill/Presentations;->getMenuPresentation()Landroid/widget/RemoteViews;

    move-result-object v11

    .line 916
    invoke-virtual {v1}, Landroid/service/autofill/Presentations;->getInlinePresentation()Landroid/service/autofill/InlinePresentation;

    move-result-object v12

    .line 917
    invoke-virtual {v1}, Landroid/service/autofill/Presentations;->getInlineTooltipPresentation()Landroid/service/autofill/InlinePresentation;

    move-result-object v13

    .line 918
    invoke-virtual {v1}, Landroid/service/autofill/Presentations;->getDialogPresentation()Landroid/widget/RemoteViews;

    move-result-object v15

    .line 914
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object v14, v0

    invoke-direct/range {v8 .. v15}, Landroid/service/autofill/Dataset$Builder;->setLifeTheUniverseAndEverything(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)V

    .line 921
    .end local v0    # "filter":Landroid/service/autofill/Dataset$DatasetFieldFilter;
    .end local v1    # "presentations":Landroid/service/autofill/Presentations;
    :goto_0
    return-object p0
.end method

.method public whitelist setFieldInlinePresentation(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Ljava/util/regex/Pattern;Landroid/service/autofill/InlinePresentation;)Landroid/service/autofill/Dataset$Builder;
    .locals 9
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "value"    # Landroid/view/autofill/AutofillValue;
    .param p3, "filter"    # Ljava/util/regex/Pattern;
    .param p4, "inlinePresentation"    # Landroid/service/autofill/InlinePresentation;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 954
    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    .line 955
    const-string/jumbo v0, "inlinePresentation cannot be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 956
    new-instance v7, Landroid/service/autofill/Dataset$DatasetFieldFilter;

    invoke-direct {v7, p3}, Landroid/service/autofill/Dataset$DatasetFieldFilter;-><init>(Ljava/util/regex/Pattern;)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-direct/range {v1 .. v8}, Landroid/service/autofill/Dataset$Builder;->setLifeTheUniverseAndEverything(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)V

    .line 958
    return-object p0
.end method

.method public whitelist setId(Ljava/lang/String;)Landroid/service/autofill/Dataset$Builder;
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 484
    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    .line 485
    iput-object p1, p0, Landroid/service/autofill/Dataset$Builder;->mId:Ljava/lang/String;

    .line 486
    return-object p0
.end method

.method public whitelist setInlinePresentation(Landroid/service/autofill/InlinePresentation;)Landroid/service/autofill/Dataset$Builder;
    .locals 1
    .param p1, "inlinePresentation"    # Landroid/service/autofill/InlinePresentation;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 370
    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    .line 371
    const-string/jumbo v0, "inlinePresentation must be non-null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 372
    iput-object p1, p0, Landroid/service/autofill/Dataset$Builder;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    .line 373
    return-object p0
.end method

.method public whitelist setInlinePresentation(Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;)Landroid/service/autofill/Dataset$Builder;
    .locals 1
    .param p1, "inlinePresentation"    # Landroid/service/autofill/InlinePresentation;
    .param p2, "inlineTooltipPresentation"    # Landroid/service/autofill/InlinePresentation;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 394
    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    .line 395
    const-string/jumbo v0, "inlinePresentation must be non-null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 396
    const-string/jumbo v0, "inlineTooltipPresentation must be non-null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 398
    iput-object p1, p0, Landroid/service/autofill/Dataset$Builder;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    .line 399
    iput-object p2, p0, Landroid/service/autofill/Dataset$Builder;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    .line 400
    return-object p0
.end method

.method public whitelist setValue(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/service/autofill/Dataset$Builder;
    .locals 8
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "value"    # Landroid/view/autofill/AutofillValue;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 564
    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    .line 565
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Landroid/service/autofill/Dataset$Builder;->setLifeTheUniverseAndEverything(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)V

    .line 566
    return-object p0
.end method

.method public whitelist setValue(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;)Landroid/service/autofill/Dataset$Builder;
    .locals 9
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "value"    # Landroid/view/autofill/AutofillValue;
    .param p3, "presentation"    # Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 595
    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    .line 596
    const-string/jumbo v0, "presentation cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 597
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v8}, Landroid/service/autofill/Dataset$Builder;->setLifeTheUniverseAndEverything(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)V

    .line 598
    return-object p0
.end method

.method public whitelist setValue(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;)Landroid/service/autofill/Dataset$Builder;
    .locals 9
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "value"    # Landroid/view/autofill/AutofillValue;
    .param p3, "presentation"    # Landroid/widget/RemoteViews;
    .param p4, "inlinePresentation"    # Landroid/service/autofill/InlinePresentation;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 706
    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    .line 707
    const-string/jumbo v0, "presentation cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 708
    const-string/jumbo v0, "inlinePresentation cannot be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 709
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v8}, Landroid/service/autofill/Dataset$Builder;->setLifeTheUniverseAndEverything(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)V

    .line 711
    return-object p0
.end method

.method public whitelist setValue(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;)Landroid/service/autofill/Dataset$Builder;
    .locals 9
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "value"    # Landroid/view/autofill/AutofillValue;
    .param p3, "presentation"    # Landroid/widget/RemoteViews;
    .param p4, "inlinePresentation"    # Landroid/service/autofill/InlinePresentation;
    .param p5, "inlineTooltipPresentation"    # Landroid/service/autofill/InlinePresentation;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 741
    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    .line 742
    const-string/jumbo v0, "presentation cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 743
    const-string/jumbo v0, "inlinePresentation cannot be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 744
    const-string/jumbo v0, "inlineTooltipPresentation cannot be null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 746
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v8}, Landroid/service/autofill/Dataset$Builder;->setLifeTheUniverseAndEverything(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)V

    .line 748
    return-object p0
.end method

.method public whitelist setValue(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Ljava/util/regex/Pattern;)Landroid/service/autofill/Dataset$Builder;
    .locals 10
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "value"    # Landroid/view/autofill/AutofillValue;
    .param p3, "filter"    # Ljava/util/regex/Pattern;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 632
    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    .line 633
    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mPresentation:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Dataset presentation not set on constructor"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 635
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Landroid/service/autofill/Dataset$DatasetFieldFilter;

    invoke-direct {v8, p3}, Landroid/service/autofill/Dataset$DatasetFieldFilter;-><init>(Ljava/util/regex/Pattern;)V

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v9}, Landroid/service/autofill/Dataset$Builder;->setLifeTheUniverseAndEverything(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)V

    .line 637
    return-object p0
.end method

.method public whitelist setValue(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Ljava/util/regex/Pattern;Landroid/widget/RemoteViews;)Landroid/service/autofill/Dataset$Builder;
    .locals 9
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "value"    # Landroid/view/autofill/AutofillValue;
    .param p3, "filter"    # Ljava/util/regex/Pattern;
    .param p4, "presentation"    # Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 673
    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    .line 674
    const-string/jumbo v0, "presentation cannot be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 675
    new-instance v7, Landroid/service/autofill/Dataset$DatasetFieldFilter;

    invoke-direct {v7, p3}, Landroid/service/autofill/Dataset$DatasetFieldFilter;-><init>(Ljava/util/regex/Pattern;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    invoke-direct/range {v1 .. v8}, Landroid/service/autofill/Dataset$Builder;->setLifeTheUniverseAndEverything(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)V

    .line 677
    return-object p0
.end method

.method public whitelist setValue(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Ljava/util/regex/Pattern;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;)Landroid/service/autofill/Dataset$Builder;
    .locals 9
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "value"    # Landroid/view/autofill/AutofillValue;
    .param p3, "filter"    # Ljava/util/regex/Pattern;
    .param p4, "presentation"    # Landroid/widget/RemoteViews;
    .param p5, "inlinePresentation"    # Landroid/service/autofill/InlinePresentation;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 789
    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    .line 790
    const-string/jumbo v0, "presentation cannot be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 791
    const-string/jumbo v0, "inlinePresentation cannot be null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 792
    new-instance v7, Landroid/service/autofill/Dataset$DatasetFieldFilter;

    invoke-direct {v7, p3}, Landroid/service/autofill/Dataset$DatasetFieldFilter;-><init>(Ljava/util/regex/Pattern;)V

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v1 .. v8}, Landroid/service/autofill/Dataset$Builder;->setLifeTheUniverseAndEverything(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)V

    .line 794
    return-object p0
.end method

.method public whitelist setValue(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Ljava/util/regex/Pattern;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;)Landroid/service/autofill/Dataset$Builder;
    .locals 9
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "value"    # Landroid/view/autofill/AutofillValue;
    .param p3, "filter"    # Ljava/util/regex/Pattern;
    .param p4, "presentation"    # Landroid/widget/RemoteViews;
    .param p5, "inlinePresentation"    # Landroid/service/autofill/InlinePresentation;
    .param p6, "inlineTooltipPresentation"    # Landroid/service/autofill/InlinePresentation;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 830
    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    .line 831
    const-string/jumbo v0, "presentation cannot be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 832
    const-string/jumbo v0, "inlinePresentation cannot be null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 833
    const-string/jumbo v0, "inlineTooltipPresentation cannot be null"

    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 835
    new-instance v7, Landroid/service/autofill/Dataset$DatasetFieldFilter;

    invoke-direct {v7, p3}, Landroid/service/autofill/Dataset$DatasetFieldFilter;-><init>(Ljava/util/regex/Pattern;)V

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v1 .. v8}, Landroid/service/autofill/Dataset$Builder;->setLifeTheUniverseAndEverything(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)V

    .line 837
    return-object p0
.end method
