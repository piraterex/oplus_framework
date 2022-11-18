.class public final Landroid/view/translation/TranslationResponse$Builder;
.super Landroid/view/translation/TranslationResponse$BaseBuilder;
.source "TranslationResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/translation/TranslationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mFinalResponse:Z

.field private blacklist mTranslationResponseValues:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/translation/TranslationResponseValue;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTranslationStatus:I

.field private blacklist mViewTranslationResponses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/translation/ViewTranslationResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmTranslationResponseValues(Landroid/view/translation/TranslationResponse$Builder;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Landroid/view/translation/TranslationResponse$Builder;->mTranslationResponseValues:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmViewTranslationResponses(Landroid/view/translation/TranslationResponse$Builder;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Landroid/view/translation/TranslationResponse$Builder;->mViewTranslationResponses:Landroid/util/SparseArray;

    return-object p0
.end method

.method public constructor whitelist <init>(I)V
    .locals 5
    .param p1, "translationStatus"    # I

    .line 353
    invoke-direct {p0}, Landroid/view/translation/TranslationResponse$BaseBuilder;-><init>()V

    .line 344
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mBuilderFieldsSet:J

    .line 354
    iput p1, p0, Landroid/view/translation/TranslationResponse$Builder;->mTranslationStatus:I

    .line 356
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 359
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "translationStatus was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/translation/TranslationResponse$Builder;->mTranslationStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but must be one of: TRANSLATION_STATUS_SUCCESS("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), TRANSLATION_STATUS_UNKNOWN_ERROR("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "), TRANSLATION_STATUS_CONTEXT_UNSUPPORTED("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 366
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist checkNotUsed()V
    .locals 4

    .line 443
    iget-wide v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 447
    return-void

    .line 444
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/view/translation/TranslationResponse;
    .locals 6

    .line 422
    invoke-direct {p0}, Landroid/view/translation/TranslationResponse$Builder;->checkNotUsed()V

    .line 423
    iget-wide v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mBuilderFieldsSet:J

    .line 425
    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 426
    invoke-static {}, Landroid/view/translation/TranslationResponse;->-$$Nest$smdefaultTranslationResponseValues()Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mTranslationResponseValues:Landroid/util/SparseArray;

    .line 428
    :cond_0
    iget-wide v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 429
    invoke-static {}, Landroid/view/translation/TranslationResponse;->-$$Nest$smdefaultViewTranslationResponses()Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mViewTranslationResponses:Landroid/util/SparseArray;

    .line 431
    :cond_1
    iget-wide v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x8

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 432
    invoke-static {}, Landroid/view/translation/TranslationResponse;->-$$Nest$smdefaultFinalResponse()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mFinalResponse:Z

    .line 434
    :cond_2
    new-instance v0, Landroid/view/translation/TranslationResponse;

    iget v1, p0, Landroid/view/translation/TranslationResponse$Builder;->mTranslationStatus:I

    iget-object v2, p0, Landroid/view/translation/TranslationResponse$Builder;->mTranslationResponseValues:Landroid/util/SparseArray;

    iget-object v3, p0, Landroid/view/translation/TranslationResponse$Builder;->mViewTranslationResponses:Landroid/util/SparseArray;

    iget-boolean v4, p0, Landroid/view/translation/TranslationResponse$Builder;->mFinalResponse:Z

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/translation/TranslationResponse;-><init>(ILandroid/util/SparseArray;Landroid/util/SparseArray;Z)V

    .line 439
    .local v0, "o":Landroid/view/translation/TranslationResponse;
    return-object v0
.end method

.method public whitelist setFinalResponse(Z)Landroid/view/translation/TranslationResponse$Builder;
    .locals 4
    .param p1, "value"    # Z

    .line 414
    invoke-direct {p0}, Landroid/view/translation/TranslationResponse$Builder;->checkNotUsed()V

    .line 415
    iget-wide v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mBuilderFieldsSet:J

    .line 416
    iput-boolean p1, p0, Landroid/view/translation/TranslationResponse$Builder;->mFinalResponse:Z

    .line 417
    return-object p0
.end method

.method public bridge synthetic whitelist setTranslationResponseValue(ILandroid/view/translation/TranslationResponseValue;)Landroid/view/translation/TranslationResponse$Builder;
    .locals 0

    .line 335
    invoke-super {p0, p1, p2}, Landroid/view/translation/TranslationResponse$BaseBuilder;->setTranslationResponseValue(ILandroid/view/translation/TranslationResponseValue;)Landroid/view/translation/TranslationResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist setTranslationResponseValues(Landroid/util/SparseArray;)Landroid/view/translation/TranslationResponse$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/translation/TranslationResponseValue;",
            ">;)",
            "Landroid/view/translation/TranslationResponse$Builder;"
        }
    .end annotation

    .line 388
    .local p1, "value":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/translation/TranslationResponseValue;>;"
    invoke-direct {p0}, Landroid/view/translation/TranslationResponse$Builder;->checkNotUsed()V

    .line 389
    iget-wide v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mBuilderFieldsSet:J

    .line 390
    iput-object p1, p0, Landroid/view/translation/TranslationResponse$Builder;->mTranslationResponseValues:Landroid/util/SparseArray;

    .line 391
    return-object p0
.end method

.method public greylist setTranslationStatus(I)Landroid/view/translation/TranslationResponse$Builder;
    .locals 4
    .param p1, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 376
    invoke-direct {p0}, Landroid/view/translation/TranslationResponse$Builder;->checkNotUsed()V

    .line 377
    iget-wide v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mBuilderFieldsSet:J

    .line 378
    iput p1, p0, Landroid/view/translation/TranslationResponse$Builder;->mTranslationStatus:I

    .line 379
    return-object p0
.end method

.method public bridge synthetic whitelist setViewTranslationResponse(ILandroid/view/translation/ViewTranslationResponse;)Landroid/view/translation/TranslationResponse$Builder;
    .locals 0

    .line 335
    invoke-super {p0, p1, p2}, Landroid/view/translation/TranslationResponse$BaseBuilder;->setViewTranslationResponse(ILandroid/view/translation/ViewTranslationResponse;)Landroid/view/translation/TranslationResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist setViewTranslationResponses(Landroid/util/SparseArray;)Landroid/view/translation/TranslationResponse$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/translation/ViewTranslationResponse;",
            ">;)",
            "Landroid/view/translation/TranslationResponse$Builder;"
        }
    .end annotation

    .line 400
    .local p1, "value":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/translation/ViewTranslationResponse;>;"
    invoke-direct {p0}, Landroid/view/translation/TranslationResponse$Builder;->checkNotUsed()V

    .line 401
    iget-wide v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mBuilderFieldsSet:J

    .line 402
    iput-object p1, p0, Landroid/view/translation/TranslationResponse$Builder;->mViewTranslationResponses:Landroid/util/SparseArray;

    .line 403
    return-object p0
.end method
