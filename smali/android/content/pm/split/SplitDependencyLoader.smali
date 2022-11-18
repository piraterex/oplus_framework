.class public abstract Landroid/content/pm/split/SplitDependencyLoader;
.super Ljava/lang/Object;
.source "SplitDependencyLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Exception;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mDependencies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor blacklist <init>(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[I>;)V"
        }
    .end annotation

    .line 49
    .local p0, "this":Landroid/content/pm/split/SplitDependencyLoader;, "Landroid/content/pm/split/SplitDependencyLoader<TE;>;"
    .local p1, "dependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/content/pm/split/SplitDependencyLoader;->mDependencies:Landroid/util/SparseArray;

    .line 51
    return-void
.end method

.method private static blacklist append([II)[I
    .locals 2
    .param p0, "src"    # [I
    .param p1, "elem"    # I

    .line 144
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 145
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    return-object v0

    .line 147
    :cond_0
    array-length v1, p0

    add-int/2addr v1, v0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 148
    .local v0, "dst":[I
    array-length v1, p0

    aput p1, v0, v1

    .line 149
    return-object v0
.end method

.method private blacklist collectConfigSplitIndices(I)[I
    .locals 3
    .param p1, "splitIdx"    # I

    .line 109
    .local p0, "this":Landroid/content/pm/split/SplitDependencyLoader;, "Landroid/content/pm/split/SplitDependencyLoader<TE;>;"
    iget-object v0, p0, Landroid/content/pm/split/SplitDependencyLoader;->mDependencies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 110
    .local v0, "deps":[I
    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    array-length v1, v0

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v1

    return-object v1

    .line 111
    :cond_1
    :goto_0
    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    return-object v1
.end method

.method public static blacklist createDependenciesFromPackage(Landroid/content/pm/parsing/PackageLite;)Landroid/util/SparseArray;
    .locals 12
    .param p0, "pkg"    # Landroid/content/pm/parsing/PackageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/PackageLite;",
            ")",
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;
        }
    .end annotation

    .line 166
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 169
    .local v0, "splitDependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/4 v4, -0x1

    aput v4, v2, v3

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 173
    const/4 v2, 0x0

    .local v2, "splitIdx":I
    :goto_0
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    const-string v6, "\', which is missing."

    const-string v7, "Split \'"

    const/4 v8, 0x0

    if-ge v2, v5, :cond_3

    .line 174
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getIsFeatureSplits()[Z

    move-result-object v5

    aget-boolean v5, v5, v2

    if-nez v5, :cond_0

    .line 176
    goto :goto_2

    .line 181
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getUsesSplitNames()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    .line 182
    .local v5, "splitDependency":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 183
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v5}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    .line 184
    .local v9, "depIdx":I
    if-ltz v9, :cond_1

    .line 188
    add-int/lit8 v9, v9, 0x1

    .line 189
    .local v9, "targetIdx":I
    goto :goto_1

    .line 185
    .local v9, "depIdx":I
    :cond_1
    new-instance v1, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' requires split \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v8}, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;-><init>(Ljava/lang/String;Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException-IA;)V

    throw v1

    .line 191
    .end local v9    # "depIdx":I
    :cond_2
    const/4 v9, 0x0

    .line 193
    .local v9, "targetIdx":I
    :goto_1
    add-int/lit8 v6, v2, 0x1

    new-array v7, v1, [I

    aput v9, v7, v3

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 173
    .end local v5    # "splitDependency":Ljava/lang/String;
    .end local v9    # "targetIdx":I
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 200
    .end local v2    # "splitIdx":I
    :cond_3
    const/4 v1, 0x0

    .local v1, "splitIdx":I
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    .local v2, "size":I
    :goto_3
    if-ge v1, v2, :cond_8

    .line 201
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getIsFeatureSplits()[Z

    move-result-object v5

    aget-boolean v5, v5, v1

    if-eqz v5, :cond_4

    .line 203
    goto/16 :goto_5

    .line 208
    :cond_4
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getConfigForSplit()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v1

    .line 209
    .local v5, "configForSplit":Ljava/lang/String;
    if-eqz v5, :cond_7

    .line 210
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v5}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    .line 211
    .local v9, "depIdx":I
    if-ltz v9, :cond_6

    .line 216
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getIsFeatureSplits()[Z

    move-result-object v10

    aget-boolean v10, v10, v9

    if-eqz v10, :cond_5

    .line 221
    add-int/lit8 v9, v9, 0x1

    .line 222
    .local v9, "targetSplitIdx":I
    goto :goto_4

    .line 217
    .local v9, "depIdx":I
    :cond_5
    new-instance v3, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\' declares itself as configuration split for a non-feature split \'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 219
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v9

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v8}, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;-><init>(Ljava/lang/String;Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException-IA;)V

    throw v3

    .line 212
    :cond_6
    new-instance v3, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\' targets split \'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v8}, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;-><init>(Ljava/lang/String;Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException-IA;)V

    throw v3

    .line 223
    .end local v9    # "depIdx":I
    :cond_7
    const/4 v9, 0x0

    .line 225
    .local v9, "targetSplitIdx":I
    :goto_4
    nop

    .line 226
    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    add-int/lit8 v11, v1, 0x1

    invoke-static {v10, v11}, Landroid/content/pm/split/SplitDependencyLoader;->append([II)[I

    move-result-object v10

    .line 225
    invoke-virtual {v0, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 200
    .end local v5    # "configForSplit":Ljava/lang/String;
    .end local v9    # "targetSplitIdx":I
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 230
    .end local v1    # "splitIdx":I
    .end local v2    # "size":I
    :cond_8
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    .line 231
    .local v1, "bitset":Ljava/util/BitSet;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    .local v5, "size":I
    :goto_6
    if-ge v2, v5, :cond_c

    .line 232
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 234
    .local v6, "splitIdx":I
    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 235
    :goto_7
    if-eq v6, v4, :cond_b

    .line 237
    invoke-virtual {v1, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-nez v7, :cond_a

    .line 242
    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    .line 245
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    .line 246
    .local v7, "deps":[I
    if-eqz v7, :cond_9

    aget v9, v7, v3

    goto :goto_8

    :cond_9
    move v9, v4

    :goto_8
    move v6, v9

    .line 247
    .end local v7    # "deps":[I
    goto :goto_7

    .line 238
    :cond_a
    new-instance v3, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;

    const-string v4, "Cycle detected in split dependencies."

    invoke-direct {v3, v4, v8}, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;-><init>(Ljava/lang/String;Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException-IA;)V

    throw v3

    .line 231
    .end local v6    # "splitIdx":I
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 249
    .end local v2    # "i":I
    .end local v5    # "size":I
    :cond_c
    return-object v0
.end method


# virtual methods
.method protected abstract blacklist constructSplit(I[II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[II)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract blacklist isSplitCached(I)Z
.end method

.method protected blacklist loadDependenciesForSplit(I)V
    .locals 5
    .param p1, "splitIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63
    .local p0, "this":Landroid/content/pm/split/SplitDependencyLoader;, "Landroid/content/pm/split/SplitDependencyLoader<TE;>;"
    invoke-virtual {p0, p1}, Landroid/content/pm/split/SplitDependencyLoader;->isSplitCached(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 69
    invoke-direct {p0, v0}, Landroid/content/pm/split/SplitDependencyLoader;->collectConfigSplitIndices(I)[I

    move-result-object v1

    .line 70
    .local v1, "configSplitIndices":[I
    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/pm/split/SplitDependencyLoader;->constructSplit(I[II)V

    .line 71
    return-void

    .line 75
    .end local v1    # "configSplitIndices":[I
    :cond_1
    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    .line 76
    .local v1, "linearDependencies":Landroid/util/IntArray;
    invoke-virtual {v1, p1}, Landroid/util/IntArray;->add(I)V

    .line 83
    :goto_0
    iget-object v2, p0, Landroid/content/pm/split/SplitDependencyLoader;->mDependencies:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 84
    .local v2, "deps":[I
    if-eqz v2, :cond_2

    array-length v3, v2

    if-lez v3, :cond_2

    .line 85
    aget p1, v2, v0

    goto :goto_1

    .line 87
    :cond_2
    const/4 p1, -0x1

    .line 90
    :goto_1
    if-ltz p1, :cond_4

    invoke-virtual {p0, p1}, Landroid/content/pm/split/SplitDependencyLoader;->isSplitCached(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 91
    goto :goto_2

    .line 94
    :cond_3
    invoke-virtual {v1, p1}, Landroid/util/IntArray;->add(I)V

    .line 95
    .end local v2    # "deps":[I
    goto :goto_0

    .line 98
    :cond_4
    :goto_2
    move v0, p1

    .line 99
    .local v0, "parentIdx":I
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_3
    if-ltz v2, :cond_5

    .line 100
    invoke-virtual {v1, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    .line 101
    .local v3, "idx":I
    invoke-direct {p0, v3}, Landroid/content/pm/split/SplitDependencyLoader;->collectConfigSplitIndices(I)[I

    move-result-object v4

    .line 102
    .local v4, "configSplitIndices":[I
    invoke-virtual {p0, v3, v4, v0}, Landroid/content/pm/split/SplitDependencyLoader;->constructSplit(I[II)V

    .line 103
    move v0, v3

    .line 99
    .end local v3    # "idx":I
    .end local v4    # "configSplitIndices":[I
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 105
    .end local v2    # "i":I
    :cond_5
    return-void
.end method
