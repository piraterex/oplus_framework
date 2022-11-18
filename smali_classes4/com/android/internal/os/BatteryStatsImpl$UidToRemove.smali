.class public final Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UidToRemove"
.end annotation


# instance fields
.field private final blacklist mEndUid:I

.field private final blacklist mStartUid:I

.field private final blacklist mUidRemovalTimestamp:J

.field final synthetic blacklist this$0:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsImpl;IIJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "startUid"    # I
    .param p3, "endUid"    # I
    .param p4, "timestamp"    # J

    .line 339
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->mStartUid:I

    .line 341
    iput p3, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->mEndUid:I

    .line 342
    iput-wide p4, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->mUidRemovalTimestamp:J

    .line 343
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsImpl;IJ)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "uid"    # I
    .param p3, "timestamp"    # J

    .line 335
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;-><init>(Lcom/android/internal/os/BatteryStatsImpl;IIJ)V

    .line 336
    return-void
.end method


# virtual methods
.method public blacklist getUidRemovalTimestamp()J
    .locals 2

    .line 346
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->mUidRemovalTimestamp:J

    return-wide v0
.end method

.method blacklist removeLocked()V
    .locals 3

    .line 351
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->mStartUid:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->mEndUid:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$mremoveCpuStatsForUidRangeLocked(Lcom/android/internal/os/BatteryStatsImpl;II)V

    .line 352
    return-void
.end method
