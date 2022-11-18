.class public final Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;
.super Landroid/view/inputmethod/InlineSuggestionsRequest$BaseBuilder;
.source "InlineSuggestionsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InlineSuggestionsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mExtras:Landroid/os/Bundle;

.field private blacklist mHostDisplayId:I

.field private blacklist mHostInputToken:Landroid/os/IBinder;

.field private blacklist mHostPackageName:Ljava/lang/String;

.field private blacklist mInlinePresentationSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/inline/InlinePresentationSpec;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mInlineTooltipPresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

.field private blacklist mMaxSuggestionCount:I

.field private blacklist mSupportedLocales:Landroid/os/LocaleList;


# direct methods
.method public constructor whitelist <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/inline/InlinePresentationSpec;",
            ">;)V"
        }
    .end annotation

    .line 512
    .local p1, "inlinePresentationSpecs":Ljava/util/List;, "Ljava/util/List<Landroid/widget/inline/InlinePresentationSpec;>;"
    invoke-direct {p0}, Landroid/view/inputmethod/InlineSuggestionsRequest$BaseBuilder;-><init>()V

    .line 501
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    .line 513
    iput-object p1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mInlinePresentationSpecs:Ljava/util/List;

    .line 514
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 516
    return-void
.end method

.method private blacklist checkNotUsed()V
    .locals 4

    .line 681
    iget-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x100

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 685
    return-void

    .line 682
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist addInlinePresentationSpecs(Landroid/widget/inline/InlinePresentationSpec;)Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;
    .locals 1
    .param p1, "value"    # Landroid/widget/inline/InlinePresentationSpec;

    .line 552
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mInlinePresentationSpecs:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->setInlinePresentationSpecs(Ljava/util/List;)Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;

    .line 553
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mInlinePresentationSpecs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    return-object p0
.end method

.method public whitelist build()Landroid/view/inputmethod/InlineSuggestionsRequest;
    .locals 10

    .line 644
    invoke-direct {p0}, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->checkNotUsed()V

    .line 645
    iget-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x100

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    .line 647
    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 648
    invoke-static {}, Landroid/view/inputmethod/InlineSuggestionsRequest;->-$$Nest$smdefaultMaxSuggestionCount()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mMaxSuggestionCount:I

    .line 650
    :cond_0
    iget-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 651
    invoke-static {}, Landroid/view/inputmethod/InlineSuggestionsRequest;->-$$Nest$smdefaultHostPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mHostPackageName:Ljava/lang/String;

    .line 653
    :cond_1
    iget-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x8

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 654
    invoke-static {}, Landroid/view/inputmethod/InlineSuggestionsRequest;->-$$Nest$smdefaultSupportedLocales()Landroid/os/LocaleList;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mSupportedLocales:Landroid/os/LocaleList;

    .line 656
    :cond_2
    iget-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x10

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 657
    invoke-static {}, Landroid/view/inputmethod/InlineSuggestionsRequest;->-$$Nest$smdefaultExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mExtras:Landroid/os/Bundle;

    .line 659
    :cond_3
    iget-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x20

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 660
    invoke-static {}, Landroid/view/inputmethod/InlineSuggestionsRequest;->-$$Nest$smdefaultHostInputToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mHostInputToken:Landroid/os/IBinder;

    .line 662
    :cond_4
    iget-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x40

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    .line 663
    invoke-static {}, Landroid/view/inputmethod/InlineSuggestionsRequest;->-$$Nest$smdefaultHostDisplayId()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mHostDisplayId:I

    .line 665
    :cond_5
    iget-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x80

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    .line 666
    invoke-static {}, Landroid/view/inputmethod/InlineSuggestionsRequest;->-$$Nest$smdefaultInlineTooltipPresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mInlineTooltipPresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    .line 668
    :cond_6
    new-instance v0, Landroid/view/inputmethod/InlineSuggestionsRequest;

    iget v2, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mMaxSuggestionCount:I

    iget-object v3, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mInlinePresentationSpecs:Ljava/util/List;

    iget-object v4, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mHostPackageName:Ljava/lang/String;

    iget-object v5, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mSupportedLocales:Landroid/os/LocaleList;

    iget-object v6, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mExtras:Landroid/os/Bundle;

    iget-object v7, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mHostInputToken:Landroid/os/IBinder;

    iget v8, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mHostDisplayId:I

    iget-object v9, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mInlineTooltipPresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/view/inputmethod/InlineSuggestionsRequest;-><init>(ILjava/util/List;Ljava/lang/String;Landroid/os/LocaleList;Landroid/os/Bundle;Landroid/os/IBinder;ILandroid/widget/inline/InlinePresentationSpec;)V

    .line 677
    .local v0, "o":Landroid/view/inputmethod/InlineSuggestionsRequest;
    return-object v0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;
    .locals 4
    .param p1, "value"    # Landroid/os/Bundle;

    .line 595
    invoke-direct {p0}, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->checkNotUsed()V

    .line 596
    iget-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    .line 597
    iput-object p1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mExtras:Landroid/os/Bundle;

    .line 598
    return-object p0
.end method

.method blacklist setHostDisplayId(I)Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;
    .locals 4
    .param p1, "value"    # I

    .line 625
    invoke-direct {p0}, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->checkNotUsed()V

    .line 626
    iget-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    .line 627
    iput p1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mHostDisplayId:I

    .line 628
    return-object p0
.end method

.method blacklist setHostInputToken(Landroid/os/IBinder;)Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;
    .locals 4
    .param p1, "value"    # Landroid/os/IBinder;

    .line 610
    invoke-direct {p0}, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->checkNotUsed()V

    .line 611
    iget-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    .line 612
    iput-object p1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mHostInputToken:Landroid/os/IBinder;

    .line 613
    return-object p0
.end method

.method blacklist setHostPackageName(Ljava/lang/String;)Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 565
    invoke-direct {p0}, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->checkNotUsed()V

    .line 566
    iget-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    .line 567
    iput-object p1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mHostPackageName:Ljava/lang/String;

    .line 568
    return-object p0
.end method

.method public whitelist setInlinePresentationSpecs(Ljava/util/List;)Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/inline/InlinePresentationSpec;",
            ">;)",
            "Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;"
        }
    .end annotation

    .line 540
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Landroid/widget/inline/InlinePresentationSpec;>;"
    invoke-direct {p0}, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->checkNotUsed()V

    .line 541
    iget-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    .line 542
    iput-object p1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mInlinePresentationSpecs:Ljava/util/List;

    .line 543
    return-object p0
.end method

.method public whitelist setInlineTooltipPresentationSpec(Landroid/widget/inline/InlinePresentationSpec;)Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;
    .locals 4
    .param p1, "value"    # Landroid/widget/inline/InlinePresentationSpec;

    .line 636
    invoke-direct {p0}, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->checkNotUsed()V

    .line 637
    iget-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    .line 638
    iput-object p1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mInlineTooltipPresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    .line 639
    return-object p0
.end method

.method public whitelist setMaxSuggestionCount(I)Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;
    .locals 4
    .param p1, "value"    # I

    .line 527
    invoke-direct {p0}, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->checkNotUsed()V

    .line 528
    iget-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    .line 529
    iput p1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mMaxSuggestionCount:I

    .line 530
    return-object p0
.end method

.method public whitelist setSupportedLocales(Landroid/os/LocaleList;)Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;
    .locals 4
    .param p1, "value"    # Landroid/os/LocaleList;

    .line 581
    invoke-direct {p0}, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->checkNotUsed()V

    .line 582
    iget-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    .line 583
    iput-object p1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mSupportedLocales:Landroid/os/LocaleList;

    .line 584
    return-object p0
.end method
