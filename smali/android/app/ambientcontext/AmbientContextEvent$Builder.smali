.class public final Landroid/app/ambientcontext/AmbientContextEvent$Builder;
.super Ljava/lang/Object;
.source "AmbientContextEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ambientcontext/AmbientContextEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mConfidenceLevel:I

.field private blacklist mDensityLevel:I

.field private blacklist mEndTime:Ljava/time/Instant;

.field private blacklist mEventType:I

.field private blacklist mStartTime:Ljava/time/Instant;


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    .line 387
    return-void
.end method

.method private blacklist checkNotUsed()V
    .locals 4

    .line 473
    iget-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 477
    return-void

    .line 474
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/app/ambientcontext/AmbientContextEvent;
    .locals 7

    .line 445
    invoke-direct {p0}, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->checkNotUsed()V

    .line 446
    iget-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    .line 448
    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 449
    invoke-static {}, Landroid/app/ambientcontext/AmbientContextEvent;->-$$Nest$smdefaultEventType()I

    move-result v0

    iput v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mEventType:I

    .line 451
    :cond_0
    iget-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 452
    invoke-static {}, Landroid/app/ambientcontext/AmbientContextEvent;->-$$Nest$smdefaultStartTime()Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mStartTime:Ljava/time/Instant;

    .line 454
    :cond_1
    iget-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 455
    invoke-static {}, Landroid/app/ambientcontext/AmbientContextEvent;->-$$Nest$smdefaultEndTime()Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mEndTime:Ljava/time/Instant;

    .line 457
    :cond_2
    iget-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x8

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 458
    invoke-static {}, Landroid/app/ambientcontext/AmbientContextEvent;->-$$Nest$smdefaultConfidenceLevel()I

    move-result v0

    iput v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mConfidenceLevel:I

    .line 460
    :cond_3
    iget-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x10

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 461
    invoke-static {}, Landroid/app/ambientcontext/AmbientContextEvent;->-$$Nest$smdefaultDensityLevel()I

    move-result v0

    iput v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mDensityLevel:I

    .line 463
    :cond_4
    new-instance v0, Landroid/app/ambientcontext/AmbientContextEvent;

    iget v2, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mEventType:I

    iget-object v3, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mStartTime:Ljava/time/Instant;

    iget-object v4, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mEndTime:Ljava/time/Instant;

    iget v5, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mConfidenceLevel:I

    iget v6, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mDensityLevel:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/app/ambientcontext/AmbientContextEvent;-><init>(ILjava/time/Instant;Ljava/time/Instant;II)V

    .line 469
    .local v0, "o":Landroid/app/ambientcontext/AmbientContextEvent;
    return-object v0
.end method

.method public whitelist setConfidenceLevel(I)Landroid/app/ambientcontext/AmbientContextEvent$Builder;
    .locals 4
    .param p1, "value"    # I

    .line 425
    invoke-direct {p0}, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->checkNotUsed()V

    .line 426
    iget-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    .line 427
    iput p1, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mConfidenceLevel:I

    .line 428
    return-object p0
.end method

.method public whitelist setDensityLevel(I)Landroid/app/ambientcontext/AmbientContextEvent$Builder;
    .locals 4
    .param p1, "value"    # I

    .line 437
    invoke-direct {p0}, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->checkNotUsed()V

    .line 438
    iget-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    .line 439
    iput p1, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mDensityLevel:I

    .line 440
    return-object p0
.end method

.method public whitelist setEndTime(Ljava/time/Instant;)Landroid/app/ambientcontext/AmbientContextEvent$Builder;
    .locals 4
    .param p1, "value"    # Ljava/time/Instant;

    .line 413
    invoke-direct {p0}, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->checkNotUsed()V

    .line 414
    iget-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    .line 415
    iput-object p1, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mEndTime:Ljava/time/Instant;

    .line 416
    return-object p0
.end method

.method public whitelist setEventType(I)Landroid/app/ambientcontext/AmbientContextEvent$Builder;
    .locals 4
    .param p1, "value"    # I

    .line 391
    invoke-direct {p0}, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->checkNotUsed()V

    .line 392
    iget-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    .line 393
    iput p1, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mEventType:I

    .line 394
    return-object p0
.end method

.method public whitelist setStartTime(Ljava/time/Instant;)Landroid/app/ambientcontext/AmbientContextEvent$Builder;
    .locals 4
    .param p1, "value"    # Ljava/time/Instant;

    .line 402
    invoke-direct {p0}, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->checkNotUsed()V

    .line 403
    iget-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    .line 404
    iput-object p1, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mStartTime:Ljava/time/Instant;

    .line 405
    return-object p0
.end method
