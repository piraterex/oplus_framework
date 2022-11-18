.class abstract Landroid/view/translation/TranslationResponse$BaseBuilder;
.super Ljava/lang/Object;
.source "TranslationResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/translation/TranslationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BaseBuilder"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist setTranslationResponseValue(ILandroid/view/translation/TranslationResponseValue;)Landroid/view/translation/TranslationResponse$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # Landroid/view/translation/TranslationResponseValue;

    .line 99
    const-string/jumbo v0, "value should not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    move-object v0, p0

    check-cast v0, Landroid/view/translation/TranslationResponse$Builder;

    .line 102
    .local v0, "builder":Landroid/view/translation/TranslationResponse$Builder;
    invoke-static {v0}, Landroid/view/translation/TranslationResponse$Builder;->-$$Nest$fgetmTranslationResponseValues(Landroid/view/translation/TranslationResponse$Builder;)Landroid/util/SparseArray;

    move-result-object v1

    if-nez v1, :cond_0

    .line 103
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/translation/TranslationResponse$Builder;->setTranslationResponseValues(Landroid/util/SparseArray;)Landroid/view/translation/TranslationResponse$Builder;

    .line 105
    :cond_0
    invoke-static {v0}, Landroid/view/translation/TranslationResponse$Builder;->-$$Nest$fgetmTranslationResponseValues(Landroid/view/translation/TranslationResponse$Builder;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 106
    return-object v0
.end method

.method public abstract blacklist setTranslationStatus(I)Landroid/view/translation/TranslationResponse$Builder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public blacklist setViewTranslationResponse(ILandroid/view/translation/ViewTranslationResponse;)Landroid/view/translation/TranslationResponse$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "response"    # Landroid/view/translation/ViewTranslationResponse;

    .line 121
    const-string/jumbo v0, "value should not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    move-object v0, p0

    check-cast v0, Landroid/view/translation/TranslationResponse$Builder;

    .line 124
    .local v0, "builder":Landroid/view/translation/TranslationResponse$Builder;
    invoke-static {v0}, Landroid/view/translation/TranslationResponse$Builder;->-$$Nest$fgetmViewTranslationResponses(Landroid/view/translation/TranslationResponse$Builder;)Landroid/util/SparseArray;

    move-result-object v1

    if-nez v1, :cond_0

    .line 125
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/translation/TranslationResponse$Builder;->setViewTranslationResponses(Landroid/util/SparseArray;)Landroid/view/translation/TranslationResponse$Builder;

    .line 127
    :cond_0
    invoke-static {v0}, Landroid/view/translation/TranslationResponse$Builder;->-$$Nest$fgetmViewTranslationResponses(Landroid/view/translation/TranslationResponse$Builder;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 128
    return-object v0
.end method
