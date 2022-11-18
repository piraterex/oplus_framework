.class public Landroid/util/SparseDoubleArray;
.super Ljava/lang/Object;
.source "SparseDoubleArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private blacklist mValues:Landroid/util/SparseLongArray;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 53
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/util/SparseDoubleArray;-><init>(I)V

    .line 54
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0, p1}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;

    .line 65
    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .locals 1

    .line 189
    iget-object v0, p0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->clear()V

    .line 190
    return-void
.end method

.method public blacklist clone()Landroid/util/SparseDoubleArray;
    .locals 2

    .line 69
    const/4 v0, 0x0

    .line 71
    .local v0, "clone":Landroid/util/SparseDoubleArray;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseDoubleArray;

    move-object v0, v1

    .line 72
    iget-object v1, p0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;

    invoke-virtual {v1}, Landroid/util/SparseLongArray;->clone()Landroid/util/SparseLongArray;

    move-result-object v1

    iput-object v1, v0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    goto :goto_0

    .line 73
    :catch_0
    move-exception v1

    .line 76
    :goto_0
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0}, Landroid/util/SparseDoubleArray;->clone()Landroid/util/SparseDoubleArray;

    move-result-object v0

    return-object v0
.end method

.method public blacklist delete(I)V
    .locals 1
    .param p1, "key"    # I

    .line 182
    iget-object v0, p0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->delete(I)V

    .line 183
    return-void
.end method

.method public blacklist get(I)D
    .locals 2
    .param p1, "key"    # I

    .line 84
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/util/SparseDoubleArray;->get(ID)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist get(ID)D
    .locals 3
    .param p1, "key"    # I
    .param p2, "valueIfKeyNotFound"    # D

    .line 92
    iget-object v0, p0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v0

    .line 93
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 94
    return-wide p2

    .line 96
    :cond_0
    invoke-virtual {p0, v0}, Landroid/util/SparseDoubleArray;->valueAt(I)D

    move-result-wide v1

    return-wide v1
.end method

.method public blacklist incrementValue(ID)V
    .locals 4
    .param p1, "key"    # I
    .param p2, "summand"    # D

    .line 117
    invoke-virtual {p0, p1}, Landroid/util/SparseDoubleArray;->get(I)D

    move-result-wide v0

    .line 118
    .local v0, "oldValue":D
    add-double v2, v0, p2

    invoke-virtual {p0, p1, v2, v3}, Landroid/util/SparseDoubleArray;->put(ID)V

    .line 119
    return-void
.end method

.method public blacklist indexOfKey(I)I
    .locals 1
    .param p1, "key"    # I

    .line 132
    iget-object v0, p0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v0

    return v0
.end method

.method public blacklist keyAt(I)I
    .locals 1
    .param p1, "index"    # I

    .line 143
    iget-object v0, p0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v0

    return v0
.end method

.method public blacklist put(ID)V
    .locals 3
    .param p1, "key"    # I
    .param p2, "value"    # D

    .line 105
    iget-object v0, p0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 106
    return-void
.end method

.method public blacklist removeAt(I)V
    .locals 1
    .param p1, "index"    # I

    .line 175
    iget-object v0, p0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 176
    return-void
.end method

.method public blacklist setValueAt(ID)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # D

    .line 168
    iget-object v0, p0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/util/SparseLongArray;->setValueAt(IJ)V

    .line 169
    return-void
.end method

.method public blacklist size()I
    .locals 1

    .line 123
    iget-object v0, p0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    .line 199
    invoke-virtual {p0}, Landroid/util/SparseDoubleArray;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 200
    const-string/jumbo v0, "{}"

    return-object v0

    .line 203
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/SparseDoubleArray;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 204
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 205
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseDoubleArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 206
    if-lez v1, :cond_1

    .line 207
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    :cond_1
    invoke-virtual {p0, v1}, Landroid/util/SparseDoubleArray;->keyAt(I)I

    move-result v2

    .line 210
    .local v2, "key":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {p0, v1}, Landroid/util/SparseDoubleArray;->valueAt(I)D

    move-result-wide v3

    .line 213
    .local v3, "value":D
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 205
    .end local v2    # "key":I
    .end local v3    # "value":D
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    .end local v1    # "i":I
    :cond_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist valueAt(I)D
    .locals 2
    .param p1, "index"    # I

    .line 154
    iget-object v0, p0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method
