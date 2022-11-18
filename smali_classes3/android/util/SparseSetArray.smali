.class public Landroid/util/SparseSetArray;
.super Ljava/lang/Object;
.source "SparseSetArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final greylist-max-o mData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 28
    .local p0, "this":Landroid/util/SparseSetArray;, "Landroid/util/SparseSetArray<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/util/SparseSetArray;->mData:Landroid/util/SparseArray;

    .line 30
    return-void
.end method

.method public constructor blacklist <init>(Landroid/util/SparseSetArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseSetArray<",
            "TT;>;)V"
        }
    .end annotation

    .line 35
    .local p0, "this":Landroid/util/SparseSetArray;, "Landroid/util/SparseSetArray<TT;>;"
    .local p1, "src":Landroid/util/SparseSetArray;, "Landroid/util/SparseSetArray<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/util/SparseSetArray;->size()I

    move-result v0

    .line 37
    .local v0, "arraySize":I
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Landroid/util/SparseSetArray;->mData:Landroid/util/SparseArray;

    .line 38
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 39
    invoke-virtual {p1, v1}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v2

    .line 40
    .local v2, "key":I
    invoke-virtual {p1, v2}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v3

    .line 41
    .local v3, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    invoke-virtual {p0, v2, v3}, Landroid/util/SparseSetArray;->addAll(ILandroid/util/ArraySet;)V

    .line 38
    .end local v2    # "key":I
    .end local v3    # "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public greylist-max-o add(ILjava/lang/Object;)Z
    .locals 2
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)Z"
        }
    .end annotation

    .line 50
    .local p0, "this":Landroid/util/SparseSetArray;, "Landroid/util/SparseSetArray<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/util/SparseSetArray;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 51
    .local v0, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    if-nez v0, :cond_0

    .line 52
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v1

    .line 53
    iget-object v1, p0, Landroid/util/SparseSetArray;->mData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    const/4 v1, 0x0

    return v1

    .line 58
    :cond_1
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 59
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist addAll(ILandroid/util/ArraySet;)V
    .locals 2
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArraySet<",
            "TT;>;)V"
        }
    .end annotation

    .line 66
    .local p0, "this":Landroid/util/SparseSetArray;, "Landroid/util/SparseSetArray<TT;>;"
    .local p2, "values":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    iget-object v0, p0, Landroid/util/SparseSetArray;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 67
    .local v0, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    if-nez v0, :cond_0

    .line 68
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    move-object v0, v1

    .line 69
    iget-object v1, p0, Landroid/util/SparseSetArray;->mData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    return-void

    .line 72
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 73
    return-void
.end method

.method public blacklist clear()V
    .locals 1

    .line 79
    .local p0, "this":Landroid/util/SparseSetArray;, "Landroid/util/SparseSetArray<TT;>;"
    iget-object v0, p0, Landroid/util/SparseSetArray;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 80
    return-void
.end method

.method public greylist-max-o contains(ILjava/lang/Object;)Z
    .locals 2
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)Z"
        }
    .end annotation

    .line 86
    .local p0, "this":Landroid/util/SparseSetArray;, "Landroid/util/SparseSetArray<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/util/SparseSetArray;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 87
    .local v0, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    if-nez v0, :cond_0

    .line 88
    const/4 v1, 0x0

    return v1

    .line 90
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public blacklist get(I)Landroid/util/ArraySet;
    .locals 1
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet<",
            "TT;>;"
        }
    .end annotation

    .line 97
    .local p0, "this":Landroid/util/SparseSetArray;, "Landroid/util/SparseSetArray<TT;>;"
    iget-object v0, p0, Landroid/util/SparseSetArray;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    return-object v0
.end method

.method public greylist-max-o keyAt(I)I
    .locals 1
    .param p1, "index"    # I

    .line 128
    .local p0, "this":Landroid/util/SparseSetArray;, "Landroid/util/SparseSetArray<TT;>;"
    iget-object v0, p0, Landroid/util/SparseSetArray;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    return v0
.end method

.method public greylist-max-o remove(I)V
    .locals 1
    .param p1, "n"    # I

    .line 120
    .local p0, "this":Landroid/util/SparseSetArray;, "Landroid/util/SparseSetArray<TT;>;"
    iget-object v0, p0, Landroid/util/SparseSetArray;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 121
    return-void
.end method

.method public greylist-max-o remove(ILjava/lang/Object;)Z
    .locals 3
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)Z"
        }
    .end annotation

    .line 105
    .local p0, "this":Landroid/util/SparseSetArray;, "Landroid/util/SparseSetArray<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/util/SparseSetArray;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 106
    .local v0, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    if-nez v0, :cond_0

    .line 107
    const/4 v1, 0x0

    return v1

    .line 109
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 110
    .local v1, "ret":Z
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 111
    iget-object v2, p0, Landroid/util/SparseSetArray;->mData:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 113
    :cond_1
    return v1
.end method

.method public greylist-max-o size()I
    .locals 1

    .line 124
    .local p0, "this":Landroid/util/SparseSetArray;, "Landroid/util/SparseSetArray<TT;>;"
    iget-object v0, p0, Landroid/util/SparseSetArray;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public greylist-max-o sizeAt(I)I
    .locals 2
    .param p1, "index"    # I

    .line 132
    .local p0, "this":Landroid/util/SparseSetArray;, "Landroid/util/SparseSetArray<TT;>;"
    iget-object v0, p0, Landroid/util/SparseSetArray;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 133
    .local v0, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    if-nez v0, :cond_0

    .line 134
    const/4 v1, 0x0

    return v1

    .line 136
    :cond_0
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    return v1
.end method

.method public greylist-max-o valueAt(II)Ljava/lang/Object;
    .locals 1
    .param p1, "intIndex"    # I
    .param p2, "valueIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .line 140
    .local p0, "this":Landroid/util/SparseSetArray;, "Landroid/util/SparseSetArray<TT;>;"
    iget-object v0, p0, Landroid/util/SparseSetArray;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
