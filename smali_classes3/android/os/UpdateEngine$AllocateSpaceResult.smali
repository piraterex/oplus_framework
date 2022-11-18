.class public final Landroid/os/UpdateEngine$AllocateSpaceResult;
.super Ljava/lang/Object;
.source "UpdateEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UpdateEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AllocateSpaceResult"
.end annotation


# instance fields
.field private blacklist mErrorCode:I

.field private blacklist mFreeSpaceRequired:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFreeSpaceRequired(Landroid/os/UpdateEngine$AllocateSpaceResult;)J
    .locals 2

    iget-wide v0, p0, Landroid/os/UpdateEngine$AllocateSpaceResult;->mFreeSpaceRequired:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmErrorCode(Landroid/os/UpdateEngine$AllocateSpaceResult;I)V
    .locals 0

    iput p1, p0, Landroid/os/UpdateEngine$AllocateSpaceResult;->mErrorCode:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFreeSpaceRequired(Landroid/os/UpdateEngine$AllocateSpaceResult;J)V
    .locals 0

    iput-wide p1, p0, Landroid/os/UpdateEngine$AllocateSpaceResult;->mFreeSpaceRequired:J

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 2

    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/UpdateEngine$AllocateSpaceResult;->mErrorCode:I

    .line 517
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/UpdateEngine$AllocateSpaceResult;->mFreeSpaceRequired:J

    .line 518
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/UpdateEngine$AllocateSpaceResult-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/UpdateEngine$AllocateSpaceResult;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist getErrorCode()I
    .locals 1

    .line 533
    iget v0, p0, Landroid/os/UpdateEngine$AllocateSpaceResult;->mErrorCode:I

    return v0
.end method

.method public whitelist getFreeSpaceRequired()J
    .locals 4

    .line 555
    iget v0, p0, Landroid/os/UpdateEngine$AllocateSpaceResult;->mErrorCode:I

    if-nez v0, :cond_0

    .line 556
    const-wide/16 v0, 0x0

    return-wide v0

    .line 558
    :cond_0
    const/16 v1, 0x3c

    if-ne v0, v1, :cond_1

    .line 559
    iget-wide v0, p0, Landroid/os/UpdateEngine$AllocateSpaceResult;->mFreeSpaceRequired:J

    return-wide v0

    .line 561
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Landroid/os/UpdateEngine$AllocateSpaceResult;->mErrorCode:I

    .line 562
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 561
    const-string v2, "getFreeSpaceRequired() is not available when error code is %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
