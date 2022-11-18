.class Landroid/widget/RemoteCollectionItemsAdapter;
.super Landroid/widget/BaseAdapter;
.source "RemoteCollectionItemsAdapter.java"


# instance fields
.field private blacklist mColorResources:Landroid/widget/RemoteViews$ColorResources;

.field private blacklist mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

.field private blacklist mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

.field private blacklist mLayoutIdToViewType:Landroid/util/SparseIntArray;

.field private final blacklist mViewTypeCount:I


# direct methods
.method constructor blacklist <init>(Landroid/widget/RemoteViews$RemoteCollectionItems;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
    .locals 1
    .param p1, "items"    # Landroid/widget/RemoteViews$RemoteCollectionItems;
    .param p2, "interactionHandler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p3, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 50
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->getViewTypeCount()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mViewTypeCount:I

    .line 57
    iput-object p1, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    .line 58
    iput-object p2, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    .line 59
    iput-object p3, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    .line 61
    invoke-direct {p0}, Landroid/widget/RemoteCollectionItemsAdapter;->initLayoutIdToViewType()V

    .line 62
    return-void
.end method

.method private static blacklist getViewToReapply(Landroid/view/View;Landroid/widget/RemoteViews;)Landroid/view/View;
    .locals 4
    .param p0, "convertView"    # Landroid/view/View;
    .param p1, "item"    # Landroid/widget/RemoteViews;

    .line 210
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 212
    :cond_0
    const v1, 0x1020018

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 213
    .local v1, "layoutIdTag":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-nez v2, :cond_1

    return-object v0

    .line 215
    :cond_1
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v2

    move-object v3, v1

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_2

    move-object v0, p0

    :cond_2
    return-object v0
.end method

.method private blacklist initLayoutIdToViewType()V
    .locals 10

    .line 88
    iget-object v0, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mLayoutIdToViewType:Landroid/util/SparseIntArray;

    .line 89
    .local v0, "previousLayoutIdToViewType":Landroid/util/SparseIntArray;
    new-instance v1, Landroid/util/SparseIntArray;

    iget v2, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mViewTypeCount:I

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mLayoutIdToViewType:Landroid/util/SparseIntArray;

    .line 91
    iget-object v1, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-virtual {v1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v2, Landroid/widget/RemoteCollectionItemsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/widget/RemoteCollectionItemsAdapter$$ExternalSyntheticLambda0;-><init>(Landroid/widget/RemoteCollectionItemsAdapter;)V

    .line 92
    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->map(Ljava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;

    move-result-object v1

    .line 93
    invoke-interface {v1}, Ljava/util/stream/IntStream;->distinct()Ljava/util/stream/IntStream;

    move-result-object v1

    .line 94
    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    .line 95
    .local v1, "layoutIds":[I
    array-length v2, v1

    iget v3, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mViewTypeCount:I

    if-gt v2, v3, :cond_4

    .line 102
    array-length v2, v1

    new-array v2, v2, [Z

    .line 104
    .local v2, "processedLayoutIdIndices":[Z
    new-array v3, v3, [Z

    .line 106
    .local v3, "assignedViewTypes":[Z
    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 107
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_1

    .line 108
    aget v6, v1, v5

    .line 111
    .local v6, "layoutId":I
    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 113
    .local v7, "previousViewType":I
    if-gez v7, :cond_0

    goto :goto_1

    .line 115
    :cond_0
    iget-object v8, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mLayoutIdToViewType:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 116
    aput-boolean v4, v2, v5

    .line 117
    aput-boolean v4, v3, v7

    .line 107
    .end local v6    # "layoutId":I
    .end local v7    # "previousViewType":I
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 121
    .end local v5    # "i":I
    :cond_1
    const/4 v5, -0x1

    .line 122
    .local v5, "lastViewType":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    array-length v7, v1

    if-ge v6, v7, :cond_3

    .line 124
    aget-boolean v7, v2, v6

    if-eqz v7, :cond_2

    goto :goto_3

    .line 126
    :cond_2
    aget v7, v1, v6

    .line 130
    .local v7, "layoutId":I
    add-int/lit8 v8, v5, 0x1

    array-length v9, v1

    invoke-static {v8, v9}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v8

    new-instance v9, Landroid/widget/RemoteCollectionItemsAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v9, v3}, Landroid/widget/RemoteCollectionItemsAdapter$$ExternalSyntheticLambda1;-><init>([Z)V

    .line 131
    invoke-interface {v8, v9}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object v8

    .line 132
    invoke-interface {v8}, Ljava/util/stream/IntStream;->findFirst()Ljava/util/OptionalInt;

    move-result-object v8

    new-instance v9, Landroid/widget/RemoteCollectionItemsAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v9}, Landroid/widget/RemoteCollectionItemsAdapter$$ExternalSyntheticLambda2;-><init>()V

    .line 133
    invoke-virtual {v8, v9}, Ljava/util/OptionalInt;->orElseThrow(Ljava/util/function/Supplier;)I

    move-result v8

    .line 137
    .local v8, "viewType":I
    iget-object v9, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mLayoutIdToViewType:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 138
    aput-boolean v4, v2, v6

    .line 139
    aput-boolean v4, v3, v8

    .line 140
    move v5, v8

    .line 122
    .end local v7    # "layoutId":I
    .end local v8    # "viewType":I
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 142
    .end local v6    # "i":I
    :cond_3
    return-void

    .line 96
    .end local v2    # "processedLayoutIdIndices":[Z
    .end local v3    # "assignedViewTypes":[Z
    .end local v5    # "lastViewType":I
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Collection items uses "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " distinct layouts, which is more than view type count of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mViewTypeCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static synthetic blacklist lambda$initLayoutIdToViewType$1([ZI)Z
    .locals 1
    .param p0, "assignedViewTypes"    # [Z
    .param p1, "type"    # I

    .line 131
    aget-boolean v0, p0, p1

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic blacklist lambda$initLayoutIdToViewType$2()Ljava/lang/IllegalStateException;
    .locals 2

    .line 134
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RemoteCollectionItems has more distinct layout ids than its view type count"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public whitelist getCount()I
    .locals 1

    .line 146
    iget-object v0, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-virtual {v0}, Landroid/widget/RemoteViews$RemoteCollectionItems;->getItemCount()I

    move-result v0

    return v0
.end method

.method public blacklist getItem(I)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "position"    # I

    .line 151
    iget-object v0, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->getItemView(I)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist getItem(I)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Landroid/widget/RemoteCollectionItemsAdapter;->getItem(I)Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 156
    iget-object v0, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .line 161
    iget-object v0, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mLayoutIdToViewType:Landroid/util/SparseIntArray;

    iget-object v1, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-virtual {v1, p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->getItemView(I)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 177
    invoke-virtual {p0}, Landroid/widget/RemoteCollectionItemsAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 179
    :cond_0
    iget-object v0, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->getItemView(I)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 180
    .local v0, "item":Landroid/widget/RemoteViews;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews;->addFlags(I)V

    .line 181
    invoke-static {p2, v0}, Landroid/widget/RemoteCollectionItemsAdapter;->getViewToReapply(Landroid/view/View;Landroid/widget/RemoteViews;)Landroid/view/View;

    move-result-object v7

    .line 184
    .local v7, "reapplyView":Landroid/view/View;
    if-eqz v7, :cond_1

    .line 186
    nop

    .line 187
    :try_start_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    .line 186
    move-object v1, v0

    move-object v3, v7

    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    return-object v7

    .line 193
    :catch_0
    move-exception v1

    .line 199
    :cond_1
    nop

    .line 200
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    .line 199
    move-object v1, v0

    move-object v3, p3

    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getViewTypeCount()I
    .locals 1

    .line 166
    iget v0, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mViewTypeCount:I

    return v0
.end method

.method public whitelist hasStableIds()Z
    .locals 1

    .line 171
    iget-object v0, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-virtual {v0}, Landroid/widget/RemoteViews$RemoteCollectionItems;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method synthetic blacklist lambda$initLayoutIdToViewType$0$android-widget-RemoteCollectionItemsAdapter(I)I
    .locals 1
    .param p1, "position"    # I

    .line 92
    iget-object v0, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->getItemView(I)Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    return v0
.end method

.method blacklist setData(Landroid/widget/RemoteViews$RemoteCollectionItems;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
    .locals 2
    .param p1, "items"    # Landroid/widget/RemoteViews$RemoteCollectionItems;
    .param p2, "interactionHandler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p3, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 73
    iget v0, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mViewTypeCount:I

    invoke-virtual {p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->getViewTypeCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 78
    iput-object p1, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    .line 79
    iput-object p2, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    .line 80
    iput-object p3, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    .line 82
    invoke-direct {p0}, Landroid/widget/RemoteCollectionItemsAdapter;->initLayoutIdToViewType()V

    .line 84
    invoke-virtual {p0}, Landroid/widget/RemoteCollectionItemsAdapter;->notifyDataSetChanged()V

    .line 85
    return-void

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RemoteCollectionItemsAdapter cannot increase view type count after creation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
