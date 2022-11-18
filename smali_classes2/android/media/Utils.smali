.class public Landroid/media/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Utils$ListenerList;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "Utils"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist alignRange(Landroid/util/Range;I)Landroid/util/Range;
    .locals 2
    .param p1, "align"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 193
    .local p0, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    nop

    .line 194
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Landroid/media/Utils;->divUp(II)I

    move-result v0

    mul-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 195
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/2addr v1, p1

    mul-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 193
    invoke-virtual {p0, v0, v1}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist binarySearchDistinctRanges([Landroid/util/Range;Ljava/lang/Comparable;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>([",
            "Landroid/util/Range<",
            "TT;>;TT;)I"
        }
    .end annotation

    .line 117
    .local p0, "ranges":[Landroid/util/Range;, "[Landroid/util/Range<TT;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TT;"
    invoke-static {p1, p1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    new-instance v1, Landroid/media/Utils$2;

    invoke-direct {v1}, Landroid/media/Utils$2;-><init>()V

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method static blacklist divUp(II)I
    .locals 1
    .param p0, "num"    # I
    .param p1, "den"    # I

    .line 199
    add-int v0, p0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p1

    return v0
.end method

.method static blacklist divUp(JJ)J
    .locals 4
    .param p0, "num"    # J
    .param p2, "den"    # J

    .line 203
    add-long v0, p0, p2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    div-long/2addr v0, p2

    return-wide v0
.end method

.method static blacklist factorRange(Landroid/util/Range;I)Landroid/util/Range;
    .locals 2
    .param p1, "factor"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 157
    .local p0, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 158
    return-object p0

    .line 160
    :cond_0
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Landroid/media/Utils;->divUp(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method static blacklist factorRange(Landroid/util/Range;J)Landroid/util/Range;
    .locals 3
    .param p1, "factor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;J)",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 168
    .local p0, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 169
    return-object p0

    .line 171
    :cond_0
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Landroid/media/Utils;->divUp(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    div-long/2addr v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method static blacklist gcd(II)I
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 135
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 136
    const/4 v0, 0x1

    return v0

    .line 138
    :cond_0
    if-gez p1, :cond_1

    .line 139
    neg-int p1, p1

    .line 141
    :cond_1
    if-gez p0, :cond_2

    .line 142
    neg-int p0, p0

    .line 144
    :cond_2
    :goto_0
    if-eqz p0, :cond_3

    .line 145
    rem-int v0, p1, p0

    .line 146
    .local v0, "c":I
    move p1, p0

    .line 147
    move p0, v0

    .line 148
    .end local v0    # "c":I
    goto :goto_0

    .line 149
    :cond_3
    return p1
.end method

.method static blacklist getFileDisplayNameFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 378
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "scheme":Ljava/lang/String;
    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 381
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 382
    :cond_0
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 385
    const-string v1, "_display_name"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    .line 388
    .local v4, "proj":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 389
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_3

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_3

    .line 390
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 391
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 391
    :cond_1
    return-object v1

    .line 388
    :catchall_0
    move-exception v1

    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1

    .line 393
    :cond_3
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 398
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v4    # "proj":[Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getUniqueExternalFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subdirectory"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;

    .line 351
    invoke-static {p1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 353
    .local v0, "externalStorage":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 355
    const/4 v1, 0x0

    .line 358
    .local v1, "outFile":Ljava/io/File;
    :try_start_0
    invoke-static {v0, p3, p2}, Landroid/os/FileUtils;->buildUniqueFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 363
    nop

    .line 364
    return-object v1

    .line 359
    :catch_0
    move-exception v2

    .line 361
    .local v2, "e":Ljava/io/FileNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to get a unique file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Utils"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const/4 v3, 0x0

    return-object v3
.end method

.method static blacklist intRangeFor(D)Landroid/util/Range;
    .locals 3
    .param p0, "v"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 217
    double-to-int v0, p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist intersectSortedDistinctRanges([Landroid/util/Range;[Landroid/util/Range;)[Landroid/util/Range;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>([",
            "Landroid/util/Range<",
            "TT;>;[",
            "Landroid/util/Range<",
            "TT;>;)[",
            "Landroid/util/Range<",
            "TT;>;"
        }
    .end annotation

    .line 85
    .local p0, "one":[Landroid/util/Range;, "[Landroid/util/Range<TT;>;"
    .local p1, "another":[Landroid/util/Range;, "[Landroid/util/Range<TT;>;"
    const/4 v0, 0x0

    .line 86
    .local v0, "ix":I
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 87
    .local v1, "result":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/util/Range<TT;>;>;"
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, p1, v3

    .line 88
    .local v4, "range":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    :goto_1
    array-length v5, p0

    if-ge v0, v5, :cond_0

    aget-object v5, p0, v0

    .line 89
    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_0

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 92
    :cond_0
    :goto_2
    array-length v5, p0

    if-ge v0, v5, :cond_1

    aget-object v5, p0, v0

    .line 93
    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_1

    .line 94
    aget-object v5, p0, v0

    invoke-virtual {v4, v5}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 97
    :cond_1
    array-length v5, p0

    if-ne v0, v5, :cond_2

    .line 98
    goto :goto_3

    .line 100
    :cond_2
    aget-object v5, p0, v0

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_3

    .line 101
    aget-object v5, p0, v0

    invoke-virtual {v4, v5}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 87
    .end local v4    # "range":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 104
    :cond_4
    :goto_3
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [Landroid/util/Range;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/util/Range;

    return-object v2
.end method

.method private static blacklist lcm(II)J
    .locals 4
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 210
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 213
    int-to-long v0, p0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    invoke-static {p0, p1}, Landroid/media/Utils;->gcd(II)I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0

    .line 211
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "lce is not defined for zero arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist longRangeFor(D)Landroid/util/Range;
    .locals 3
    .param p0, "v"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 221
    double-to-long v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method static blacklist parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;
    .locals 5
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 252
    .local p1, "fallback":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    if-nez p0, :cond_0

    .line 253
    return-object p1

    .line 256
    :cond_0
    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    .line 257
    .local v0, "s":Ljava/lang/String;
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 258
    .local v1, "ix":I
    if-ltz v1, :cond_1

    .line 259
    const/4 v2, 0x0

    .line 260
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    add-int/lit8 v4, v1, 0x1

    .line 261
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 259
    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    return-object v2

    .line 263
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 264
    .local v2, "value":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 267
    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "ix":I
    .end local v2    # "value":I
    :catch_0
    move-exception v0

    goto :goto_1

    .line 266
    :catch_1
    move-exception v0

    goto :goto_0

    .line 265
    :catch_2
    move-exception v0

    .line 268
    :goto_0
    nop

    .line 269
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "could not parse integer range \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return-object p1
.end method

.method static blacklist parseIntSafely(Ljava/lang/Object;I)I
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "fallback"    # I

    .line 238
    if-nez p0, :cond_0

    .line 239
    return p1

    .line 242
    :cond_0
    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    .line 243
    .local v0, "s":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 245
    .end local v0    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 244
    :catch_1
    move-exception v0

    .line 246
    nop

    .line 247
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "could not parse integer \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return p1
.end method

.method static blacklist parseLongRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;
    .locals 6
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 274
    .local p1, "fallback":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    if-nez p0, :cond_0

    .line 275
    return-object p1

    .line 278
    :cond_0
    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    .line 279
    .local v0, "s":Ljava/lang/String;
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 280
    .local v1, "ix":I
    if-ltz v1, :cond_1

    .line 281
    const/4 v2, 0x0

    .line 282
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    add-int/lit8 v4, v1, 0x1

    .line 283
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 281
    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    return-object v2

    .line 285
    :cond_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 286
    .local v2, "value":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 289
    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "ix":I
    .end local v2    # "value":J
    :catch_0
    move-exception v0

    goto :goto_1

    .line 288
    :catch_1
    move-exception v0

    goto :goto_0

    .line 287
    :catch_2
    move-exception v0

    .line 290
    :goto_0
    nop

    .line 291
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "could not parse long range \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-object p1
.end method

.method static blacklist parseRationalRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;
    .locals 4
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/util/Range<",
            "Landroid/util/Rational;",
            ">;)",
            "Landroid/util/Range<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation

    .line 296
    .local p1, "fallback":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    if-nez p0, :cond_0

    .line 297
    return-object p1

    .line 300
    :cond_0
    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    .line 301
    .local v0, "s":Ljava/lang/String;
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 302
    .local v1, "ix":I
    if-ltz v1, :cond_1

    .line 303
    const/4 v2, 0x0

    .line 304
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    .line 305
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;

    move-result-object v3

    .line 303
    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    return-object v2

    .line 307
    :cond_1
    invoke-static {v0}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;

    move-result-object v2

    .line 308
    .local v2, "value":Landroid/util/Rational;
    invoke-static {v2, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 311
    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "ix":I
    .end local v2    # "value":Landroid/util/Rational;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 310
    :catch_1
    move-exception v0

    goto :goto_0

    .line 309
    :catch_2
    move-exception v0

    .line 312
    :goto_0
    nop

    .line 313
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "could not parse rational range \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-object p1
.end method

.method static blacklist parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "fallback"    # Landroid/util/Size;

    .line 225
    if-nez p0, :cond_0

    .line 226
    return-object p1

    .line 229
    :cond_0
    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 231
    :catch_0
    move-exception v0

    goto :goto_0

    .line 230
    :catch_1
    move-exception v0

    .line 232
    nop

    .line 233
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "could not parse size \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-object p1
.end method

.method static blacklist parseSizeRange(Ljava/lang/Object;)Landroid/util/Pair;
    .locals 5
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/util/Size;",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 318
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 319
    return-object v0

    .line 322
    :cond_0
    :try_start_0
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 323
    .local v1, "s":Ljava/lang/String;
    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 324
    .local v2, "ix":I
    if-ltz v2, :cond_1

    .line 325
    const/4 v3, 0x0

    .line 326
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    .line 327
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v4

    .line 325
    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 329
    :cond_1
    invoke-static {v1}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v3

    .line 330
    .local v3, "value":Landroid/util/Size;
    invoke-static {v3, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 333
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "ix":I
    .end local v3    # "value":Landroid/util/Size;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 332
    :catch_1
    move-exception v1

    goto :goto_0

    .line 331
    :catch_2
    move-exception v1

    .line 334
    :goto_0
    nop

    .line 335
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not parse size range \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Utils"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    return-object v0
.end method

.method static blacklist scaleRange(Landroid/util/Range;II)Landroid/util/Range;
    .locals 2
    .param p1, "num"    # I
    .param p2, "den"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Landroid/util/Rational;",
            ">;II)",
            "Landroid/util/Range<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation

    .line 184
    .local p0, "range":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    if-ne p1, p2, :cond_0

    .line 185
    return-object p0

    .line 187
    :cond_0
    nop

    .line 188
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Landroid/util/Rational;

    invoke-static {v0, p1, p2}, Landroid/media/Utils;->scaleRatio(Landroid/util/Rational;II)Landroid/util/Rational;

    move-result-object v0

    .line 189
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Landroid/util/Rational;

    invoke-static {v1, p1, p2}, Landroid/media/Utils;->scaleRatio(Landroid/util/Rational;II)Landroid/util/Rational;

    move-result-object v1

    .line 187
    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist scaleRatio(Landroid/util/Rational;II)Landroid/util/Rational;
    .locals 7
    .param p0, "ratio"    # Landroid/util/Rational;
    .param p1, "num"    # I
    .param p2, "den"    # I

    .line 175
    invoke-static {p1, p2}, Landroid/media/Utils;->gcd(II)I

    move-result v0

    .line 176
    .local v0, "common":I
    div-int/2addr p1, v0

    .line 177
    div-int/2addr p2, v0

    .line 178
    new-instance v1, Landroid/util/Rational;

    .line 179
    invoke-virtual {p0}, Landroid/util/Rational;->getNumerator()I

    move-result v2

    int-to-double v2, v2

    int-to-double v4, p1

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 180
    invoke-virtual {p0}, Landroid/util/Rational;->getDenominator()I

    move-result v3

    int-to-double v3, v3

    int-to-double v5, p2

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/util/Rational;-><init>(II)V

    .line 178
    return-object v1
.end method

.method public static blacklist sortDistinctRanges([Landroid/util/Range;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>([",
            "Landroid/util/Range<",
            "TT;>;)V"
        }
    .end annotation

    .line 63
    .local p0, "ranges":[Landroid/util/Range;, "[Landroid/util/Range<TT;>;"
    new-instance v0, Landroid/media/Utils$1;

    invoke-direct {v0}, Landroid/media/Utils$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 75
    return-void
.end method
