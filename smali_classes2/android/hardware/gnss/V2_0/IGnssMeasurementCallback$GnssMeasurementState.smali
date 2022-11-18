.class public final Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurementState;
.super Ljava/lang/Object;
.source "IGnssMeasurementCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GnssMeasurementState"
.end annotation


# static fields
.field public static final blacklist STATE_2ND_CODE_LOCK:I = 0x10000

.field public static final blacklist STATE_BDS_D2_BIT_SYNC:I = 0x100

.field public static final blacklist STATE_BDS_D2_SUBFRAME_SYNC:I = 0x200

.field public static final blacklist STATE_BIT_SYNC:I = 0x2

.field public static final blacklist STATE_CODE_LOCK:I = 0x1

.field public static final blacklist STATE_GAL_E1BC_CODE_LOCK:I = 0x400

.field public static final blacklist STATE_GAL_E1B_PAGE_SYNC:I = 0x1000

.field public static final blacklist STATE_GAL_E1C_2ND_CODE_LOCK:I = 0x800

.field public static final blacklist STATE_GLO_STRING_SYNC:I = 0x40

.field public static final blacklist STATE_GLO_TOD_DECODED:I = 0x80

.field public static final blacklist STATE_GLO_TOD_KNOWN:I = 0x8000

.field public static final blacklist STATE_MSEC_AMBIGUOUS:I = 0x10

.field public static final blacklist STATE_SBAS_SYNC:I = 0x2000

.field public static final blacklist STATE_SUBFRAME_SYNC:I = 0x4

.field public static final blacklist STATE_SYMBOL_SYNC:I = 0x20

.field public static final blacklist STATE_TOW_DECODED:I = 0x8

.field public static final blacklist STATE_TOW_KNOWN:I = 0x4000

.field public static final blacklist STATE_UNKNOWN:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 487
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 488
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 489
    .local v1, "flipped":I
    const-string v2, "STATE_UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 491
    const-string v2, "STATE_CODE_LOCK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    or-int/lit8 v1, v1, 0x1

    .line 494
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 495
    const-string v2, "STATE_BIT_SYNC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    or-int/lit8 v1, v1, 0x2

    .line 498
    :cond_1
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 499
    const-string v2, "STATE_SUBFRAME_SYNC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    or-int/lit8 v1, v1, 0x4

    .line 502
    :cond_2
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 503
    const-string v2, "STATE_TOW_DECODED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    or-int/lit8 v1, v1, 0x8

    .line 506
    :cond_3
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4

    .line 507
    const-string v2, "STATE_MSEC_AMBIGUOUS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    or-int/lit8 v1, v1, 0x10

    .line 510
    :cond_4
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_5

    .line 511
    const-string v2, "STATE_SYMBOL_SYNC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    or-int/lit8 v1, v1, 0x20

    .line 514
    :cond_5
    and-int/lit8 v2, p0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_6

    .line 515
    const-string v2, "STATE_GLO_STRING_SYNC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    or-int/lit8 v1, v1, 0x40

    .line 518
    :cond_6
    and-int/lit16 v2, p0, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_7

    .line 519
    const-string v2, "STATE_GLO_TOD_DECODED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    or-int/lit16 v1, v1, 0x80

    .line 522
    :cond_7
    and-int/lit16 v2, p0, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_8

    .line 523
    const-string v2, "STATE_BDS_D2_BIT_SYNC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    or-int/lit16 v1, v1, 0x100

    .line 526
    :cond_8
    and-int/lit16 v2, p0, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_9

    .line 527
    const-string v2, "STATE_BDS_D2_SUBFRAME_SYNC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    or-int/lit16 v1, v1, 0x200

    .line 530
    :cond_9
    and-int/lit16 v2, p0, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_a

    .line 531
    const-string v2, "STATE_GAL_E1BC_CODE_LOCK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    or-int/lit16 v1, v1, 0x400

    .line 534
    :cond_a
    and-int/lit16 v2, p0, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_b

    .line 535
    const-string v2, "STATE_GAL_E1C_2ND_CODE_LOCK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    or-int/lit16 v1, v1, 0x800

    .line 538
    :cond_b
    and-int/lit16 v2, p0, 0x1000

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_c

    .line 539
    const-string v2, "STATE_GAL_E1B_PAGE_SYNC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    or-int/lit16 v1, v1, 0x1000

    .line 542
    :cond_c
    and-int/lit16 v2, p0, 0x2000

    const/16 v3, 0x2000

    if-ne v2, v3, :cond_d

    .line 543
    const-string v2, "STATE_SBAS_SYNC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    or-int/lit16 v1, v1, 0x2000

    .line 546
    :cond_d
    and-int/lit16 v2, p0, 0x4000

    const/16 v3, 0x4000

    if-ne v2, v3, :cond_e

    .line 547
    const-string v2, "STATE_TOW_KNOWN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    or-int/lit16 v1, v1, 0x4000

    .line 550
    :cond_e
    const v2, 0x8000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_f

    .line 551
    const-string v3, "STATE_GLO_TOD_KNOWN"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    or-int/2addr v1, v2

    .line 554
    :cond_f
    const/high16 v2, 0x10000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_10

    .line 555
    const-string v3, "STATE_2ND_CODE_LOCK"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    or-int/2addr v1, v2

    .line 558
    :cond_10
    if-eq p0, v1, :cond_11

    .line 559
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    :cond_11
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 429
    if-nez p0, :cond_0

    .line 430
    const-string v0, "STATE_UNKNOWN"

    return-object v0

    .line 432
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 433
    const-string v0, "STATE_CODE_LOCK"

    return-object v0

    .line 435
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 436
    const-string v0, "STATE_BIT_SYNC"

    return-object v0

    .line 438
    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    .line 439
    const-string v0, "STATE_SUBFRAME_SYNC"

    return-object v0

    .line 441
    :cond_3
    const/16 v0, 0x8

    if-ne p0, v0, :cond_4

    .line 442
    const-string v0, "STATE_TOW_DECODED"

    return-object v0

    .line 444
    :cond_4
    const/16 v0, 0x10

    if-ne p0, v0, :cond_5

    .line 445
    const-string v0, "STATE_MSEC_AMBIGUOUS"

    return-object v0

    .line 447
    :cond_5
    const/16 v0, 0x20

    if-ne p0, v0, :cond_6

    .line 448
    const-string v0, "STATE_SYMBOL_SYNC"

    return-object v0

    .line 450
    :cond_6
    const/16 v0, 0x40

    if-ne p0, v0, :cond_7

    .line 451
    const-string v0, "STATE_GLO_STRING_SYNC"

    return-object v0

    .line 453
    :cond_7
    const/16 v0, 0x80

    if-ne p0, v0, :cond_8

    .line 454
    const-string v0, "STATE_GLO_TOD_DECODED"

    return-object v0

    .line 456
    :cond_8
    const/16 v0, 0x100

    if-ne p0, v0, :cond_9

    .line 457
    const-string v0, "STATE_BDS_D2_BIT_SYNC"

    return-object v0

    .line 459
    :cond_9
    const/16 v0, 0x200

    if-ne p0, v0, :cond_a

    .line 460
    const-string v0, "STATE_BDS_D2_SUBFRAME_SYNC"

    return-object v0

    .line 462
    :cond_a
    const/16 v0, 0x400

    if-ne p0, v0, :cond_b

    .line 463
    const-string v0, "STATE_GAL_E1BC_CODE_LOCK"

    return-object v0

    .line 465
    :cond_b
    const/16 v0, 0x800

    if-ne p0, v0, :cond_c

    .line 466
    const-string v0, "STATE_GAL_E1C_2ND_CODE_LOCK"

    return-object v0

    .line 468
    :cond_c
    const/16 v0, 0x1000

    if-ne p0, v0, :cond_d

    .line 469
    const-string v0, "STATE_GAL_E1B_PAGE_SYNC"

    return-object v0

    .line 471
    :cond_d
    const/16 v0, 0x2000

    if-ne p0, v0, :cond_e

    .line 472
    const-string v0, "STATE_SBAS_SYNC"

    return-object v0

    .line 474
    :cond_e
    const/16 v0, 0x4000

    if-ne p0, v0, :cond_f

    .line 475
    const-string v0, "STATE_TOW_KNOWN"

    return-object v0

    .line 477
    :cond_f
    const v0, 0x8000

    if-ne p0, v0, :cond_10

    .line 478
    const-string v0, "STATE_GLO_TOD_KNOWN"

    return-object v0

    .line 480
    :cond_10
    const/high16 v0, 0x10000

    if-ne p0, v0, :cond_11

    .line 481
    const-string v0, "STATE_2ND_CODE_LOCK"

    return-object v0

    .line 483
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
