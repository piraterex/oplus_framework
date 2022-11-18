.class public final Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;
.super Ljava/lang/Object;
.source "HeavyHitterSketch.java"

# interfaces
.implements Lcom/android/internal/util/HeavyHitterSketch;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/HeavyHitterSketch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HeavyHitterSketchImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/HeavyHitterSketch<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private blacklist mCapacity:I

.field private blacklist mConfigured:Z

.field private final blacklist mFrequencies:Landroid/util/SparseIntArray;

.field private blacklist mNumInputs:I

.field private final blacklist mObjects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation
.end field

.field private blacklist mPassSize:I

.field private blacklist mTotalSize:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 109
    .local p0, "this":Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;, "Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mObjects:Landroid/util/SparseArray;

    .line 118
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    return-void
.end method

.method private blacklist addToMGSummary(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 192
    .local p0, "this":Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;, "Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl<TT;>;"
    .local p1, "newInstance":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 193
    .local v1, "hashCode":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mObjects:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    .line 195
    .local v2, "index":I
    const/4 v3, 0x1

    if-ltz v2, :cond_1

    .line 196
    iget-object v4, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseIntArray;->setValueAt(II)V

    goto :goto_3

    .line 197
    :cond_1
    iget-object v4, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mObjects:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    iget v5, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mCapacity:I

    sub-int/2addr v5, v3

    if-ge v4, v5, :cond_2

    .line 198
    iget-object v4, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mObjects:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 199
    iget-object v4, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_3

    .line 201
    :cond_2
    iget-object v4, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    sub-int/2addr v4, v3

    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_4

    .line 202
    iget-object v5, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    sub-int/2addr v5, v3

    .line 203
    .local v5, "val":I
    if-nez v5, :cond_3

    .line 204
    iget-object v6, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mObjects:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->removeAt(I)V

    .line 205
    iget-object v6, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->removeAt(I)V

    goto :goto_2

    .line 207
    :cond_3
    iget-object v6, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseIntArray;->setValueAt(II)V

    .line 201
    .end local v5    # "val":I
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 211
    .end local v4    # "i":I
    :cond_4
    :goto_3
    iget v4, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mNumInputs:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mNumInputs:I

    iget v5, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mPassSize:I

    if-ne v4, v5, :cond_5

    .line 213
    iget-object v4, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    sub-int/2addr v4, v3

    .restart local v4    # "i":I
    :goto_4
    if-ltz v4, :cond_5

    .line 214
    iget-object v3, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseIntArray;->setValueAt(II)V

    .line 213
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 217
    .end local v4    # "i":I
    :cond_5
    return-void
.end method

.method private blacklist validate(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 224
    .local p0, "this":Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;, "Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl<TT;>;"
    .local p1, "newInstance":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 225
    .local v0, "hashCode":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mObjects:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 226
    .local v1, "index":I
    if-ltz v1, :cond_1

    .line 227
    iget-object v2, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->setValueAt(II)V

    .line 229
    :cond_1
    iget v2, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mNumInputs:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mNumInputs:I

    iget v3, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mTotalSize:I

    if-ne v2, v3, :cond_3

    .line 230
    iget v2, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mPassSize:I

    iget v3, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mCapacity:I

    div-int/2addr v2, v3

    .line 232
    .local v2, "lower":I
    iget-object v3, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_3

    .line 233
    iget-object v4, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 234
    .local v4, "val":I
    if-ge v4, v2, :cond_2

    .line 235
    iget-object v5, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 236
    iget-object v5, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mObjects:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 232
    .end local v4    # "val":I
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 240
    .end local v2    # "lower":I
    .end local v3    # "i":I
    :cond_3
    return-void
.end method


# virtual methods
.method public blacklist add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 171
    .local p0, "this":Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;, "Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl<TT;>;"
    .local p1, "newInstance":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mConfigured:Z

    if-eqz v0, :cond_2

    .line 174
    iget v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mNumInputs:I

    iget v1, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mPassSize:I

    if-ge v0, v1, :cond_0

    .line 175
    invoke-direct {p0, p1}, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->addToMGSummary(Ljava/lang/Object;)V

    goto :goto_0

    .line 176
    :cond_0
    iget v1, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mTotalSize:I

    if-ge v0, v1, :cond_1

    .line 178
    invoke-direct {p0, p1}, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->validate(Ljava/lang/Object;)V

    .line 180
    :cond_1
    :goto_0
    return-void

    .line 172
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public blacklist getCandidates(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 305
    .local p0, "this":Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;, "Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl<TT;>;"
    .local p1, "holder":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-boolean v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mConfigured:Z

    if-eqz v0, :cond_4

    .line 308
    iget v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mNumInputs:I

    iget v1, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mPassSize:I

    if-ge v0, v1, :cond_0

    .line 310
    const/4 v0, 0x0

    return-object v0

    .line 313
    :cond_0
    if-eqz p1, :cond_1

    move-object v0, p1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_0
    iget-object v1, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mObjects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 315
    iget-object v2, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mObjects:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 316
    .local v2, "obj":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_2

    .line 317
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    .end local v2    # "obj":Ljava/lang/Object;, "TT;"
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 320
    .end local v1    # "i":I
    :cond_3
    return-object v0

    .line 306
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public blacklist getRequiredValidationInputRatio()F
    .locals 1

    .line 338
    .local p0, "this":Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;, "Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl<TT;>;"
    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method public blacklist getTopHeavyHitters(ILjava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 254
    .local p0, "this":Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;, "Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl<TT;>;"
    .local p2, "holder":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p3, "freqs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    iget-boolean v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mConfigured:Z

    if-eqz v0, :cond_a

    .line 258
    iget v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mCapacity:I

    if-ge p1, v0, :cond_9

    .line 262
    iget v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mNumInputs:I

    iget v1, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mTotalSize:I

    if-lt v0, v1, :cond_8

    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, "indexes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 269
    iget-object v2, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 270
    .local v2, "val":I
    if-lez v2, :cond_1

    .line 271
    if-nez v0, :cond_0

    .line 272
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 274
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    .end local v2    # "val":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 277
    .end local v1    # "i":I
    :cond_2
    if-nez v0, :cond_3

    .line 278
    const/4 v1, 0x0

    return-object v1

    .line 281
    :cond_3
    new-instance v1, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 283
    if-eqz p2, :cond_4

    move-object v1, p2

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_1
    if-nez p1, :cond_5

    iget v2, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mCapacity:I

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_5
    move v2, p1

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 285
    .local v2, "max":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v2, :cond_7

    .line 286
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 287
    .local v4, "index":I
    iget-object v5, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mObjects:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    .line 288
    .local v5, "obj":Ljava/lang/Object;, "TT;"
    if-eqz v5, :cond_6

    .line 289
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    if-eqz p3, :cond_6

    .line 291
    iget-object v6, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mPassSize:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    .end local v4    # "index":I
    .end local v5    # "obj":Ljava/lang/Object;, "TT;"
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 295
    .end local v3    # "i":I
    :cond_7
    return-object v1

    .line 264
    .end local v0    # "indexes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v2    # "max":I
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 259
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 255
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method synthetic blacklist lambda$getTopHeavyHitters$0$com-android-internal-util-HeavyHitterSketch$HeavyHitterSketchImpl(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 3
    .param p1, "a"    # Ljava/lang/Integer;
    .param p2, "b"    # Ljava/lang/Integer;

    .line 281
    .local p0, "this":Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;, "Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl<TT;>;"
    iget-object v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public blacklist reset()V
    .locals 1

    .line 328
    .local p0, "this":Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;, "Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl<TT;>;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mNumInputs:I

    .line 329
    iget-object v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mObjects:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 330
    iget-object v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 331
    return-void
.end method

.method public blacklist setConfig(II)V
    .locals 2
    .param p1, "inputSize"    # I
    .param p2, "capacity"    # I

    .line 153
    .local p0, "this":Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;, "Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl<TT;>;"
    if-lt p1, p2, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->reset()V

    .line 158
    iput p1, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mTotalSize:I

    .line 159
    shr-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mPassSize:I

    .line 160
    iput p2, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mCapacity:I

    .line 161
    iput-boolean v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mConfigured:Z

    .line 162
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mConfigured:Z

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
