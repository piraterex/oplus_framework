.class final Lcom/android/internal/util/function/pooled/PooledLambdaImpl;
.super Lcom/android/internal/util/function/pooled/OmniFunction;
.source "PooledLambdaImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;,
        Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/internal/util/function/pooled/OmniFunction<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "TR;>;"
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist FLAG_ACQUIRED_FROM_MESSAGE_CALLBACKS_POOL:I = 0x2000

.field private static final blacklist FLAG_RECYCLED:I = 0x800

.field private static final blacklist FLAG_RECYCLE_ON_USE:I = 0x1000

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "PooledLambdaImpl"

.field static final blacklist MASK_EXPOSED_AS:I = 0x1fc000

.field static final blacklist MASK_FUNC_TYPE:I = 0xfe00000

.field private static final blacklist MAX_ARGS:I = 0xb

.field private static final blacklist MAX_POOL_SIZE:I = 0x32

.field static final blacklist sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

.field static final blacklist sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;


# instance fields
.field blacklist mArgs:[Ljava/lang/Object;

.field blacklist mConstValue:J

.field blacklist mFlags:I

.field blacklist mFunc:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smmask(II)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mask(II)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smunmask(II)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->unmask(II)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 90
    new-instance v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    .line 91
    new-instance v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 93
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/OmniFunction;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    .line 157
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    .line 93
    return-void
.end method

.method static blacklist acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;
    .locals 16
    .param p0, "pool"    # Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;
    .param p1, "func"    # Ljava/lang/Object;
    .param p2, "fNumArgs"    # I
    .param p3, "numPlaceholders"    # I
    .param p4, "fReturnType"    # I
    .param p5, "a"    # Ljava/lang/Object;
    .param p6, "b"    # Ljava/lang/Object;
    .param p7, "c"    # Ljava/lang/Object;
    .param p8, "d"    # Ljava/lang/Object;
    .param p9, "e"    # Ljava/lang/Object;
    .param p10, "f"    # Ljava/lang/Object;
    .param p11, "g"    # Ljava/lang/Object;
    .param p12, "h"    # Ljava/lang/Object;
    .param p13, "i"    # Ljava/lang/Object;
    .param p14, "j"    # Ljava/lang/Object;
    .param p15, "k"    # Ljava/lang/Object;
    .param p16, "l"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/android/internal/util/function/pooled/PooledLambda;",
            ">(",
            "Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;",
            "Ljava/lang/Object;",
            "III",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation

    .line 557
    move/from16 v0, p2

    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;)Lcom/android/internal/util/function/pooled/PooledLambdaImpl;

    move-result-object v1

    .line 579
    .local v1, "r":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    .line 580
    move/from16 v2, p4

    invoke-static {v0, v2}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->encode(II)I

    move-result v3

    const/high16 v4, 0xfe00000

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setFlags(II)V

    .line 581
    invoke-static/range {p3 .. p4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->encode(II)I

    move-result v3

    const v4, 0x1fc000

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setFlags(II)V

    .line 582
    iget-object v3, v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v3

    if-ge v3, v0, :cond_0

    new-array v3, v0, [Ljava/lang/Object;

    iput-object v3, v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    .line 583
    :cond_0
    iget-object v3, v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v5, p5

    invoke-static {v3, v4, v5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    .line 584
    iget-object v3, v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/4 v4, 0x1

    move-object/from16 v6, p6

    invoke-static {v3, v4, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    .line 585
    iget-object v3, v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/4 v4, 0x2

    move-object/from16 v7, p7

    invoke-static {v3, v4, v7}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    .line 586
    iget-object v3, v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/4 v4, 0x3

    move-object/from16 v8, p8

    invoke-static {v3, v4, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    .line 587
    iget-object v3, v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/4 v4, 0x4

    move-object/from16 v9, p9

    invoke-static {v3, v4, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    .line 588
    iget-object v3, v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/4 v4, 0x5

    move-object/from16 v10, p10

    invoke-static {v3, v4, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    .line 589
    iget-object v3, v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/4 v4, 0x6

    move-object/from16 v11, p11

    invoke-static {v3, v4, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    .line 590
    iget-object v3, v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/4 v4, 0x7

    move-object/from16 v12, p12

    invoke-static {v3, v4, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    .line 591
    iget-object v3, v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/16 v4, 0x8

    move-object/from16 v13, p13

    invoke-static {v3, v4, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    .line 592
    iget-object v3, v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/16 v4, 0x9

    move-object/from16 v14, p14

    invoke-static {v3, v4, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    .line 593
    iget-object v3, v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/16 v4, 0xa

    move-object/from16 v15, p15

    invoke-static {v3, v4, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    .line 594
    iget-object v3, v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/16 v4, 0xb

    move-object/from16 v0, p16

    invoke-static {v3, v4, v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    .line 595
    return-object v1
.end method

.method static blacklist acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;)Lcom/android/internal/util/function/pooled/PooledLambdaImpl;
    .locals 3
    .param p0, "pool"    # Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    .line 607
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;

    .line 608
    .local v0, "r":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;
    if-nez v0, :cond_0

    new-instance v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;

    invoke-direct {v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;-><init>()V

    move-object v0, v1

    .line 609
    :cond_0
    iget v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    and-int/lit16 v1, v1, -0x801

    iput v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    .line 610
    const/16 v1, 0x2000

    .line 611
    sget-object v2, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    if-ne p0, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 610
    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setFlags(II)V

    .line 612
    return-object v0
.end method

.method static blacklist acquireConstSupplier(I)Lcom/android/internal/util/function/pooled/PooledLambdaImpl;
    .locals 3
    .param p0, "type"    # I

    .line 599
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    invoke-static {v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;)Lcom/android/internal/util/function/pooled/PooledLambdaImpl;

    move-result-object v0

    .line 600
    .local v0, "r":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;
    const/16 v1, 0xf

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->encode(II)I

    move-result v1

    .line 601
    .local v1, "lambdaType":I
    const/high16 v2, 0xfe00000

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setFlags(II)V

    .line 602
    const v2, 0x1fc000

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setFlags(II)V

    .line 603
    return-object v0
.end method

.method private blacklist checkNotRecycled()V
    .locals 3

    .line 234
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    return-void

    .line 234
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instance is recycled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist commaSeparateFirstN([Ljava/lang/Object;I)Ljava/lang/String;
    .locals 2
    .param p1, "arr"    # [Ljava/lang/Object;
    .param p2, "n"    # I

    .line 526
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    if-nez p1, :cond_0

    const-string v0, ""

    return-object v0

    .line 527
    :cond_0
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, ","

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist doInvoke()Ljava/lang/Object;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 239
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    move-object/from16 v0, p0

    const/high16 v1, 0xfe00000

    invoke-virtual {v0, v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->getFlags(I)I

    move-result v1

    .line 240
    .local v1, "funcType":I
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->decodeArgCount(I)I

    move-result v2

    .line 241
    .local v2, "argCount":I
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->decodeReturnType(I)I

    move-result v3

    .line 243
    .local v3, "returnType":I
    const/16 v4, 0xa

    const/16 v5, 0x9

    const/16 v6, 0x8

    const/4 v8, 0x7

    const/4 v9, 0x6

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 245
    :pswitch_1
    packed-switch v3, :pswitch_data_1

    .line 249
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    return-object v4

    .line 248
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->getAsDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    return-object v4

    .line 247
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->getAsLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    return-object v4

    .line 246
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->getAsInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    .line 466
    :pswitch_5
    packed-switch v3, :pswitch_data_2

    goto/16 :goto_0

    .line 480
    :pswitch_6
    iget-object v7, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v18, v7

    check-cast v18, Lcom/android/internal/util/function/DodecFunction;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    .line 481
    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    .line 482
    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v25

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v26

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v27

    invoke-direct {v0, v5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v28

    invoke-direct {v0, v4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v29

    const/16 v4, 0xb

    invoke-direct {v0, v4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v30

    .line 480
    invoke-interface/range {v18 .. v30}, Lcom/android/internal/util/function/DodecFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 474
    :pswitch_7
    iget-object v7, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v18, v7

    check-cast v18, Lcom/android/internal/util/function/DodecPredicate;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    .line 475
    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    .line 476
    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v25

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v26

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v27

    invoke-direct {v0, v5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v28

    invoke-direct {v0, v4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v29

    .line 477
    const/16 v4, 0xb

    invoke-direct {v0, v4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v30

    .line 474
    invoke-interface/range {v18 .. v30}, Lcom/android/internal/util/function/DodecPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    .line 468
    :pswitch_8
    iget-object v7, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v18, v7

    check-cast v18, Lcom/android/internal/util/function/DodecConsumer;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    .line 469
    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    .line 470
    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v25

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v26

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v27

    invoke-direct {v0, v5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v28

    invoke-direct {v0, v4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v29

    const/16 v4, 0xb

    invoke-direct {v0, v4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v30

    .line 468
    invoke-interface/range {v18 .. v30}, Lcom/android/internal/util/function/DodecConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 471
    const/4 v4, 0x0

    return-object v4

    .line 445
    :pswitch_9
    packed-switch v3, :pswitch_data_3

    .line 463
    goto/16 :goto_0

    .line 458
    :pswitch_a
    iget-object v7, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v7

    check-cast v16, Lcom/android/internal/util/function/UndecFunction;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    .line 459
    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    .line 460
    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v25

    invoke-direct {v0, v5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v26

    invoke-direct {v0, v4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v27

    .line 458
    invoke-interface/range {v16 .. v27}, Lcom/android/internal/util/function/UndecFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 453
    :pswitch_b
    iget-object v7, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v7

    check-cast v16, Lcom/android/internal/util/function/UndecPredicate;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    .line 454
    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    .line 455
    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v25

    invoke-direct {v0, v5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v26

    invoke-direct {v0, v4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v27

    .line 453
    invoke-interface/range {v16 .. v27}, Lcom/android/internal/util/function/UndecPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    .line 447
    :pswitch_c
    iget-object v7, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v17, v7

    check-cast v17, Lcom/android/internal/util/function/UndecConsumer;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    .line 448
    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    .line 449
    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v25

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v26

    invoke-direct {v0, v5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v27

    invoke-direct {v0, v4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v28

    .line 447
    invoke-interface/range {v17 .. v28}, Lcom/android/internal/util/function/UndecConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 450
    const/4 v4, 0x0

    return-object v4

    .line 424
    :pswitch_d
    packed-switch v3, :pswitch_data_4

    .line 442
    goto/16 :goto_0

    .line 437
    :pswitch_e
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v4

    check-cast v16, Lcom/android/internal/util/function/DecFunction;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    .line 438
    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    .line 439
    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v25

    invoke-direct {v0, v5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v26

    .line 437
    invoke-interface/range {v16 .. v26}, Lcom/android/internal/util/function/DecFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 432
    :pswitch_f
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v4

    check-cast v16, Lcom/android/internal/util/function/DecPredicate;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    .line 433
    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    .line 434
    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v25

    invoke-direct {v0, v5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v26

    .line 432
    invoke-interface/range {v16 .. v26}, Lcom/android/internal/util/function/DecPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    .line 426
    :pswitch_10
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v17, v4

    check-cast v17, Lcom/android/internal/util/function/DecConsumer;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    .line 427
    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    .line 428
    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v25

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v26

    invoke-direct {v0, v5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v27

    .line 426
    invoke-interface/range {v17 .. v27}, Lcom/android/internal/util/function/DecConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 429
    const/4 v4, 0x0

    return-object v4

    .line 403
    :pswitch_11
    packed-switch v3, :pswitch_data_5

    .line 421
    goto/16 :goto_0

    .line 416
    :pswitch_12
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v4

    check-cast v16, Lcom/android/internal/util/function/NonaFunction;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    .line 417
    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    .line 418
    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v25

    .line 416
    invoke-interface/range {v16 .. v25}, Lcom/android/internal/util/function/NonaFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 411
    :pswitch_13
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v4

    check-cast v16, Lcom/android/internal/util/function/NonaPredicate;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    .line 412
    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    .line 413
    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v25

    .line 411
    invoke-interface/range {v16 .. v25}, Lcom/android/internal/util/function/NonaPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    .line 405
    :pswitch_14
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v17, v4

    check-cast v17, Lcom/android/internal/util/function/NonaConsumer;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    .line 406
    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    .line 407
    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v25

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v26

    .line 405
    invoke-interface/range {v17 .. v26}, Lcom/android/internal/util/function/NonaConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 408
    const/4 v4, 0x0

    return-object v4

    .line 382
    :pswitch_15
    packed-switch v3, :pswitch_data_6

    .line 400
    goto/16 :goto_0

    .line 395
    :pswitch_16
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v4

    check-cast v16, Lcom/android/internal/util/function/OctFunction;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    .line 396
    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    .line 397
    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    .line 395
    invoke-interface/range {v16 .. v24}, Lcom/android/internal/util/function/OctFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 390
    :pswitch_17
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v4

    check-cast v16, Lcom/android/internal/util/function/OctPredicate;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    .line 391
    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    .line 392
    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    .line 390
    invoke-interface/range {v16 .. v24}, Lcom/android/internal/util/function/OctPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    .line 384
    :pswitch_18
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v17, v4

    check-cast v17, Lcom/android/internal/util/function/OctConsumer;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    .line 385
    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    .line 386
    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v25

    .line 384
    invoke-interface/range {v17 .. v25}, Lcom/android/internal/util/function/OctConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 387
    const/4 v4, 0x0

    return-object v4

    .line 361
    :pswitch_19
    packed-switch v3, :pswitch_data_7

    .line 379
    goto/16 :goto_0

    .line 374
    :pswitch_1a
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v4

    check-cast v16, Lcom/android/internal/util/function/HeptFunction;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    .line 375
    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    .line 376
    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    .line 374
    invoke-interface/range {v16 .. v23}, Lcom/android/internal/util/function/HeptFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 369
    :pswitch_1b
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v4

    check-cast v16, Lcom/android/internal/util/function/HeptPredicate;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    .line 370
    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    .line 371
    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    .line 369
    invoke-interface/range {v16 .. v23}, Lcom/android/internal/util/function/HeptPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    .line 363
    :pswitch_1c
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v17, v4

    check-cast v17, Lcom/android/internal/util/function/HeptConsumer;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    .line 364
    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    .line 365
    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    .line 363
    invoke-interface/range {v17 .. v24}, Lcom/android/internal/util/function/HeptConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 366
    const/4 v4, 0x0

    return-object v4

    .line 343
    :pswitch_1d
    packed-switch v3, :pswitch_data_8

    .line 358
    goto/16 :goto_0

    .line 354
    :pswitch_1e
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v4

    check-cast v16, Lcom/android/internal/util/function/HexFunction;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    .line 355
    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    .line 354
    invoke-interface/range {v16 .. v22}, Lcom/android/internal/util/function/HexFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 350
    :pswitch_1f
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v4

    check-cast v16, Lcom/android/internal/util/function/HexPredicate;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    .line 351
    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    .line 350
    invoke-interface/range {v16 .. v22}, Lcom/android/internal/util/function/HexPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    .line 345
    :pswitch_20
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v17, v4

    check-cast v17, Lcom/android/internal/util/function/HexConsumer;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    .line 346
    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    .line 345
    invoke-interface/range {v17 .. v23}, Lcom/android/internal/util/function/HexConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 347
    const/4 v4, 0x0

    return-object v4

    .line 325
    :pswitch_21
    packed-switch v3, :pswitch_data_9

    .line 340
    goto/16 :goto_0

    .line 336
    :pswitch_22
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Lcom/android/internal/util/function/QuintFunction;

    .line 337
    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v10

    .line 336
    invoke-interface/range {v5 .. v10}, Lcom/android/internal/util/function/QuintFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 332
    :pswitch_23
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Lcom/android/internal/util/function/QuintPredicate;

    .line 333
    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v10

    .line 332
    invoke-interface/range {v5 .. v10}, Lcom/android/internal/util/function/QuintPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    .line 327
    :pswitch_24
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Lcom/android/internal/util/function/QuintConsumer;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v7

    .line 328
    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v10

    .line 327
    invoke-interface/range {v5 .. v10}, Lcom/android/internal/util/function/QuintConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 329
    const/4 v4, 0x0

    return-object v4

    .line 308
    :pswitch_25
    packed-switch v3, :pswitch_data_a

    .line 322
    goto/16 :goto_0

    .line 318
    :pswitch_26
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/util/function/QuadFunction;

    .line 319
    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v8

    .line 318
    invoke-interface {v4, v5, v6, v7, v8}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 314
    :pswitch_27
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/util/function/QuadPredicate;

    .line 315
    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v8

    .line 314
    invoke-interface {v4, v5, v6, v7, v8}, Lcom/android/internal/util/function/QuadPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    .line 310
    :pswitch_28
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/util/function/QuadConsumer;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/android/internal/util/function/QuadConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 311
    const/4 v4, 0x0

    return-object v4

    .line 293
    :pswitch_29
    packed-switch v3, :pswitch_data_b

    .line 306
    goto/16 :goto_0

    .line 303
    :pswitch_2a
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/util/function/TriFunction;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lcom/android/internal/util/function/TriFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 299
    :pswitch_2b
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/util/function/TriPredicate;

    .line 300
    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v7

    .line 299
    invoke-interface {v4, v5, v6, v7}, Lcom/android/internal/util/function/TriPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    .line 295
    :pswitch_2c
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/util/function/TriConsumer;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lcom/android/internal/util/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 296
    const/4 v4, 0x0

    return-object v4

    .line 279
    :pswitch_2d
    packed-switch v3, :pswitch_data_c

    .line 291
    goto/16 :goto_0

    .line 288
    :pswitch_2e
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v4, Ljava/util/function/BiFunction;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 285
    :pswitch_2f
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v4, Ljava/util/function/BiPredicate;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    .line 281
    :pswitch_30
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v4, Ljava/util/function/BiConsumer;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 282
    const/4 v4, 0x0

    return-object v4

    .line 265
    :pswitch_31
    packed-switch v3, :pswitch_data_d

    .line 277
    goto :goto_0

    .line 274
    :pswitch_32
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v4, Ljava/util/function/Function;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 271
    :pswitch_33
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v4, Ljava/util/function/Predicate;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    .line 267
    :pswitch_34
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v4, Ljava/util/function/Consumer;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 268
    const/4 v4, 0x0

    return-object v4

    .line 253
    :pswitch_35
    packed-switch v3, :pswitch_data_e

    .line 263
    goto :goto_0

    .line 260
    :pswitch_36
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v4, Ljava/util/function/Supplier;

    invoke-interface {v4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 255
    :pswitch_37
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 256
    const/4 v4, 0x0

    return-object v4

    .line 487
    :goto_0
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown function type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_35
        :pswitch_31
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x1
        :pswitch_24
        :pswitch_23
        :pswitch_22
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_28
        :pswitch_27
        :pswitch_26
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x1
        :pswitch_34
        :pswitch_33
        :pswitch_32
    .end packed-switch

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_37
        :pswitch_36
        :pswitch_36
    .end packed-switch
.end method

.method private blacklist doRecycle()V
    .locals 3

    .line 168
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    iget v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    .line 169
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    goto :goto_0

    .line 170
    :cond_0
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    :goto_0
    nop

    .line 172
    .local v0, "pool":Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    .line 173
    iget-object v2, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    if-eqz v2, :cond_1

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 174
    :cond_1
    const/16 v1, 0x800

    iput v1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    .line 175
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mConstValue:J

    .line 177
    invoke-virtual {v0, p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;->release(Ljava/lang/Object;)Z

    .line 178
    return-void
.end method

.method private blacklist fillInArg(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "invocationArg"    # Ljava/lang/Object;

    .line 218
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    iget-object v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v0

    .line 219
    .local v0, "argsSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 220
    iget-object v2, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    aget-object v2, v2, v1

    sget-object v3, Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;->INSTANCE:Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    if-ne v2, v3, :cond_0

    .line 221
    iget-object v2, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 222
    iget v2, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    int-to-long v2, v2

    invoke-static {v1}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v4

    or-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    .line 223
    const/4 v2, 0x1

    return v2

    .line 219
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    .end local v1    # "i":I
    :cond_1
    if-eqz p1, :cond_3

    sget-object v1, Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;->INSTANCE:Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    if-ne p1, v1, :cond_2

    goto :goto_1

    .line 227
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No more arguments expected for provided arg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " among "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    .line 228
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 230
    :cond_3
    :goto_1
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist getFuncTypeAsString()Ljava/lang/String;
    .locals 3

    .line 539
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "<recycled>"

    return-object v0

    .line 540
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isConstSupplier()Z

    move-result v0

    const-string/jumbo v1, "supplier"

    if-eqz v0, :cond_1

    return-object v1

    .line 541
    :cond_1
    const v0, 0x1fc000

    invoke-virtual {p0, v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->getFlags(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 542
    .local v0, "name":Ljava/lang/String;
    const-string v2, "Consumer"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "consumer"

    return-object v1

    .line 543
    :cond_2
    const-string v2, "Function"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "function"

    return-object v1

    .line 544
    :cond_3
    const-string v2, "Predicate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v1, "predicate"

    return-object v1

    .line 545
    :cond_4
    const-string v2, "Supplier"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    return-object v1

    .line 546
    :cond_5
    const-string v1, "Runnable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "runnable"

    return-object v1

    .line 547
    :cond_6
    return-object v0
.end method

.method private static blacklist hashCodeHex(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .line 533
    if-nez p0, :cond_0

    const-string v0, ""

    return-object v0

    .line 535
    :cond_0
    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist isConstSupplier()Z
    .locals 2

    .line 491
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    const/high16 v0, 0xfe00000

    invoke-virtual {p0, v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->getFlags(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->decodeArgCount(I)I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isInvocationArgAtIndex(I)Z
    .locals 3
    .param p1, "argIndex"    # I

    .line 668
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    iget v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    const/4 v1, 0x1

    shl-int v2, v1, p1

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private blacklist isRecycleOnUse()Z
    .locals 1

    .line 664
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    iget v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isRecycled()Z
    .locals 1

    .line 660
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    iget v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist mask(II)I
    .locals 1
    .param p0, "mask"    # I
    .param p1, "value"    # I

    .line 684
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    shl-int v0, p1, v0

    and-int/2addr v0, p0

    return v0
.end method

.method private blacklist popArg(I)Ljava/lang/Object;
    .locals 5
    .param p1, "index"    # I

    .line 495
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    iget-object v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 496
    .local v0, "result":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isInvocationArgAtIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 497
    iget-object v1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    sget-object v2, Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;->INSTANCE:Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    aput-object v2, v1, p1

    .line 498
    iget v1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    int-to-long v1, v1

    invoke-static {p1}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    not-long v3, v3

    and-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    .line 500
    :cond_0
    return-object v0
.end method

.method private static blacklist setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "i"    # I
    .param p2, "a"    # Ljava/lang/Object;

    .line 616
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v0

    if-ge p1, v0, :cond_0

    aput-object p2, p0, p1

    .line 617
    :cond_0
    return-void
.end method

.method private static blacklist unmask(II)I
    .locals 3
    .param p0, "mask"    # I
    .param p1, "bits"    # I

    .line 691
    and-int v0, p1, p0

    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    const/4 v2, 0x1

    shl-int v1, v2, v1

    div-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public blacklist andThen(Ljava/util/function/Function;)Lcom/android/internal/util/function/pooled/OmniFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TR;+TV;>;)",
            "Lcom/android/internal/util/function/pooled/OmniFunction<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "TV;>;"
        }
    .end annotation

    .line 628
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    .local p1, "after":Ljava/util/function/Function;, "Ljava/util/function/Function<-TR;+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api andThen(Ljava/util/function/Function;)Ljava/util/function/BiFunction;
    .locals 0

    .line 73
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    invoke-virtual {p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->andThen(Ljava/util/function/Function;)Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    .line 73
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    invoke-virtual {p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->andThen(Ljava/util/function/Function;)Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api getAsDouble()D
    .locals 2

    .line 633
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    iget-wide v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mConstValue:J

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api getAsInt()I
    .locals 2

    .line 638
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    iget-wide v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mConstValue:J

    long-to-int v0, v0

    return v0
.end method

.method public whitelist test-api getAsLong()J
    .locals 2

    .line 643
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    iget-wide v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mConstValue:J

    return-wide v0
.end method

.method blacklist getFlags(I)I
    .locals 1
    .param p1, "mask"    # I

    .line 672
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    iget v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    invoke-static {p1, v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->unmask(II)I

    move-result v0

    return v0
.end method

.method public blacklist getTraceName()Ljava/lang/String;
    .locals 1

    .line 656
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    iget-object v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/internal/util/FunctionalUtils;->getLambdaName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
    .param p1, "a1"    # Ljava/lang/Object;
    .param p2, "a2"    # Ljava/lang/Object;
    .param p3, "a3"    # Ljava/lang/Object;
    .param p4, "a4"    # Ljava/lang/Object;
    .param p5, "a5"    # Ljava/lang/Object;
    .param p6, "a6"    # Ljava/lang/Object;
    .param p7, "a7"    # Ljava/lang/Object;
    .param p8, "a8"    # Ljava/lang/Object;
    .param p9, "a9"    # Ljava/lang/Object;
    .param p10, "a10"    # Ljava/lang/Object;
    .param p11, "a11"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .line 183
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->checkNotRecycled()V

    .line 191
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->fillInArg(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object/from16 v2, p2

    invoke-direct {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->fillInArg(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object/from16 v3, p3

    invoke-direct {v1, v3}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->fillInArg(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object/from16 v4, p4

    invoke-direct {v1, v4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->fillInArg(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 192
    move-object/from16 v5, p5

    invoke-direct {v1, v5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->fillInArg(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v6, p6

    invoke-direct {v1, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->fillInArg(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object/from16 v7, p7

    invoke-direct {v1, v7}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->fillInArg(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object/from16 v8, p8

    invoke-direct {v1, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->fillInArg(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 193
    move-object/from16 v9, p9

    invoke-direct {v1, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->fillInArg(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v10, p10

    invoke-direct {v1, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->fillInArg(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object/from16 v11, p11

    invoke-direct {v1, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->fillInArg(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v10, p10

    :cond_1
    move-object/from16 v11, p11

    goto :goto_0

    .line 192
    :cond_2
    move-object/from16 v6, p6

    :cond_3
    move-object/from16 v7, p7

    :cond_4
    move-object/from16 v8, p8

    :cond_5
    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    goto :goto_0

    .line 191
    :cond_6
    move-object/from16 v2, p2

    :cond_7
    move-object/from16 v3, p3

    :cond_8
    move-object/from16 v4, p4

    :cond_9
    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    .line 193
    :cond_a
    :goto_0
    const/4 v0, 0x0

    :goto_1
    move v12, v0

    .line 194
    .local v12, "notUsed":Z
    const/high16 v0, 0xfe00000

    invoke-virtual {v1, v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->getFlags(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->decodeArgCount(I)I

    move-result v13

    .line 195
    .local v13, "argCount":I
    const/16 v0, 0xf

    if-eq v13, v0, :cond_c

    .line 196
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v13, :cond_c

    .line 197
    iget-object v14, v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    aget-object v14, v14, v0

    sget-object v15, Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;->INSTANCE:Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    if-eq v14, v15, :cond_b

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 198
    :cond_b
    new-instance v14, Ljava/lang/IllegalStateException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing argument #"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, " among "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v15, v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    .line 199
    invoke-static {v15}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v14, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 204
    .end local v0    # "i":I
    :cond_c
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->doInvoke()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isRecycleOnUse()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 207
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->doRecycle()V

    goto :goto_4

    .line 208
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_e

    .line 209
    iget-object v2, v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v2

    .line 210
    .local v2, "argsSize":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    if-ge v14, v2, :cond_e

    .line 211
    invoke-direct {v1, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    .line 210
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 204
    .end local v2    # "argsSize":I
    .end local v14    # "i":I
    :cond_e
    :goto_4
    return-object v0

    .line 206
    :catchall_0
    move-exception v0

    move-object v2, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isRecycleOnUse()Z

    move-result v0

    if-nez v0, :cond_f

    .line 208
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_10

    .line 209
    iget-object v0, v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v0

    .line 210
    .local v0, "argsSize":I
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_5
    if-ge v14, v0, :cond_10

    .line 211
    invoke-direct {v1, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    .line 210
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 207
    .end local v0    # "argsSize":I
    .end local v14    # "i":I
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->doRecycle()V

    .line 214
    :cond_10
    throw v2
.end method

.method public blacklist negate()Lcom/android/internal/util/function/pooled/OmniFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/util/function/pooled/OmniFunction<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "TR;>;"
        }
    .end annotation

    .line 622
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api negate()Ljava/util/function/BiPredicate;
    .locals 1

    .line 73
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->negate()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api negate()Ljava/util/function/Predicate;
    .locals 1

    .line 73
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->negate()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public blacklist recycle()V
    .locals 1

    .line 163
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->doRecycle()V

    .line 164
    :cond_0
    return-void
.end method

.method public blacklist recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/util/function/pooled/OmniFunction<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "TR;>;"
        }
    .end annotation

    .line 650
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    iget v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    .line 651
    return-object p0
.end method

.method public bridge synthetic blacklist recycleOnUse()Lcom/android/internal/util/function/pooled/PooledConsumer;
    .locals 1

    .line 73
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist recycleOnUse()Lcom/android/internal/util/function/pooled/PooledFunction;
    .locals 1

    .line 73
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist recycleOnUse()Lcom/android/internal/util/function/pooled/PooledLambda;
    .locals 1

    .line 73
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist recycleOnUse()Lcom/android/internal/util/function/pooled/PooledPredicate;
    .locals 1

    .line 73
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;
    .locals 1

    .line 73
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier$OfDouble;
    .locals 1

    .line 73
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;
    .locals 1

    .line 73
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier$OfLong;
    .locals 1

    .line 73
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier;
    .locals 1

    .line 73
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method blacklist setFlags(II)V
    .locals 2
    .param p1, "mask"    # I
    .param p2, "value"    # I

    .line 676
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    iget v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    .line 677
    invoke-static {p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mask(II)I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    .line 678
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 6

    .line 505
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<recycled PooledLambda@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->hashCodeHex(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 507
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 508
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isConstSupplier()Z

    move-result v1

    const-string v2, ")"

    const-string v3, "("

    if-eqz v1, :cond_1

    .line 509
    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->getFuncTypeAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->doInvoke()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 511
    :cond_1
    iget-object v1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    .line 512
    .local v1, "func":Ljava/lang/Object;
    instance-of v4, v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;

    if-eqz v4, :cond_2

    .line 513
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 515
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->getFuncTypeAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->hashCodeHex(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    iget-object v3, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/high16 v4, 0xfe00000

    .line 519
    invoke-virtual {p0, v4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->getFlags(I)I

    move-result v4

    invoke-static {v4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->decodeArgCount(I)I

    move-result v4

    .line 518
    invoke-direct {p0, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->commaSeparateFirstN([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    .end local v1    # "func":Ljava/lang/Object;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
