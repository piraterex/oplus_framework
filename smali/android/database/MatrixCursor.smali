.class public Landroid/database/MatrixCursor;
.super Landroid/database/AbstractCursor;
.source "MatrixCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/MatrixCursor$RowBuilder;
    }
.end annotation


# instance fields
.field private final greylist-max-o columnCount:I

.field private final greylist-max-o columnNames:[Ljava/lang/String;

.field private greylist-max-p data:[Ljava/lang/Object;

.field private greylist-max-p rowCount:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetcolumnCount(Landroid/database/MatrixCursor;)I
    .locals 0

    iget p0, p0, Landroid/database/MatrixCursor;->columnCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetcolumnNames(Landroid/database/MatrixCursor;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/database/MatrixCursor;->columnNames:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetdata(Landroid/database/MatrixCursor;)[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    return-object p0
.end method

.method public constructor whitelist <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "columnNames"    # [Ljava/lang/String;

    .line 63
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 64
    return-void
.end method

.method public constructor whitelist <init>([Ljava/lang/String;I)V
    .locals 2
    .param p1, "columnNames"    # [Ljava/lang/String;
    .param p2, "initialCapacity"    # I

    .line 45
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Landroid/database/MatrixCursor;->rowCount:I

    .line 46
    iput-object p1, p0, Landroid/database/MatrixCursor;->columnNames:[Ljava/lang/String;

    .line 47
    array-length v0, p1

    iput v0, p0, Landroid/database/MatrixCursor;->columnCount:I

    .line 49
    const/4 v1, 0x1

    if-ge p2, v1, :cond_0

    .line 50
    const/4 p2, 0x1

    .line 53
    :cond_0
    mul-int/2addr v0, p2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    .line 54
    return-void
.end method

.method private greylist-max-o addRow(Ljava/util/ArrayList;I)V
    .locals 5
    .param p2, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "*>;I)V"
        }
    .end annotation

    .line 161
    .local p1, "columnValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 162
    .local v0, "size":I
    iget v1, p0, Landroid/database/MatrixCursor;->columnCount:I

    if-ne v0, v1, :cond_1

    .line 167
    iget v1, p0, Landroid/database/MatrixCursor;->rowCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/database/MatrixCursor;->rowCount:I

    .line 168
    iget-object v1, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    .line 169
    .local v1, "localData":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 170
    add-int v3, p2, v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v3

    .line 169
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    .end local v2    # "i":I
    :cond_0
    return-void

    .line 163
    .end local v1    # "localData":[Ljava/lang/Object;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "columnNames.length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/database/MatrixCursor;->columnCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", columnValues.size() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o ensureCapacity(I)V
    .locals 5
    .param p1, "size"    # I

    .line 176
    iget-object v0, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    array-length v1, v0

    if-le p1, v1, :cond_1

    .line 177
    iget-object v1, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    .line 178
    .local v1, "oldData":[Ljava/lang/Object;
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 179
    .local v0, "newSize":I
    if-ge v0, p1, :cond_0

    .line 180
    move v0, p1

    .line 182
    :cond_0
    new-array v2, v0, [Ljava/lang/Object;

    iput-object v2, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    .line 183
    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    .end local v0    # "newSize":I
    .end local v1    # "oldData":[Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private greylist get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "column"    # I

    .line 71
    if-ltz p1, :cond_2

    iget v0, p0, Landroid/database/MatrixCursor;->columnCount:I

    if-ge p1, v0, :cond_2

    .line 75
    iget v0, p0, Landroid/database/MatrixCursor;->mPos:I

    if-ltz v0, :cond_1

    .line 78
    iget v0, p0, Landroid/database/MatrixCursor;->mPos:I

    iget v1, p0, Landroid/database/MatrixCursor;->rowCount:I

    if-ge v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    iget v1, p0, Landroid/database/MatrixCursor;->mPos:I

    iget v2, p0, Landroid/database/MatrixCursor;->columnCount:I

    mul-int/2addr v1, v2

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0

    .line 79
    :cond_0
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "After last row."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_1
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "Before first row."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_2
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested column: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", # of columns: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/database/MatrixCursor;->columnCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist addRow(Ljava/lang/Iterable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)V"
        }
    .end annotation

    .line 129
    .local p1, "columnValues":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    iget v0, p0, Landroid/database/MatrixCursor;->rowCount:I

    iget v1, p0, Landroid/database/MatrixCursor;->columnCount:I

    mul-int/2addr v0, v1

    .line 130
    .local v0, "start":I
    add-int/2addr v1, v0

    .line 131
    .local v1, "end":I
    invoke-direct {p0, v1}, Landroid/database/MatrixCursor;->ensureCapacity(I)V

    .line 133
    instance-of v2, p1, Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 134
    move-object v2, p1

    check-cast v2, Ljava/util/ArrayList;

    invoke-direct {p0, v2, v0}, Landroid/database/MatrixCursor;->addRow(Ljava/util/ArrayList;I)V

    .line 135
    return-void

    .line 138
    :cond_0
    move v2, v0

    .line 139
    .local v2, "current":I
    iget-object v3, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    .line 140
    .local v3, "localData":[Ljava/lang/Object;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 141
    .local v5, "columnValue":Ljava/lang/Object;
    if-eq v2, v1, :cond_1

    .line 146
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "current":I
    .local v6, "current":I
    aput-object v5, v3, v2

    .line 147
    .end local v5    # "columnValue":Ljava/lang/Object;
    move v2, v6

    goto :goto_0

    .line 143
    .end local v6    # "current":I
    .restart local v2    # "current":I
    .restart local v5    # "columnValue":Ljava/lang/Object;
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v6, "columnValues.size() > columnNames.length"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 149
    .end local v5    # "columnValue":Ljava/lang/Object;
    :cond_2
    if-ne v2, v1, :cond_3

    .line 156
    iget v4, p0, Landroid/database/MatrixCursor;->rowCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/database/MatrixCursor;->rowCount:I

    .line 157
    return-void

    .line 151
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "columnValues.size() < columnNames.length"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public whitelist addRow([Ljava/lang/Object;)V
    .locals 4
    .param p1, "columnValues"    # [Ljava/lang/Object;

    .line 108
    array-length v0, p1

    iget v1, p0, Landroid/database/MatrixCursor;->columnCount:I

    if-ne v0, v1, :cond_0

    .line 114
    iget v0, p0, Landroid/database/MatrixCursor;->rowCount:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroid/database/MatrixCursor;->rowCount:I

    mul-int/2addr v0, v1

    .line 115
    .local v0, "start":I
    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Landroid/database/MatrixCursor;->ensureCapacity(I)V

    .line 116
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    iget v3, p0, Landroid/database/MatrixCursor;->columnCount:I

    invoke-static {p1, v1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    return-void

    .line 109
    .end local v0    # "start":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "columnNames.length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/database/MatrixCursor;->columnCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", columnValues.length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getBlob(I)[B
    .locals 2
    .param p1, "column"    # I

    .line 313
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 314
    .local v0, "value":Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, [B

    return-object v1
.end method

.method public whitelist getColumnNames()[Ljava/lang/String;
    .locals 1

    .line 261
    iget-object v0, p0, Landroid/database/MatrixCursor;->columnNames:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getCount()I
    .locals 1

    .line 256
    iget v0, p0, Landroid/database/MatrixCursor;->rowCount:I

    return v0
.end method

.method public whitelist getDouble(I)D
    .locals 3
    .param p1, "column"    # I

    .line 305
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 306
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    return-wide v1

    .line 307
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    return-wide v1

    .line 308
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    return-wide v1
.end method

.method public whitelist getFloat(I)F
    .locals 2
    .param p1, "column"    # I

    .line 297
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 298
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 299
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    return v1

    .line 300
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    return v1
.end method

.method public whitelist getInt(I)I
    .locals 2
    .param p1, "column"    # I

    .line 281
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 282
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 283
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    return v1

    .line 284
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public whitelist getLong(I)J
    .locals 3
    .param p1, "column"    # I

    .line 289
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 290
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    return-wide v1

    .line 291
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    return-wide v1

    .line 292
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method public whitelist getShort(I)S
    .locals 2
    .param p1, "column"    # I

    .line 273
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 274
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 275
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    return v1

    .line 276
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    return v1
.end method

.method public whitelist getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "column"    # I

    .line 266
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 267
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 268
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getType(I)I
    .locals 1
    .param p1, "column"    # I

    .line 319
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/database/DatabaseUtils;->getTypeOfObject(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isNull(I)Z
    .locals 1
    .param p1, "column"    # I

    .line 324
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist newRow()Landroid/database/MatrixCursor$RowBuilder;
    .locals 3

    .line 92
    iget v0, p0, Landroid/database/MatrixCursor;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/database/MatrixCursor;->rowCount:I

    .line 93
    .local v0, "row":I
    iget v2, p0, Landroid/database/MatrixCursor;->columnCount:I

    mul-int/2addr v1, v2

    .line 94
    .local v1, "endIndex":I
    invoke-direct {p0, v1}, Landroid/database/MatrixCursor;->ensureCapacity(I)V

    .line 95
    new-instance v2, Landroid/database/MatrixCursor$RowBuilder;

    invoke-direct {v2, p0, v0}, Landroid/database/MatrixCursor$RowBuilder;-><init>(Landroid/database/MatrixCursor;I)V

    return-object v2
.end method
