.class public final Landroid/util/Range;
.super Ljava/lang/Object;
.source "Range.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/Comparable<",
        "-TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final greylist-max-o mLower:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final greylist-max-o mUpper:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 55
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "lower":Ljava/lang/Comparable;, "TT;"
    .local p2, "upper":Ljava/lang/Comparable;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string/jumbo v0, "lower must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    iput-object v0, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    .line 57
    const-string/jumbo v0, "upper must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    iput-object v0, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    .line 59
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 62
    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "lower must be less than or equal to upper"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(TT;TT;)",
            "Landroid/util/Range<",
            "TT;>;"
        }
    .end annotation

    .line 79
    .local p0, "lower":Ljava/lang/Comparable;, "TT;"
    .local p1, "upper":Ljava/lang/Comparable;, "TT;"
    new-instance v0, Landroid/util/Range;

    invoke-direct {v0, p0, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0
.end method


# virtual methods
.method public whitelist clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 175
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TT;"
    const-string/jumbo v0, "value must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    .line 178
    iget-object v0, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    return-object v0

    .line 179
    :cond_0
    iget-object v0, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_1

    .line 180
    iget-object v0, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    return-object v0

    .line 182
    :cond_1
    return-object p1
.end method

.method public whitelist contains(Landroid/util/Range;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "TT;>;)Z"
        }
    .end annotation

    .line 133
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "range":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    const-string/jumbo v0, "value must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p1, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    iget-object v1, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 136
    .local v0, "gteLower":Z
    :goto_0
    iget-object v3, p1, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    iget-object v4, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 138
    .local v3, "lteUpper":Z
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method public whitelist contains(Ljava/lang/Comparable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 113
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TT;"
    const-string/jumbo v0, "value must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 116
    .local v0, "gteLower":Z
    :goto_0
    iget-object v3, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    invoke-interface {p1, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 118
    .local v3, "lteUpper":Z
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 151
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 152
    return v0

    .line 153
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    .line 154
    return v1

    .line 155
    :cond_1
    instance-of v2, p1, Landroid/util/Range;

    if-eqz v2, :cond_3

    .line 157
    move-object v2, p1

    check-cast v2, Landroid/util/Range;

    .line 158
    .local v2, "other":Landroid/util/Range;
    iget-object v3, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    iget-object v4, v2, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    iget-object v4, v2, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    :cond_2
    return v0

    .line 160
    .end local v2    # "other":Landroid/util/Range;
    :cond_3
    return v0
.end method

.method public whitelist extend(Landroid/util/Range;)Landroid/util/Range;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "TT;>;)",
            "Landroid/util/Range<",
            "TT;>;"
        }
    .end annotation

    .line 274
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "range":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    const-string/jumbo v0, "range must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    iget-object v0, p1, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    iget-object v1, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 277
    .local v0, "cmpLower":I
    iget-object v1, p1, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    iget-object v2, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    invoke-interface {v1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 279
    .local v1, "cmpUpper":I
    if-gtz v0, :cond_0

    if-ltz v1, :cond_0

    .line 281
    return-object p1

    .line 282
    :cond_0
    if-ltz v0, :cond_1

    if-gtz v1, :cond_1

    .line 284
    return-object p0

    .line 287
    :cond_1
    if-ltz v0, :cond_2

    iget-object v2, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    goto :goto_0

    :cond_2
    iget-object v2, p1, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    .line 288
    :goto_0
    if-gtz v1, :cond_3

    iget-object v3, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    goto :goto_1

    :cond_3
    iget-object v3, p1, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    .line 286
    :goto_1
    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    return-object v2
.end method

.method public whitelist extend(Ljava/lang/Comparable;)Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/util/Range<",
            "TT;>;"
        }
    .end annotation

    .line 335
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TT;"
    const-string/jumbo v0, "value must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    invoke-virtual {p0, p1, p1}, Landroid/util/Range;->extend(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public whitelist extend(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)",
            "Landroid/util/Range<",
            "TT;>;"
        }
    .end annotation

    .line 306
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "lower":Ljava/lang/Comparable;, "TT;"
    .local p2, "upper":Ljava/lang/Comparable;, "TT;"
    const-string/jumbo v0, "lower must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-string/jumbo v0, "upper must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-object v0, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 310
    .local v0, "cmpLower":I
    iget-object v1, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    invoke-interface {p2, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 312
    .local v1, "cmpUpper":I
    if-ltz v0, :cond_0

    if-gtz v1, :cond_0

    .line 314
    return-object p0

    .line 317
    :cond_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    goto :goto_0

    :cond_1
    move-object v2, p1

    .line 318
    :goto_0
    if-gtz v1, :cond_2

    iget-object v3, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    goto :goto_1

    :cond_2
    move-object v3, p2

    .line 316
    :goto_1
    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    return-object v2
.end method

.method public whitelist getLower()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 88
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    iget-object v0, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    return-object v0
.end method

.method public whitelist getUpper()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 97
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    iget-object v0, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 354
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Comparable;

    iget-object v1, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCodeGeneric([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist intersect(Landroid/util/Range;)Landroid/util/Range;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "TT;>;)",
            "Landroid/util/Range<",
            "TT;>;"
        }
    .end annotation

    .line 206
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "range":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    const-string/jumbo v0, "range must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v0, p1, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    iget-object v1, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 209
    .local v0, "cmpLower":I
    iget-object v1, p1, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    iget-object v2, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    invoke-interface {v1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 211
    .local v1, "cmpUpper":I
    if-gtz v0, :cond_0

    if-ltz v1, :cond_0

    .line 213
    return-object p0

    .line 214
    :cond_0
    if-ltz v0, :cond_1

    if-gtz v1, :cond_1

    .line 216
    return-object p1

    .line 219
    :cond_1
    if-gtz v0, :cond_2

    iget-object v2, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    goto :goto_0

    :cond_2
    iget-object v2, p1, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    .line 220
    :goto_0
    if-ltz v1, :cond_3

    iget-object v3, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    goto :goto_1

    :cond_3
    iget-object v3, p1, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    .line 218
    :goto_1
    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    return-object v2
.end method

.method public whitelist intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)",
            "Landroid/util/Range<",
            "TT;>;"
        }
    .end annotation

    .line 238
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "lower":Ljava/lang/Comparable;, "TT;"
    .local p2, "upper":Ljava/lang/Comparable;, "TT;"
    const-string/jumbo v0, "lower must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string/jumbo v0, "upper must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v0, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 242
    .local v0, "cmpLower":I
    iget-object v1, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    invoke-interface {p2, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 244
    .local v1, "cmpUpper":I
    if-gtz v0, :cond_0

    if-ltz v1, :cond_0

    .line 246
    return-object p0

    .line 249
    :cond_0
    if-gtz v0, :cond_1

    iget-object v2, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    goto :goto_0

    :cond_1
    move-object v2, p1

    .line 250
    :goto_0
    if-ltz v1, :cond_2

    iget-object v3, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    goto :goto_1

    :cond_2
    move-object v3, p2

    .line 248
    :goto_1
    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 346
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "[%s, %s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
