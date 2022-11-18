.class public final Landroid/util/ArraySet;
.super Ljava/lang/Object;
.source "ArraySet.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final greylist-max-o BASE_SIZE:I = 0x4

.field private static final greylist-max-o CACHE_SIZE:I = 0xa

.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ArraySet"

.field static greylist-max-o sBaseCache:[Ljava/lang/Object;

.field private static final blacklist sBaseCacheLock:Ljava/lang/Object;

.field static greylist-max-o sBaseCacheSize:I

.field static greylist-max-o sTwiceBaseCache:[Ljava/lang/Object;

.field private static final blacklist sTwiceBaseCacheLock:Ljava/lang/Object;

.field static greylist-max-o sTwiceBaseCacheSize:I


# instance fields
.field greylist-max-p mArray:[Ljava/lang/Object;

.field private greylist-max-o mCollections:Landroid/util/MapCollections;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/MapCollections<",
            "TE;TE;>;"
        }
    .end annotation
.end field

.field greylist-max-p mHashes:[I

.field private final greylist-max-o mIdentityHashCode:Z

.field greylist-max-p mSize:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/ArraySet;->sBaseCacheLock:Ljava/lang/Object;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/ArraySet;->sTwiceBaseCacheLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 291
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/util/ArraySet;-><init>(IZ)V

    .line 292
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .line 298
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/util/ArraySet;-><init>(IZ)V

    .line 299
    return-void
.end method

.method public constructor greylist-max-o <init>(IZ)V
    .locals 1
    .param p1, "capacity"    # I
    .param p2, "identityHashCode"    # Z

    .line 302
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    iput-boolean p2, p0, Landroid/util/ArraySet;->mIdentityHashCode:Z

    .line 304
    if-nez p1, :cond_0

    .line 305
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 306
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    goto :goto_0

    .line 308
    :cond_0
    invoke-direct {p0, p1}, Landroid/util/ArraySet;->allocArrays(I)V

    .line 310
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/ArraySet;->mSize:I

    .line 311
    return-void
.end method

.method public constructor whitelist <init>(Landroid/util/ArraySet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "TE;>;)V"
        }
    .end annotation

    .line 317
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 318
    if-eqz p1, :cond_0

    .line 319
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 321
    :cond_0
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 327
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "set":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 328
    if-eqz p1, :cond_0

    .line 329
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 331
    :cond_0
    return-void
.end method

.method public constructor whitelist <init>([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .line 337
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TE;"
    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 338
    if-eqz p1, :cond_0

    .line 339
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 340
    .local v2, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 339
    .end local v2    # "value":Ljava/lang/Object;, "TE;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 343
    :cond_0
    return-void
.end method

.method private greylist-max-p allocArrays(I)V
    .locals 8
    .param p1, "size"    # I

    .line 185
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne p1, v3, :cond_2

    .line 186
    sget-object v3, Landroid/util/ArraySet;->sTwiceBaseCacheLock:Ljava/lang/Object;

    monitor-enter v3

    .line 187
    :try_start_0
    sget-object v4, Landroid/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 188
    nop

    .line 190
    .local v4, "array":[Ljava/lang/Object;
    :try_start_1
    iput-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 191
    aget-object v5, v4, v2

    check-cast v5, [Ljava/lang/Object;

    sput-object v5, Landroid/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    .line 192
    aget-object v5, v4, v1

    check-cast v5, [I

    iput-object v5, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 193
    if-eqz v5, :cond_0

    .line 194
    aput-object v0, v4, v1

    aput-object v0, v4, v2

    .line 195
    sget v5, Landroid/util/ArraySet;->sTwiceBaseCacheSize:I

    sub-int/2addr v5, v1

    sput v5, Landroid/util/ArraySet;->sTwiceBaseCacheSize:I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    :try_start_2
    monitor-exit v3

    return-void

    .line 203
    :cond_0
    goto :goto_0

    .line 202
    :catch_0
    move-exception v5

    .line 206
    :goto_0
    const-string v5, "ArraySet"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found corrupt ArraySet cache: [0]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " [1]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v1, v4, v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    sput-object v0, Landroid/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    .line 209
    sput v2, Landroid/util/ArraySet;->sTwiceBaseCacheSize:I

    .line 211
    .end local v4    # "array":[Ljava/lang/Object;
    :cond_1
    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 212
    :cond_2
    const/4 v3, 0x4

    if-ne p1, v3, :cond_5

    .line 213
    sget-object v3, Landroid/util/ArraySet;->sBaseCacheLock:Ljava/lang/Object;

    monitor-enter v3

    .line 214
    :try_start_3
    sget-object v4, Landroid/util/ArraySet;->sBaseCache:[Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_4

    .line 215
    nop

    .line 217
    .restart local v4    # "array":[Ljava/lang/Object;
    :try_start_4
    iput-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 218
    aget-object v5, v4, v2

    check-cast v5, [Ljava/lang/Object;

    sput-object v5, Landroid/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    .line 219
    aget-object v5, v4, v1

    check-cast v5, [I

    iput-object v5, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 220
    if-eqz v5, :cond_3

    .line 221
    aput-object v0, v4, v1

    aput-object v0, v4, v2

    .line 222
    sget v5, Landroid/util/ArraySet;->sBaseCacheSize:I

    sub-int/2addr v5, v1

    sput v5, Landroid/util/ArraySet;->sBaseCacheSize:I
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 227
    :try_start_5
    monitor-exit v3

    return-void

    .line 230
    :cond_3
    goto :goto_1

    .line 229
    :catch_1
    move-exception v5

    .line 233
    :goto_1
    const-string v5, "ArraySet"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found corrupt ArraySet cache: [0]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " [1]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v1, v4, v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    sput-object v0, Landroid/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    .line 236
    sput v2, Landroid/util/ArraySet;->sBaseCacheSize:I

    .line 238
    .end local v4    # "array":[Ljava/lang/Object;
    :cond_4
    monitor-exit v3

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 241
    :cond_5
    :goto_2
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 242
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 243
    return-void
.end method

.method private blacklist binarySearch([II)I
    .locals 2
    .param p1, "hashes"    # [I
    .param p2, "hash"    # I

    .line 98
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    :try_start_0
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    invoke-static {p1, v0, p2}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method private static greylist-max-p freeArrays([I[Ljava/lang/Object;I)V
    .locals 7
    .param p0, "hashes"    # [I
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "size"    # I

    .line 251
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/16 v4, 0xa

    const/4 v5, 0x1

    const/16 v6, 0x8

    if-ne v0, v6, :cond_2

    .line 252
    sget-object v0, Landroid/util/ArraySet;->sTwiceBaseCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 253
    :try_start_0
    sget v6, Landroid/util/ArraySet;->sTwiceBaseCacheSize:I

    if-ge v6, v4, :cond_1

    .line 254
    sget-object v4, Landroid/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    aput-object v4, p1, v3

    .line 255
    aput-object p0, p1, v5

    .line 256
    add-int/lit8 v3, p2, -0x1

    .local v3, "i":I
    :goto_0
    if-lt v3, v2, :cond_0

    .line 257
    aput-object v1, p1, v3

    .line 256
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 259
    .end local v3    # "i":I
    :cond_0
    sput-object p1, Landroid/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    .line 260
    sget v1, Landroid/util/ArraySet;->sTwiceBaseCacheSize:I

    add-int/2addr v1, v5

    sput v1, Landroid/util/ArraySet;->sTwiceBaseCacheSize:I

    .line 266
    :cond_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 267
    :cond_2
    array-length v0, p0

    const/4 v6, 0x4

    if-ne v0, v6, :cond_5

    .line 268
    sget-object v0, Landroid/util/ArraySet;->sBaseCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 269
    :try_start_1
    sget v6, Landroid/util/ArraySet;->sBaseCacheSize:I

    if-ge v6, v4, :cond_4

    .line 270
    sget-object v4, Landroid/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    aput-object v4, p1, v3

    .line 271
    aput-object p0, p1, v5

    .line 272
    add-int/lit8 v3, p2, -0x1

    .restart local v3    # "i":I
    :goto_1
    if-lt v3, v2, :cond_3

    .line 273
    aput-object v1, p1, v3

    .line 272
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 275
    .end local v3    # "i":I
    :cond_3
    sput-object p1, Landroid/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    .line 276
    sget v1, Landroid/util/ArraySet;->sBaseCacheSize:I

    add-int/2addr v1, v5

    sput v1, Landroid/util/ArraySet;->sBaseCacheSize:I

    .line 282
    :cond_4
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 284
    :cond_5
    :goto_2
    return-void
.end method

.method private greylist-max-o getCollection()Landroid/util/MapCollections;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/MapCollections<",
            "TE;TE;>;"
        }
    .end annotation

    .line 875
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget-object v0, p0, Landroid/util/ArraySet;->mCollections:Landroid/util/MapCollections;

    if-nez v0, :cond_0

    .line 876
    new-instance v0, Landroid/util/ArraySet$1;

    invoke-direct {v0, p0}, Landroid/util/ArraySet$1;-><init>(Landroid/util/ArraySet;)V

    iput-object v0, p0, Landroid/util/ArraySet;->mCollections:Landroid/util/MapCollections;

    .line 923
    :cond_0
    iget-object v0, p0, Landroid/util/ArraySet;->mCollections:Landroid/util/MapCollections;

    return-object v0
.end method

.method private blacklist getNewShrunkenSize()I
    .locals 2

    .line 598
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    shr-int/lit8 v1, v0, 0x1

    add-int/2addr v1, v0

    :cond_0
    return v1
.end method

.method private greylist-max-p indexOf(Ljava/lang/Object;I)I
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I

    .line 107
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    .line 110
    .local v0, "N":I
    if-nez v0, :cond_0

    .line 111
    const/4 v1, -0x1

    return v1

    .line 114
    :cond_0
    iget-object v1, p0, Landroid/util/ArraySet;->mHashes:[I

    invoke-direct {p0, v1, p2}, Landroid/util/ArraySet;->binarySearch([II)I

    move-result v1

    .line 117
    .local v1, "index":I
    if-gez v1, :cond_1

    .line 118
    return v1

    .line 122
    :cond_1
    iget-object v2, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 123
    return v1

    .line 128
    :cond_2
    add-int/lit8 v2, v1, 0x1

    .local v2, "end":I
    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Landroid/util/ArraySet;->mHashes:[I

    aget v3, v3, v2

    if-ne v3, p2, :cond_4

    .line 129
    iget-object v3, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    .line 128
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    :cond_4
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_6

    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    aget v4, v4, v3

    if-ne v4, p2, :cond_6

    .line 134
    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    return v3

    .line 133
    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 141
    .end local v3    # "i":I
    :cond_6
    not-int v3, v2

    return v3
.end method

.method private greylist-max-p indexOfNull()I
    .locals 5

    .line 146
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    .line 149
    .local v0, "N":I
    if-nez v0, :cond_0

    .line 150
    const/4 v1, -0x1

    return v1

    .line 153
    :cond_0
    iget-object v1, p0, Landroid/util/ArraySet;->mHashes:[I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/util/ArraySet;->binarySearch([II)I

    move-result v1

    .line 156
    .local v1, "index":I
    if-gez v1, :cond_1

    .line 157
    return v1

    .line 161
    :cond_1
    iget-object v2, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-nez v2, :cond_2

    .line 162
    return v1

    .line 167
    :cond_2
    add-int/lit8 v2, v1, 0x1

    .local v2, "end":I
    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Landroid/util/ArraySet;->mHashes:[I

    aget v3, v3, v2

    if-nez v3, :cond_4

    .line 168
    iget-object v3, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v3, v3, v2

    if-nez v3, :cond_3

    return v2

    .line 167
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    :cond_4
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_6

    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    aget v4, v4, v3

    if-nez v4, :cond_6

    .line 173
    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v3

    if-nez v4, :cond_5

    return v3

    .line 172
    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 180
    .end local v3    # "i":I
    :cond_6
    not-int v3, v2

    return v3
.end method

.method private blacklist shouldShrink()Z
    .locals 3

    .line 588
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget-object v0, p0, Landroid/util/ArraySet;->mHashes:[I

    array-length v1, v0

    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public whitelist test-api add(Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 456
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    .line 459
    .local v0, "oSize":I
    if-nez p1, :cond_0

    .line 460
    const/4 v1, 0x0

    .line 461
    .local v1, "hash":I
    invoke-direct {p0}, Landroid/util/ArraySet;->indexOfNull()I

    move-result v2

    .local v2, "index":I
    goto :goto_1

    .line 463
    .end local v1    # "hash":I
    .end local v2    # "index":I
    :cond_0
    iget-boolean v1, p0, Landroid/util/ArraySet;->mIdentityHashCode:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 464
    .restart local v1    # "hash":I
    :goto_0
    invoke-direct {p0, p1, v1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v2

    .line 466
    .restart local v2    # "index":I
    :goto_1
    const/4 v3, 0x0

    if-ltz v2, :cond_2

    .line 467
    return v3

    .line 470
    :cond_2
    not-int v2, v2

    .line 471
    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    array-length v4, v4

    if-lt v0, v4, :cond_7

    .line 472
    const/4 v4, 0x4

    const/16 v5, 0x8

    if-lt v0, v5, :cond_3

    shr-int/lit8 v4, v0, 0x1

    add-int/2addr v4, v0

    goto :goto_2

    .line 473
    :cond_3
    if-lt v0, v4, :cond_4

    move v4, v5

    :cond_4
    :goto_2
    nop

    .line 477
    .local v4, "n":I
    iget-object v5, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 478
    .local v5, "ohashes":[I
    iget-object v6, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 479
    .local v6, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v4}, Landroid/util/ArraySet;->allocArrays(I)V

    .line 481
    iget v7, p0, Landroid/util/ArraySet;->mSize:I

    if-ne v0, v7, :cond_6

    .line 485
    iget-object v7, p0, Landroid/util/ArraySet;->mHashes:[I

    array-length v8, v7

    if-lez v8, :cond_5

    .line 487
    array-length v8, v5

    invoke-static {v5, v3, v7, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 488
    iget-object v7, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    array-length v8, v6

    invoke-static {v6, v3, v7, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 491
    :cond_5
    invoke-static {v5, v6, v0}, Landroid/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    goto :goto_3

    .line 482
    :cond_6
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3

    .line 494
    .end local v4    # "n":I
    .end local v5    # "ohashes":[I
    .end local v6    # "oarray":[Ljava/lang/Object;
    :cond_7
    :goto_3
    if-ge v2, v0, :cond_8

    .line 498
    iget-object v3, p0, Landroid/util/ArraySet;->mHashes:[I

    add-int/lit8 v4, v2, 0x1

    sub-int v5, v0, v2

    invoke-static {v3, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 499
    iget-object v3, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    add-int/lit8 v4, v2, 0x1

    sub-int v5, v0, v2

    invoke-static {v3, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 502
    :cond_8
    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    if-ne v0, v3, :cond_9

    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    array-length v5, v4

    if-ge v2, v5, :cond_9

    .line 506
    aput v1, v4, v2

    .line 507
    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aput-object p1, v4, v2

    .line 508
    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Landroid/util/ArraySet;->mSize:I

    .line 509
    return v4

    .line 503
    :cond_9
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3
.end method

.method public whitelist addAll(Landroid/util/ArraySet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "+TE;>;)V"
        }
    .end annotation

    .line 552
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "array":Landroid/util/ArraySet;, "Landroid/util/ArraySet<+TE;>;"
    iget v0, p1, Landroid/util/ArraySet;->mSize:I

    .line 553
    .local v0, "N":I
    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->ensureCapacity(I)V

    .line 554
    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    if-nez v1, :cond_1

    .line 555
    if-lez v0, :cond_2

    .line 556
    iget-object v1, p1, Landroid/util/ArraySet;->mHashes:[I

    iget-object v2, p0, Landroid/util/ArraySet;->mHashes:[I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 557
    iget-object v1, p1, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget-object v2, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 558
    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    if-nez v1, :cond_0

    .line 561
    iput v0, p0, Landroid/util/ArraySet;->mSize:I

    goto :goto_1

    .line 559
    :cond_0
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 564
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 565
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 564
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 568
    .end local v1    # "i":I
    :cond_2
    :goto_1
    return-void
.end method

.method public whitelist test-api addAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 961
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->ensureCapacity(I)V

    .line 962
    const/4 v0, 0x0

    .line 963
    .local v0, "added":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 964
    .local v2, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 965
    .end local v2    # "value":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 966
    :cond_0
    return v0
.end method

.method public greylist-max-o append(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 518
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    .line 519
    .local v0, "oSize":I
    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    .line 520
    .local v1, "index":I
    if-nez p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 521
    :cond_0
    iget-boolean v2, p0, Landroid/util/ArraySet;->mIdentityHashCode:Z

    if-eqz v2, :cond_1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    nop

    .line 522
    .local v2, "hash":I
    iget-object v3, p0, Landroid/util/ArraySet;->mHashes:[I

    array-length v4, v3

    if-ge v1, v4, :cond_4

    .line 525
    if-lez v1, :cond_2

    add-int/lit8 v4, v1, -0x1

    aget v4, v3, v4

    if-le v4, v2, :cond_2

    .line 534
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 535
    return-void

    .line 538
    :cond_2
    iget v4, p0, Landroid/util/ArraySet;->mSize:I

    if-ne v0, v4, :cond_3

    .line 542
    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Landroid/util/ArraySet;->mSize:I

    .line 543
    aput v2, v3, v1

    .line 544
    iget-object v3, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aput-object p1, v3, v1

    .line 545
    return-void

    .line 539
    :cond_3
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3

    .line 523
    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Array is full"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public whitelist test-api clear()V
    .locals 4

    .line 350
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 352
    .local v0, "ohashes":[I
    iget-object v1, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 353
    .local v1, "oarray":[Ljava/lang/Object;
    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    .line 354
    .local v2, "osize":I
    sget-object v3, Llibcore/util/EmptyArray;->INT:[I

    iput-object v3, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 355
    sget-object v3, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v3, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 356
    const/4 v3, 0x0

    iput v3, p0, Landroid/util/ArraySet;->mSize:I

    .line 357
    invoke-static {v0, v1, v2}, Landroid/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 359
    .end local v0    # "ohashes":[I
    .end local v1    # "oarray":[Ljava/lang/Object;
    .end local v2    # "osize":I
    :cond_0
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    if-nez v0, :cond_1

    .line 362
    return-void

    .line 360
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 393
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api containsAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 946
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 947
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 948
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 949
    const/4 v1, 0x0

    return v1

    .line 952
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist ensureCapacity(I)V
    .locals 6
    .param p1, "minimumCapacity"    # I

    .line 369
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    .line 370
    .local v0, "oSize":I
    iget-object v1, p0, Landroid/util/ArraySet;->mHashes:[I

    array-length v1, v1

    if-ge v1, p1, :cond_1

    .line 371
    iget-object v1, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 372
    .local v1, "ohashes":[I
    iget-object v2, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 373
    .local v2, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, p1}, Landroid/util/ArraySet;->allocArrays(I)V

    .line 374
    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    if-lez v3, :cond_0

    .line 375
    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    const/4 v5, 0x0

    invoke-static {v1, v5, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 376
    iget-object v3, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v4, p0, Landroid/util/ArraySet;->mSize:I

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 378
    :cond_0
    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    invoke-static {v1, v2, v3}, Landroid/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 380
    .end local v1    # "ohashes":[I
    .end local v2    # "oarray":[Ljava/lang/Object;
    :cond_1
    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    if-ne v1, v0, :cond_2

    .line 383
    return-void

    .line 381
    :cond_2
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    .line 800
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 801
    return v0

    .line 803
    :cond_0
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 804
    move-object v1, p1

    check-cast v1, Ljava/util/Set;

    .line 805
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 806
    return v2

    .line 810
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_0
    iget v4, p0, Landroid/util/ArraySet;->mSize:I

    if-ge v3, v4, :cond_3

    .line 811
    invoke-virtual {p0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 812
    .local v4, "mine":Ljava/lang/Object;, "TE;"
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_2

    .line 813
    return v2

    .line 810
    .end local v4    # "mine":Ljava/lang/Object;, "TE;"
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 820
    .end local v3    # "i":I
    :cond_3
    nop

    .line 821
    return v0

    .line 818
    :catch_0
    move-exception v0

    .line 819
    .local v0, "ignored":Ljava/lang/ClassCastException;
    return v2

    .line 816
    .end local v0    # "ignored":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .line 817
    .local v0, "ignored":Ljava/lang/NullPointerException;
    return v2

    .line 823
    .end local v0    # "ignored":Ljava/lang/NullPointerException;
    .end local v1    # "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :cond_4
    return v2
.end method

.method public whitelist test-api forEach(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 759
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-eqz p1, :cond_1

    .line 763
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    if-ge v0, v1, :cond_0

    .line 764
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 763
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 766
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 760
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "action must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .locals 5

    .line 831
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget-object v0, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 832
    .local v0, "hashes":[I
    const/4 v1, 0x0

    .line 833
    .local v1, "result":I
    const/4 v2, 0x0

    .local v2, "i":I
    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    .local v3, "s":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 834
    aget v4, v0, v2

    add-int/2addr v1, v4

    .line 833
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 836
    .end local v2    # "i":I
    .end local v3    # "s":I
    :cond_0
    return v1
.end method

.method public whitelist indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 403
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    if-nez p1, :cond_0

    invoke-direct {p0}, Landroid/util/ArraySet;->indexOfNull()I

    move-result v0

    goto :goto_1

    .line 404
    :cond_0
    iget-boolean v0, p0, Landroid/util/ArraySet;->mIdentityHashCode:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    .line 403
    :goto_1
    return v0
.end method

.method public whitelist test-api isEmpty()Z
    .locals 1

    .line 444
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 935
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    invoke-direct {p0}, Landroid/util/ArraySet;->getCollection()Landroid/util/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/MapCollections;->getKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 578
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 579
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 580
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 581
    const/4 v1, 0x1

    return v1

    .line 583
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist removeAll(Landroid/util/ArraySet;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 676
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "array":Landroid/util/ArraySet;, "Landroid/util/ArraySet<+TE;>;"
    iget v0, p1, Landroid/util/ArraySet;->mSize:I

    .line 680
    .local v0, "N":I
    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    .line 681
    .local v1, "originalSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 682
    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 681
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 684
    .end local v2    # "i":I
    :cond_0
    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    if-eq v1, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public whitelist test-api removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 976
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 977
    .local v0, "removed":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 978
    .local v2, "value":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 979
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 980
    :cond_0
    return v0
.end method

.method public whitelist removeAt(I)Ljava/lang/Object;
    .locals 9
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 613
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    if-lt p1, v0, :cond_1

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 616
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 618
    :cond_1
    :goto_0
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    .line 619
    .local v0, "oSize":I
    iget-object v1, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v1, v1, p1

    .line 620
    .local v1, "old":Ljava/lang/Object;
    const/4 v2, 0x1

    if-gt v0, v2, :cond_2

    .line 623
    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    goto :goto_2

    .line 625
    :cond_2
    add-int/lit8 v2, v0, -0x1

    .line 626
    .local v2, "nSize":I
    invoke-direct {p0}, Landroid/util/ArraySet;->shouldShrink()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 628
    invoke-direct {p0}, Landroid/util/ArraySet;->getNewShrunkenSize()I

    move-result v3

    .line 632
    .local v3, "n":I
    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 633
    .local v4, "ohashes":[I
    iget-object v5, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 634
    .local v5, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v3}, Landroid/util/ArraySet;->allocArrays(I)V

    .line 636
    if-lez p1, :cond_3

    .line 638
    iget-object v6, p0, Landroid/util/ArraySet;->mHashes:[I

    const/4 v7, 0x0

    invoke-static {v4, v7, v6, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 639
    iget-object v6, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-static {v5, v7, v6, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 641
    :cond_3
    if-ge p1, v2, :cond_4

    .line 646
    add-int/lit8 v6, p1, 0x1

    iget-object v7, p0, Landroid/util/ArraySet;->mHashes:[I

    sub-int v8, v2, p1

    invoke-static {v4, v6, v7, p1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 647
    add-int/lit8 v6, p1, 0x1

    iget-object v7, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    sub-int v8, v2, p1

    invoke-static {v5, v6, v7, p1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 649
    .end local v3    # "n":I
    .end local v4    # "ohashes":[I
    .end local v5    # "oarray":[Ljava/lang/Object;
    :cond_4
    goto :goto_1

    .line 650
    :cond_5
    if-ge p1, v2, :cond_6

    .line 654
    iget-object v3, p0, Landroid/util/ArraySet;->mHashes:[I

    add-int/lit8 v4, p1, 0x1

    sub-int v5, v2, p1

    invoke-static {v3, v4, v3, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 655
    iget-object v3, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    add-int/lit8 v4, p1, 0x1

    sub-int v5, v2, p1

    invoke-static {v3, v4, v3, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 657
    :cond_6
    iget-object v3, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    .line 659
    :goto_1
    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    if-ne v0, v3, :cond_7

    .line 662
    iput v2, p0, Landroid/util/ArraySet;->mSize:I

    .line 664
    .end local v2    # "nSize":I
    :goto_2
    return-object v1

    .line 660
    .restart local v2    # "nSize":I
    :cond_7
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3
.end method

.method public whitelist test-api removeIf(Ljava/util/function/Predicate;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 695
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 696
    return v1

    .line 701
    :cond_0
    const/4 v0, 0x0

    .line 702
    .local v0, "replaceIndex":I
    const/4 v2, 0x0

    .line 703
    .local v2, "numRemoved":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Landroid/util/ArraySet;->mSize:I

    if-ge v3, v4, :cond_3

    .line 704
    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v3

    invoke-interface {p1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 705
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 707
    :cond_1
    if-eq v0, v3, :cond_2

    .line 708
    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v5, v4, v3

    aput-object v5, v4, v0

    .line 709
    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    aget v5, v4, v3

    aput v5, v4, v0

    .line 711
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 703
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 715
    .end local v3    # "i":I
    :cond_3
    if-nez v2, :cond_4

    .line 716
    return v1

    .line 717
    :cond_4
    const/4 v3, 0x1

    if-ne v2, v4, :cond_5

    .line 718
    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    .line 719
    return v3

    .line 722
    :cond_5
    sub-int/2addr v4, v2

    iput v4, p0, Landroid/util/ArraySet;->mSize:I

    .line 723
    invoke-direct {p0}, Landroid/util/ArraySet;->shouldShrink()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 725
    invoke-direct {p0}, Landroid/util/ArraySet;->getNewShrunkenSize()I

    move-result v4

    .line 726
    .local v4, "n":I
    iget-object v5, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 727
    .local v5, "ohashes":[I
    iget-object v6, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 728
    .local v6, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v4}, Landroid/util/ArraySet;->allocArrays(I)V

    .line 730
    iget-object v7, p0, Landroid/util/ArraySet;->mHashes:[I

    iget v8, p0, Landroid/util/ArraySet;->mSize:I

    invoke-static {v5, v1, v7, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 731
    iget-object v7, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v8, p0, Landroid/util/ArraySet;->mSize:I

    invoke-static {v6, v1, v7, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 732
    .end local v4    # "n":I
    .end local v5    # "ohashes":[I
    .end local v6    # "oarray":[Ljava/lang/Object;
    goto :goto_3

    .line 736
    :cond_6
    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    .local v1, "i":I
    :goto_2
    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    array-length v5, v4

    if-ge v1, v5, :cond_7

    .line 737
    const/4 v5, 0x0

    aput-object v5, v4, v1

    .line 736
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 740
    .end local v1    # "i":I
    :cond_7
    :goto_3
    return v3
.end method

.method public whitelist test-api retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 991
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 992
    .local v0, "removed":Z
    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 993
    iget-object v2, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 994
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 995
    const/4 v0, 0x1

    .line 992
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 998
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public whitelist test-api size()I
    .locals 1

    .line 748
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    return v0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .locals 4

    .line 770
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    new-array v1, v0, [Ljava/lang/Object;

    .line 771
    .local v1, "result":[Ljava/lang/Object;
    iget-object v2, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 772
    return-object v1
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 777
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    array-length v0, p1

    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    if-ge v0, v1, :cond_0

    .line 778
    nop

    .line 779
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 780
    .local v0, "newArray":[Ljava/lang/Object;, "[TT;"
    move-object p1, v0

    .line 782
    .end local v0    # "newArray":[Ljava/lang/Object;, "[TT;"
    :cond_0
    iget-object v0, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 783
    array-length v0, p1

    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    if-le v0, v1, :cond_1

    .line 784
    const/4 v0, 0x0

    aput-object v0, p1, v1

    .line 786
    :cond_1
    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 848
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 849
    const-string/jumbo v0, "{}"

    return-object v0

    .line 852
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    mul-int/lit8 v1, v1, 0xe

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 853
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 854
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    if-ge v1, v2, :cond_3

    .line 855
    if-lez v1, :cond_1

    .line 856
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    :cond_1
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 859
    .local v2, "value":Ljava/lang/Object;
    if-eq v2, p0, :cond_2

    .line 860
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 862
    :cond_2
    const-string v3, "(this Set)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    .end local v2    # "value":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 865
    .end local v1    # "i":I
    :cond_3
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 866
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist valueAt(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 419
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    if-lt p1, v0, :cond_1

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 422
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 424
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->valueAtUnchecked(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist valueAtUnchecked(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 436
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget-object v0, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
