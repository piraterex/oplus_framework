.class Landroid/widget/SimpleAdapter$SimpleFilter;
.super Landroid/widget/Filter;
.source "SimpleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SimpleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleFilter"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/SimpleAdapter;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/SimpleAdapter;)V
    .locals 0

    .line 362
    iput-object p1, p0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/SimpleAdapter;Landroid/widget/SimpleAdapter$SimpleFilter-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SimpleAdapter$SimpleFilter;-><init>(Landroid/widget/SimpleAdapter;)V

    return-void
.end method


# virtual methods
.method protected whitelist performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 16
    .param p1, "prefix"    # Ljava/lang/CharSequence;

    .line 366
    move-object/from16 v0, p0

    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 368
    .local v1, "results":Landroid/widget/Filter$FilterResults;
    iget-object v2, v0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    invoke-static {v2}, Landroid/widget/SimpleAdapter;->-$$Nest$fgetmUnfilteredData(Landroid/widget/SimpleAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_0

    .line 369
    iget-object v2, v0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    invoke-static {v4}, Landroid/widget/SimpleAdapter;->-$$Nest$fgetmData(Landroid/widget/SimpleAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2, v3}, Landroid/widget/SimpleAdapter;->-$$Nest$fputmUnfilteredData(Landroid/widget/SimpleAdapter;Ljava/util/ArrayList;)V

    .line 372
    :cond_0
    if-eqz p1, :cond_6

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_4

    .line 377
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, "prefixString":Ljava/lang/String;
    iget-object v3, v0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    invoke-static {v3}, Landroid/widget/SimpleAdapter;->-$$Nest$fgetmUnfilteredData(Landroid/widget/SimpleAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    .line 380
    .local v3, "unfilteredValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;*>;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 382
    .local v4, "count":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 384
    .local v5, "newValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;*>;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_5

    .line 385
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 386
    .local v7, "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    if-eqz v7, :cond_4

    .line 388
    iget-object v8, v0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    invoke-static {v8}, Landroid/widget/SimpleAdapter;->-$$Nest$fgetmTo(Landroid/widget/SimpleAdapter;)[I

    move-result-object v8

    array-length v8, v8

    .line 390
    .local v8, "len":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    if-ge v9, v8, :cond_4

    .line 391
    iget-object v10, v0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    invoke-static {v10}, Landroid/widget/SimpleAdapter;->-$$Nest$fgetmFrom(Landroid/widget/SimpleAdapter;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v9

    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 393
    .local v10, "str":Ljava/lang/String;
    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 394
    .local v11, "words":[Ljava/lang/String;
    array-length v12, v11

    .line 396
    .local v12, "wordCount":I
    const/4 v13, 0x0

    .local v13, "k":I
    :goto_2
    if-ge v13, v12, :cond_3

    .line 397
    aget-object v14, v11, v13

    .line 399
    .local v14, "word":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 400
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    goto :goto_3

    .line 396
    .end local v14    # "word":Ljava/lang/String;
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 390
    .end local v10    # "str":Ljava/lang/String;
    .end local v11    # "words":[Ljava/lang/String;
    .end local v12    # "wordCount":I
    .end local v13    # "k":I
    :cond_3
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 384
    .end local v7    # "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v8    # "len":I
    .end local v9    # "j":I
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 408
    .end local v6    # "i":I
    :cond_5
    iput-object v5, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 409
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    iput v6, v1, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_5

    .line 373
    .end local v2    # "prefixString":Ljava/lang/String;
    .end local v3    # "unfilteredValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;*>;>;"
    .end local v4    # "count":I
    .end local v5    # "newValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;*>;>;"
    :cond_6
    :goto_4
    iget-object v2, v0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    invoke-static {v2}, Landroid/widget/SimpleAdapter;->-$$Nest$fgetmUnfilteredData(Landroid/widget/SimpleAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    .line 374
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;*>;>;"
    iput-object v2, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 375
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 376
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;*>;>;"
    nop

    .line 412
    :goto_5
    return-object v1
.end method

.method protected whitelist publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .line 418
    iget-object v0, p0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1}, Landroid/widget/SimpleAdapter;->-$$Nest$fputmData(Landroid/widget/SimpleAdapter;Ljava/util/List;)V

    .line 419
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    .line 420
    iget-object v0, p0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 422
    :cond_0
    iget-object v0, p0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetInvalidated()V

    .line 424
    :goto_0
    return-void
.end method
