.class Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;
.super Landroid/widget/Filter;
.source "SuggestedLocaleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/SuggestedLocaleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FilterByNativeAndUiNames"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/SuggestedLocaleAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/SuggestedLocaleAdapter;

    .line 318
    iput-object p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 11
    .param p1, "prefix"    # Ljava/lang/CharSequence;

    .line 322
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 324
    .local v0, "results":Landroid/widget/Filter$FilterResults;
    iget-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-static {v1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-$$Nest$fgetmOriginalLocaleOptions(Lcom/android/internal/app/SuggestedLocaleAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    .line 325
    iget-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-static {v3}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-$$Nest$fgetmLocaleOptions(Lcom/android/internal/app/SuggestedLocaleAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v2}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-$$Nest$fputmOriginalLocaleOptions(Lcom/android/internal/app/SuggestedLocaleAdapter;Ljava/util/ArrayList;)V

    .line 329
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-static {v2}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-$$Nest$fgetmOriginalLocaleOptions(Lcom/android/internal/app/SuggestedLocaleAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 330
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 335
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 336
    .local v2, "locale":Ljava/util/Locale;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/internal/app/LocaleHelper;->normalizeForSearch(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 338
    .local v3, "prefixString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 339
    .local v4, "count":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v5, "newValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_4

    .line 342
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 343
    .local v7, "value":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    nop

    .line 344
    invoke-virtual {v7}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameInUiLanguage()Ljava/lang/String;

    move-result-object v8

    .line 343
    invoke-static {v8, v2}, Lcom/android/internal/app/LocaleHelper;->normalizeForSearch(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    .line 345
    .local v8, "nameToCheck":Ljava/lang/String;
    nop

    .line 346
    invoke-virtual {v7}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameNative()Ljava/lang/String;

    move-result-object v9

    .line 345
    invoke-static {v9, v2}, Lcom/android/internal/app/LocaleHelper;->normalizeForSearch(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    .line 347
    .local v9, "nativeNameToCheck":Ljava/lang/String;
    invoke-virtual {p0, v9, v3}, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->wordMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 348
    invoke-virtual {p0, v8, v3}, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->wordMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 349
    :cond_2
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    .end local v7    # "value":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v8    # "nameToCheck":Ljava/lang/String;
    .end local v9    # "nativeNameToCheck":Ljava/lang/String;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 353
    .end local v6    # "i":I
    :cond_4
    iput-object v5, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 354
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    iput v6, v0, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_2

    .line 331
    .end local v2    # "locale":Ljava/util/Locale;
    .end local v3    # "prefixString":Ljava/lang/String;
    .end local v4    # "count":I
    .end local v5    # "newValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    :cond_5
    :goto_1
    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 332
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 357
    :goto_2
    return-object v0
.end method

.method protected whitelist publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 4
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .line 380
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-$$Nest$fputmLocaleOptions(Lcom/android/internal/app/SuggestedLocaleAdapter;Ljava/util/ArrayList;)V

    .line 382
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-$$Nest$fputmSuggestionCount(Lcom/android/internal/app/SuggestedLocaleAdapter;I)V

    .line 383
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-static {v0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-$$Nest$fgetmLocaleOptions(Lcom/android/internal/app/SuggestedLocaleAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 384
    .local v1, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggested()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 385
    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-static {v2}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-$$Nest$fgetmSuggestionCount(Lcom/android/internal/app/SuggestedLocaleAdapter;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-$$Nest$fputmSuggestionCount(Lcom/android/internal/app/SuggestedLocaleAdapter;I)V

    .line 387
    .end local v1    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_0
    goto :goto_0

    .line 389
    :cond_1
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_2

    .line 390
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 392
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->notifyDataSetInvalidated()V

    .line 394
    :goto_1
    return-void
.end method

.method blacklist wordMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "valueText"    # Ljava/lang/String;
    .param p2, "prefixString"    # Ljava/lang/String;

    .line 363
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 364
    return v1

    .line 367
    :cond_0
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, "words":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 370
    .local v5, "word":Ljava/lang/String;
    invoke-virtual {v5, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 371
    return v1

    .line 369
    .end local v5    # "word":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 375
    :cond_2
    return v3
.end method
