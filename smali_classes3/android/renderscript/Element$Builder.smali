.class public Landroid/renderscript/Element$Builder;
.super Ljava/lang/Object;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field greylist-max-o mArraySizes:[I

.field greylist-max-o mCount:I

.field greylist-max-o mElementNames:[Ljava/lang/String;

.field greylist-max-o mElements:[Landroid/renderscript/Element;

.field greylist-max-o mRS:Landroid/renderscript/RenderScript;

.field greylist-max-o mSkipPadding:I


# direct methods
.method public constructor whitelist <init>(Landroid/renderscript/RenderScript;)V
    .locals 2
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    .line 1320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1321
    iput-object p1, p0, Landroid/renderscript/Element$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 1322
    const/4 v0, 0x0

    iput v0, p0, Landroid/renderscript/Element$Builder;->mCount:I

    .line 1323
    const/16 v0, 0x8

    new-array v1, v0, [Landroid/renderscript/Element;

    iput-object v1, p0, Landroid/renderscript/Element$Builder;->mElements:[Landroid/renderscript/Element;

    .line 1324
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Landroid/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    .line 1325
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/renderscript/Element$Builder;->mArraySizes:[I

    .line 1326
    return-void
.end method


# virtual methods
.method public whitelist add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;
    .locals 1
    .param p1, "element"    # Landroid/renderscript/Element;
    .param p2, "name"    # Ljava/lang/String;

    .line 1379
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;I)Landroid/renderscript/Element$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist add(Landroid/renderscript/Element;Ljava/lang/String;I)Landroid/renderscript/Element$Builder;
    .locals 7
    .param p1, "element"    # Landroid/renderscript/Element;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "arraySize"    # I

    .line 1336
    const/4 v0, 0x1

    if-lt p3, v0, :cond_3

    .line 1341
    iget v1, p0, Landroid/renderscript/Element$Builder;->mSkipPadding:I

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1342
    const-string v1, "#padding_"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1343
    iput v2, p0, Landroid/renderscript/Element$Builder;->mSkipPadding:I

    .line 1344
    return-object p0

    .line 1348
    :cond_0
    iget v1, p1, Landroid/renderscript/Element;->mVectorSize:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 1349
    iput v0, p0, Landroid/renderscript/Element$Builder;->mSkipPadding:I

    goto :goto_0

    .line 1351
    :cond_1
    iput v2, p0, Landroid/renderscript/Element$Builder;->mSkipPadding:I

    .line 1354
    :goto_0
    iget v1, p0, Landroid/renderscript/Element$Builder;->mCount:I

    iget-object v3, p0, Landroid/renderscript/Element$Builder;->mElements:[Landroid/renderscript/Element;

    array-length v4, v3

    if-ne v1, v4, :cond_2

    .line 1355
    add-int/lit8 v4, v1, 0x8

    new-array v4, v4, [Landroid/renderscript/Element;

    .line 1356
    .local v4, "e":[Landroid/renderscript/Element;
    add-int/lit8 v5, v1, 0x8

    new-array v5, v5, [Ljava/lang/String;

    .line 1357
    .local v5, "s":[Ljava/lang/String;
    add-int/lit8 v6, v1, 0x8

    new-array v6, v6, [I

    .line 1358
    .local v6, "as":[I
    invoke-static {v3, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1359
    iget-object v1, p0, Landroid/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    iget v3, p0, Landroid/renderscript/Element$Builder;->mCount:I

    invoke-static {v1, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1360
    iget-object v1, p0, Landroid/renderscript/Element$Builder;->mArraySizes:[I

    iget v3, p0, Landroid/renderscript/Element$Builder;->mCount:I

    invoke-static {v1, v2, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1361
    iput-object v4, p0, Landroid/renderscript/Element$Builder;->mElements:[Landroid/renderscript/Element;

    .line 1362
    iput-object v5, p0, Landroid/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    .line 1363
    iput-object v6, p0, Landroid/renderscript/Element$Builder;->mArraySizes:[I

    .line 1365
    .end local v4    # "e":[Landroid/renderscript/Element;
    .end local v5    # "s":[Ljava/lang/String;
    .end local v6    # "as":[I
    :cond_2
    iget-object v1, p0, Landroid/renderscript/Element$Builder;->mElements:[Landroid/renderscript/Element;

    iget v2, p0, Landroid/renderscript/Element$Builder;->mCount:I

    aput-object p1, v1, v2

    .line 1366
    iget-object v1, p0, Landroid/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    aput-object p2, v1, v2

    .line 1367
    iget-object v1, p0, Landroid/renderscript/Element$Builder;->mArraySizes:[I

    aput p3, v1, v2

    .line 1368
    add-int/2addr v2, v0

    iput v2, p0, Landroid/renderscript/Element$Builder;->mCount:I

    .line 1369
    return-object p0

    .line 1337
    :cond_3
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Array size cannot be less than 1."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist create()Landroid/renderscript/Element;
    .locals 14

    .line 1389
    iget-object v0, p0, Landroid/renderscript/Element$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 1390
    iget v0, p0, Landroid/renderscript/Element$Builder;->mCount:I

    new-array v8, v0, [Landroid/renderscript/Element;

    .line 1391
    .local v8, "ein":[Landroid/renderscript/Element;
    new-array v9, v0, [Ljava/lang/String;

    .line 1392
    .local v9, "sin":[Ljava/lang/String;
    new-array v10, v0, [I

    .line 1393
    .local v10, "asin":[I
    iget-object v1, p0, Landroid/renderscript/Element$Builder;->mElements:[Landroid/renderscript/Element;

    const/4 v2, 0x0

    invoke-static {v1, v2, v8, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1394
    iget-object v0, p0, Landroid/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    iget v1, p0, Landroid/renderscript/Element$Builder;->mCount:I

    invoke-static {v0, v2, v9, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1395
    iget-object v0, p0, Landroid/renderscript/Element$Builder;->mArraySizes:[I

    iget v1, p0, Landroid/renderscript/Element$Builder;->mCount:I

    invoke-static {v0, v2, v10, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1397
    array-length v0, v8

    new-array v0, v0, [J

    .line 1398
    .local v0, "ids":[J
    const/4 v1, 0x0

    .local v1, "ct":I
    :goto_0
    array-length v2, v8

    if-ge v1, v2, :cond_0

    .line 1399
    aget-object v2, v8, v1

    iget-object v3, p0, Landroid/renderscript/Element$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2, v3}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 1398
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1401
    .end local v1    # "ct":I
    :cond_0
    iget-object v1, p0, Landroid/renderscript/Element$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1, v0, v9, v10}, Landroid/renderscript/RenderScript;->nElementCreate2([J[Ljava/lang/String;[I)J

    move-result-wide v11

    .line 1402
    .local v11, "id":J
    new-instance v13, Landroid/renderscript/Element;

    iget-object v4, p0, Landroid/renderscript/Element$Builder;->mRS:Landroid/renderscript/RenderScript;

    move-object v1, v13

    move-wide v2, v11

    move-object v5, v8

    move-object v6, v9

    move-object v7, v10

    invoke-direct/range {v1 .. v7}, Landroid/renderscript/Element;-><init>(JLandroid/renderscript/RenderScript;[Landroid/renderscript/Element;[Ljava/lang/String;[I)V

    return-object v13
.end method
