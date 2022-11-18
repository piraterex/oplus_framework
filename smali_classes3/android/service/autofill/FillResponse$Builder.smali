.class public final Landroid/service/autofill/FillResponse$Builder;
.super Ljava/lang/Object;
.source "FillResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/FillResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mAuthentication:Landroid/content/IntentSender;

.field private greylist-max-o mAuthenticationIds:[Landroid/view/autofill/AutofillId;

.field private blacklist mCancelIds:[I

.field private greylist-max-o mClientState:Landroid/os/Bundle;

.field private greylist-max-o mDatasets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/Dataset;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mDestroyed:Z

.field private blacklist mDialogHeader:Landroid/widget/RemoteViews;

.field private blacklist mDialogPresentation:Landroid/widget/RemoteViews;

.field private greylist-max-o mDisableDuration:J

.field private greylist-max-o mFieldClassificationIds:[Landroid/view/autofill/AutofillId;

.field private blacklist mFillDialogTriggerIds:[Landroid/view/autofill/AutofillId;

.field private greylist-max-o mFlags:I

.field private greylist-max-o mFooter:Landroid/widget/RemoteViews;

.field private greylist-max-o mHeader:Landroid/widget/RemoteViews;

.field private greylist-max-o mIgnoredIds:[Landroid/view/autofill/AutofillId;

.field private blacklist mInlinePresentation:Landroid/service/autofill/InlinePresentation;

.field private blacklist mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

.field private greylist-max-o mPresentation:Landroid/widget/RemoteViews;

.field private greylist-max-o mSaveInfo:Landroid/service/autofill/SaveInfo;

.field private blacklist mSupportsInlineSuggestions:Z

.field private blacklist mUserData:Landroid/service/autofill/UserData;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAuthentication(Landroid/service/autofill/FillResponse$Builder;)Landroid/content/IntentSender;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/FillResponse$Builder;->mAuthentication:Landroid/content/IntentSender;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAuthenticationIds(Landroid/service/autofill/FillResponse$Builder;)[Landroid/view/autofill/AutofillId;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/FillResponse$Builder;->mAuthenticationIds:[Landroid/view/autofill/AutofillId;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCancelIds(Landroid/service/autofill/FillResponse$Builder;)[I
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/FillResponse$Builder;->mCancelIds:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmClientState(Landroid/service/autofill/FillResponse$Builder;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/FillResponse$Builder;->mClientState:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDatasets(Landroid/service/autofill/FillResponse$Builder;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/FillResponse$Builder;->mDatasets:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDialogHeader(Landroid/service/autofill/FillResponse$Builder;)Landroid/widget/RemoteViews;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/FillResponse$Builder;->mDialogHeader:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDialogPresentation(Landroid/service/autofill/FillResponse$Builder;)Landroid/widget/RemoteViews;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/FillResponse$Builder;->mDialogPresentation:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisableDuration(Landroid/service/autofill/FillResponse$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/service/autofill/FillResponse$Builder;->mDisableDuration:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFieldClassificationIds(Landroid/service/autofill/FillResponse$Builder;)[Landroid/view/autofill/AutofillId;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/FillResponse$Builder;->mFieldClassificationIds:[Landroid/view/autofill/AutofillId;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFillDialogTriggerIds(Landroid/service/autofill/FillResponse$Builder;)[Landroid/view/autofill/AutofillId;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/FillResponse$Builder;->mFillDialogTriggerIds:[Landroid/view/autofill/AutofillId;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlags(Landroid/service/autofill/FillResponse$Builder;)I
    .locals 0

    iget p0, p0, Landroid/service/autofill/FillResponse$Builder;->mFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFooter(Landroid/service/autofill/FillResponse$Builder;)Landroid/widget/RemoteViews;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/FillResponse$Builder;->mFooter:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHeader(Landroid/service/autofill/FillResponse$Builder;)Landroid/widget/RemoteViews;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/FillResponse$Builder;->mHeader:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIgnoredIds(Landroid/service/autofill/FillResponse$Builder;)[Landroid/view/autofill/AutofillId;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/FillResponse$Builder;->mIgnoredIds:[Landroid/view/autofill/AutofillId;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInlinePresentation(Landroid/service/autofill/FillResponse$Builder;)Landroid/service/autofill/InlinePresentation;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/FillResponse$Builder;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInlineTooltipPresentation(Landroid/service/autofill/FillResponse$Builder;)Landroid/service/autofill/InlinePresentation;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/FillResponse$Builder;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPresentation(Landroid/service/autofill/FillResponse$Builder;)Landroid/widget/RemoteViews;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/FillResponse$Builder;->mPresentation:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSaveInfo(Landroid/service/autofill/FillResponse$Builder;)Landroid/service/autofill/SaveInfo;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/FillResponse$Builder;->mSaveInfo:Landroid/service/autofill/SaveInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSupportsInlineSuggestions(Landroid/service/autofill/FillResponse$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/service/autofill/FillResponse$Builder;->mSupportsInlineSuggestions:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserData(Landroid/service/autofill/FillResponse$Builder;)Landroid/service/autofill/UserData;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/FillResponse$Builder;->mUserData:Landroid/service/autofill/UserData;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetAuthentication(Landroid/service/autofill/FillResponse$Builder;[Landroid/view/autofill/AutofillId;Landroid/content/IntentSender;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/widget/RemoteViews;)Landroid/service/autofill/FillResponse$Builder;
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/service/autofill/FillResponse$Builder;->setAuthentication([Landroid/view/autofill/AutofillId;Landroid/content/IntentSender;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/widget/RemoteViews;)Landroid/service/autofill/FillResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist setAuthentication([Landroid/view/autofill/AutofillId;Landroid/content/IntentSender;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/widget/RemoteViews;)Landroid/service/autofill/FillResponse$Builder;
    .locals 3
    .param p1, "ids"    # [Landroid/view/autofill/AutofillId;
    .param p2, "authentication"    # Landroid/content/IntentSender;
    .param p3, "presentation"    # Landroid/widget/RemoteViews;
    .param p4, "inlinePresentation"    # Landroid/service/autofill/InlinePresentation;
    .param p5, "inlineTooltipPresentation"    # Landroid/service/autofill/InlinePresentation;
    .param p6, "dialogPresentation"    # Landroid/widget/RemoteViews;

    .line 545
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    .line 546
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDisableAutofillCalled()V

    .line 547
    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mHeader:Landroid/widget/RemoteViews;

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mFooter:Landroid/widget/RemoteViews;

    if-nez v0, :cond_3

    .line 551
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-nez p3, :cond_1

    if-nez p4, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    xor-int/2addr v0, v2

    if-nez v0, :cond_2

    .line 555
    iput-object p2, p0, Landroid/service/autofill/FillResponse$Builder;->mAuthentication:Landroid/content/IntentSender;

    .line 556
    iput-object p3, p0, Landroid/service/autofill/FillResponse$Builder;->mPresentation:Landroid/widget/RemoteViews;

    .line 557
    iput-object p4, p0, Landroid/service/autofill/FillResponse$Builder;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    .line 558
    iput-object p5, p0, Landroid/service/autofill/FillResponse$Builder;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    .line 559
    iput-object p6, p0, Landroid/service/autofill/FillResponse$Builder;->mDialogPresentation:Landroid/widget/RemoteViews;

    .line 560
    invoke-static {p1}, Landroid/service/autofill/AutofillServiceHelper;->assertValid([Landroid/view/autofill/AutofillId;)[Landroid/view/autofill/AutofillId;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mAuthenticationIds:[Landroid/view/autofill/AutofillId;

    .line 561
    return-object p0

    .line 552
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authentication and presentation (dropdown or inline), must be both non-null or null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 548
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already called #setHeader() or #setFooter()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o throwIfAuthenticationCalled()V
    .locals 2

    .line 926
    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mAuthentication:Landroid/content/IntentSender;

    if-nez v0, :cond_0

    .line 929
    return-void

    .line 927
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already called #setAuthentication()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o throwIfDestroyed()V
    .locals 2

    .line 914
    iget-boolean v0, p0, Landroid/service/autofill/FillResponse$Builder;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 917
    return-void

    .line 915
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already called #build()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o throwIfDisableAutofillCalled()V
    .locals 4

    .line 920
    iget-wide v0, p0, Landroid/service/autofill/FillResponse$Builder;->mDisableDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 923
    return-void

    .line 921
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already called #disableAutofill()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist addDataset(Landroid/service/autofill/Dataset;)Landroid/service/autofill/FillResponse$Builder;
    .locals 1
    .param p1, "dataset"    # Landroid/service/autofill/Dataset;

    .line 595
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    .line 596
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDisableAutofillCalled()V

    .line 597
    if-nez p1, :cond_0

    .line 598
    return-object p0

    .line 600
    :cond_0
    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mDatasets:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 601
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mDatasets:Ljava/util/ArrayList;

    .line 603
    :cond_1
    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mDatasets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    return-object p0
.end method

.method public whitelist build()Landroid/service/autofill/FillResponse;
    .locals 4

    .line 885
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    .line 886
    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mAuthentication:Landroid/content/IntentSender;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mDatasets:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mSaveInfo:Landroid/service/autofill/SaveInfo;

    if-nez v0, :cond_1

    iget-wide v0, p0, Landroid/service/autofill/FillResponse$Builder;->mDisableDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mFieldClassificationIds:[Landroid/view/autofill/AutofillId;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mClientState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 889
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "need to provide: at least one DataSet, or a SaveInfo, or an authentication with a presentation, or a FieldsDetection, or a client state, or disable autofill"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 893
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mDatasets:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    iget-object v1, p0, Landroid/service/autofill/FillResponse$Builder;->mHeader:Landroid/widget/RemoteViews;

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/service/autofill/FillResponse$Builder;->mFooter:Landroid/widget/RemoteViews;

    if-nez v1, :cond_2

    goto :goto_1

    .line 894
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "must add at least 1 dataset when using header or footer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 898
    :cond_3
    :goto_1
    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 899
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/autofill/Dataset;

    .line 900
    .local v2, "dataset":Landroid/service/autofill/Dataset;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/service/autofill/Dataset;->getFieldInlinePresentation(I)Landroid/service/autofill/InlinePresentation;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 901
    iput-boolean v1, p0, Landroid/service/autofill/FillResponse$Builder;->mSupportsInlineSuggestions:Z

    .line 902
    goto :goto_3

    .line 904
    .end local v2    # "dataset":Landroid/service/autofill/Dataset;
    :cond_4
    goto :goto_2

    :cond_5
    :goto_3
    goto :goto_4

    .line 905
    :cond_6
    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    if-eqz v0, :cond_7

    .line 906
    iput-boolean v1, p0, Landroid/service/autofill/FillResponse$Builder;->mSupportsInlineSuggestions:Z

    .line 909
    :cond_7
    :goto_4
    iput-boolean v1, p0, Landroid/service/autofill/FillResponse$Builder;->mDestroyed:Z

    .line 910
    new-instance v0, Landroid/service/autofill/FillResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/autofill/FillResponse;-><init>(Landroid/service/autofill/FillResponse$Builder;Landroid/service/autofill/FillResponse-IA;)V

    return-object v0
.end method

.method public whitelist disableAutofill(J)Landroid/service/autofill/FillResponse$Builder;
    .locals 2
    .param p1, "duration"    # J

    .line 718
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    .line 719
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 722
    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mAuthentication:Landroid/content/IntentSender;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mDatasets:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mSaveInfo:Landroid/service/autofill/SaveInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mFieldClassificationIds:[Landroid/view/autofill/AutofillId;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mClientState:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 727
    iput-wide p1, p0, Landroid/service/autofill/FillResponse$Builder;->mDisableDuration:J

    .line 728
    return-object p0

    .line 724
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "disableAutofill() must be the only method called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 720
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "duration must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAuthentication([Landroid/view/autofill/AutofillId;Landroid/content/IntentSender;Landroid/service/autofill/Presentations;)Landroid/service/autofill/FillResponse$Builder;
    .locals 8
    .param p1, "ids"    # [Landroid/view/autofill/AutofillId;
    .param p2, "authentication"    # Landroid/content/IntentSender;
    .param p3, "presentations"    # Landroid/service/autofill/Presentations;

    .line 523
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    .line 524
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDisableAutofillCalled()V

    .line 525
    if-nez p3, :cond_0

    .line 526
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/service/autofill/FillResponse$Builder;->setAuthentication([Landroid/view/autofill/AutofillId;Landroid/content/IntentSender;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/widget/RemoteViews;)Landroid/service/autofill/FillResponse$Builder;

    move-result-object v0

    return-object v0

    .line 528
    :cond_0
    nop

    .line 529
    invoke-virtual {p3}, Landroid/service/autofill/Presentations;->getMenuPresentation()Landroid/widget/RemoteViews;

    move-result-object v4

    .line 530
    invoke-virtual {p3}, Landroid/service/autofill/Presentations;->getInlinePresentation()Landroid/service/autofill/InlinePresentation;

    move-result-object v5

    .line 531
    invoke-virtual {p3}, Landroid/service/autofill/Presentations;->getInlineTooltipPresentation()Landroid/service/autofill/InlinePresentation;

    move-result-object v6

    .line 532
    invoke-virtual {p3}, Landroid/service/autofill/Presentations;->getDialogPresentation()Landroid/widget/RemoteViews;

    move-result-object v7

    .line 528
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Landroid/service/autofill/FillResponse$Builder;->setAuthentication([Landroid/view/autofill/AutofillId;Landroid/content/IntentSender;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/widget/RemoteViews;)Landroid/service/autofill/FillResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setAuthentication([Landroid/view/autofill/AutofillId;Landroid/content/IntentSender;Landroid/widget/RemoteViews;)Landroid/service/autofill/FillResponse$Builder;
    .locals 3
    .param p1, "ids"    # [Landroid/view/autofill/AutofillId;
    .param p2, "authentication"    # Landroid/content/IntentSender;
    .param p3, "presentation"    # Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 361
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    .line 362
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDisableAutofillCalled()V

    .line 363
    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mHeader:Landroid/widget/RemoteViews;

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mFooter:Landroid/widget/RemoteViews;

    if-nez v0, :cond_3

    .line 367
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    xor-int/2addr v0, v2

    if-nez v0, :cond_2

    .line 371
    iput-object p2, p0, Landroid/service/autofill/FillResponse$Builder;->mAuthentication:Landroid/content/IntentSender;

    .line 372
    iput-object p3, p0, Landroid/service/autofill/FillResponse$Builder;->mPresentation:Landroid/widget/RemoteViews;

    .line 373
    invoke-static {p1}, Landroid/service/autofill/AutofillServiceHelper;->assertValid([Landroid/view/autofill/AutofillId;)[Landroid/view/autofill/AutofillId;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mAuthenticationIds:[Landroid/view/autofill/AutofillId;

    .line 374
    return-object p0

    .line 368
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authentication and presentation must be both non-null or null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already called #setHeader() or #setFooter()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAuthentication([Landroid/view/autofill/AutofillId;Landroid/content/IntentSender;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;)Landroid/service/autofill/FillResponse$Builder;
    .locals 6
    .param p1, "ids"    # [Landroid/view/autofill/AutofillId;
    .param p2, "authentication"    # Landroid/content/IntentSender;
    .param p3, "presentation"    # Landroid/widget/RemoteViews;
    .param p4, "inlinePresentation"    # Landroid/service/autofill/InlinePresentation;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 425
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/service/autofill/FillResponse$Builder;->setAuthentication([Landroid/view/autofill/AutofillId;Landroid/content/IntentSender;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;)Landroid/service/autofill/FillResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setAuthentication([Landroid/view/autofill/AutofillId;Landroid/content/IntentSender;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;)Landroid/service/autofill/FillResponse$Builder;
    .locals 7
    .param p1, "ids"    # [Landroid/view/autofill/AutofillId;
    .param p2, "authentication"    # Landroid/content/IntentSender;
    .param p3, "presentation"    # Landroid/widget/RemoteViews;
    .param p4, "inlinePresentation"    # Landroid/service/autofill/InlinePresentation;
    .param p5, "inlineTooltipPresentation"    # Landroid/service/autofill/InlinePresentation;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 446
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    .line 447
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDisableAutofillCalled()V

    .line 448
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/service/autofill/FillResponse$Builder;->setAuthentication([Landroid/view/autofill/AutofillId;Landroid/content/IntentSender;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/widget/RemoteViews;)Landroid/service/autofill/FillResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setClientState(Landroid/os/Bundle;)Landroid/service/autofill/FillResponse$Builder;
    .locals 0
    .param p1, "clientState"    # Landroid/os/Bundle;

    .line 637
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    .line 638
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDisableAutofillCalled()V

    .line 639
    iput-object p1, p0, Landroid/service/autofill/FillResponse$Builder;->mClientState:Landroid/os/Bundle;

    .line 640
    return-object p0
.end method

.method public whitelist setDialogHeader(Landroid/widget/RemoteViews;)Landroid/service/autofill/FillResponse$Builder;
    .locals 0
    .param p1, "header"    # Landroid/widget/RemoteViews;

    .line 843
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    .line 844
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    iput-object p1, p0, Landroid/service/autofill/FillResponse$Builder;->mDialogHeader:Landroid/widget/RemoteViews;

    .line 846
    return-object p0
.end method

.method public varargs whitelist setFieldClassificationIds([Landroid/view/autofill/AutofillId;)Landroid/service/autofill/FillResponse$Builder;
    .locals 4
    .param p1, "ids"    # [Landroid/view/autofill/AutofillId;

    .line 658
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    .line 659
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDisableAutofillCalled()V

    .line 660
    const-string/jumbo v0, "ids"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    .line 661
    array-length v0, p1

    .line 662
    invoke-static {}, Landroid/service/autofill/UserData;->getMaxFieldClassificationIdsSize()I

    move-result v1

    .line 661
    const/4 v2, 0x1

    const-string/jumbo v3, "ids length"

    invoke-static {v0, v2, v1, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 663
    iput-object p1, p0, Landroid/service/autofill/FillResponse$Builder;->mFieldClassificationIds:[Landroid/view/autofill/AutofillId;

    .line 664
    iget v0, p0, Landroid/service/autofill/FillResponse$Builder;->mFlags:I

    or-int/2addr v0, v2

    iput v0, p0, Landroid/service/autofill/FillResponse$Builder;->mFlags:I

    .line 665
    return-object p0
.end method

.method public varargs whitelist setFillDialogTriggerIds([Landroid/view/autofill/AutofillId;)Landroid/service/autofill/FillResponse$Builder;
    .locals 1
    .param p1, "ids"    # [Landroid/view/autofill/AutofillId;

    .line 860
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    .line 861
    const-string/jumbo v0, "ids"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    .line 862
    iput-object p1, p0, Landroid/service/autofill/FillResponse$Builder;->mFillDialogTriggerIds:[Landroid/view/autofill/AutofillId;

    .line 863
    return-object p0
.end method

.method public whitelist setFlags(I)Landroid/service/autofill/FillResponse$Builder;
    .locals 1
    .param p1, "flags"    # I

    .line 678
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    .line 679
    const/4 v0, 0x7

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    move-result v0

    iput v0, p0, Landroid/service/autofill/FillResponse$Builder;->mFlags:I

    .line 681
    return-object p0
.end method

.method public whitelist setFooter(Landroid/widget/RemoteViews;)Landroid/service/autofill/FillResponse$Builder;
    .locals 1
    .param p1, "footer"    # Landroid/widget/RemoteViews;

    .line 789
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    .line 790
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfAuthenticationCalled()V

    .line 791
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mFooter:Landroid/widget/RemoteViews;

    .line 792
    return-object p0
.end method

.method public whitelist setHeader(Landroid/widget/RemoteViews;)Landroid/service/autofill/FillResponse$Builder;
    .locals 1
    .param p1, "header"    # Landroid/widget/RemoteViews;

    .line 757
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    .line 758
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfAuthenticationCalled()V

    .line 759
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mHeader:Landroid/widget/RemoteViews;

    .line 760
    return-object p0
.end method

.method public varargs whitelist setIgnoredIds([Landroid/view/autofill/AutofillId;)Landroid/service/autofill/FillResponse$Builder;
    .locals 0
    .param p1, "ids"    # [Landroid/view/autofill/AutofillId;

    .line 574
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    .line 575
    iput-object p1, p0, Landroid/service/autofill/FillResponse$Builder;->mIgnoredIds:[Landroid/view/autofill/AutofillId;

    .line 576
    return-object p0
.end method

.method public whitelist setPresentationCancelIds([I)Landroid/service/autofill/FillResponse$Builder;
    .locals 0
    .param p1, "ids"    # [I

    .line 828
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    .line 829
    iput-object p1, p0, Landroid/service/autofill/FillResponse$Builder;->mCancelIds:[I

    .line 830
    return-object p0
.end method

.method public whitelist setSaveInfo(Landroid/service/autofill/SaveInfo;)Landroid/service/autofill/FillResponse$Builder;
    .locals 0
    .param p1, "saveInfo"    # Landroid/service/autofill/SaveInfo;

    .line 615
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    .line 616
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDisableAutofillCalled()V

    .line 617
    iput-object p1, p0, Landroid/service/autofill/FillResponse$Builder;->mSaveInfo:Landroid/service/autofill/SaveInfo;

    .line 618
    return-object p0
.end method

.method public whitelist setUserData(Landroid/service/autofill/UserData;)Landroid/service/autofill/FillResponse$Builder;
    .locals 1
    .param p1, "userData"    # Landroid/service/autofill/UserData;

    .line 808
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    .line 809
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfAuthenticationCalled()V

    .line 810
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/autofill/UserData;

    iput-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mUserData:Landroid/service/autofill/UserData;

    .line 811
    return-object p0
.end method
