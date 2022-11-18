.class public final Landroid/view/ContentRecordingSession$Builder;
.super Ljava/lang/Object;
.source "ContentRecordingSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ContentRecordingSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mContentToRecord:I

.field private blacklist mDisplayId:I

.field private blacklist mTokenToRecord:Landroid/os/IBinder;


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    .line 370
    return-void
.end method

.method private blacklist checkNotUsed()V
    .locals 4

    .line 432
    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 436
    return-void

    .line 433
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist build()Landroid/view/ContentRecordingSession;
    .locals 6

    .line 412
    invoke-direct {p0}, Landroid/view/ContentRecordingSession$Builder;->checkNotUsed()V

    .line 413
    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    .line 415
    const-wide/16 v2, 0x1

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 416
    const/4 v2, -0x1

    iput v2, p0, Landroid/view/ContentRecordingSession$Builder;->mDisplayId:I

    .line 418
    :cond_0
    const-wide/16 v2, 0x2

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 419
    const/4 v2, 0x0

    iput v2, p0, Landroid/view/ContentRecordingSession$Builder;->mContentToRecord:I

    .line 421
    :cond_1
    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    .line 422
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ContentRecordingSession$Builder;->mTokenToRecord:Landroid/os/IBinder;

    .line 424
    :cond_2
    new-instance v0, Landroid/view/ContentRecordingSession;

    iget v1, p0, Landroid/view/ContentRecordingSession$Builder;->mDisplayId:I

    iget v2, p0, Landroid/view/ContentRecordingSession$Builder;->mContentToRecord:I

    iget-object v3, p0, Landroid/view/ContentRecordingSession$Builder;->mTokenToRecord:Landroid/os/IBinder;

    invoke-direct {v0, v1, v2, v3}, Landroid/view/ContentRecordingSession;-><init>(IILandroid/os/IBinder;)V

    .line 428
    .local v0, "o":Landroid/view/ContentRecordingSession;
    return-object v0
.end method

.method public blacklist setContentToRecord(I)Landroid/view/ContentRecordingSession$Builder;
    .locals 4
    .param p1, "value"    # I

    .line 389
    invoke-direct {p0}, Landroid/view/ContentRecordingSession$Builder;->checkNotUsed()V

    .line 390
    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    .line 391
    iput p1, p0, Landroid/view/ContentRecordingSession$Builder;->mContentToRecord:I

    .line 392
    return-object p0
.end method

.method public blacklist setDisplayId(I)Landroid/view/ContentRecordingSession$Builder;
    .locals 4
    .param p1, "value"    # I

    .line 378
    invoke-direct {p0}, Landroid/view/ContentRecordingSession$Builder;->checkNotUsed()V

    .line 379
    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    .line 380
    iput p1, p0, Landroid/view/ContentRecordingSession$Builder;->mDisplayId:I

    .line 381
    return-object p0
.end method

.method public blacklist setTokenToRecord(Landroid/os/IBinder;)Landroid/view/ContentRecordingSession$Builder;
    .locals 4
    .param p1, "value"    # Landroid/os/IBinder;

    .line 404
    invoke-direct {p0}, Landroid/view/ContentRecordingSession$Builder;->checkNotUsed()V

    .line 405
    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    .line 406
    iput-object p1, p0, Landroid/view/ContentRecordingSession$Builder;->mTokenToRecord:Landroid/os/IBinder;

    .line 407
    return-object p0
.end method
