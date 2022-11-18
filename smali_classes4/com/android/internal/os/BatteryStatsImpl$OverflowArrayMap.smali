.class public abstract Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "OverflowArrayMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final greylist-max-o OVERFLOW_NAME:Ljava/lang/String; = "*overflow*"


# instance fields
.field greylist-max-o mActiveOverflow:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/MutableInt;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mCurOverflow:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field blacklist mLastCleanupTimeMs:J

.field blacklist mLastClearTimeMs:J

.field blacklist mLastOverflowFinishTimeMs:J

.field blacklist mLastOverflowTimeMs:J

.field final greylist-max-o mMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field

.field final greylist-max-o mUid:I

.field final synthetic blacklist this$0:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsImpl;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "uid"    # I

    .line 3520
    .local p0, "this":Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;, "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap<TT;>;"
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3512
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    .line 3521
    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mUid:I

    .line 3522
    return-void
.end method


# virtual methods
.method public greylist-max-o add(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 3536
    .local p0, "this":Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;, "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap<TT;>;"
    .local p2, "obj":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 3537
    const-string p1, ""

    .line 3539
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3540
    const-string v0, "*overflow*"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3541
    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    .line 3543
    :cond_1
    return-void
.end method

.method public blacklist cleanup(J)V
    .locals 5
    .param p1, "elapsedRealtimeMs"    # J

    .line 3546
    .local p0, "this":Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;, "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap<TT;>;"
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastCleanupTimeMs:J

    .line 3547
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3548
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 3549
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    .line 3552
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    const-string v2, "BatteryStatsImpl"

    const-string v3, "*overflow*"

    if-nez v0, :cond_2

    .line 3555
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleaning up with no active overflow, but have overflow entry "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    .line 3557
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3556
    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3558
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3560
    :cond_1
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    goto :goto_0

    .line 3563
    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3564
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cleaning up with active overflow, but no overflow entry: cur="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " map="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    .line 3565
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3564
    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3568
    :cond_4
    :goto_0
    return-void
.end method

.method public greylist-max-o clear()V
    .locals 2

    .line 3529
    .local p0, "this":Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;, "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap<TT;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastClearTimeMs:J

    .line 3530
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 3531
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    .line 3532
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    .line 3533
    return-void
.end method

.method public greylist-max-o getMap()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .line 3525
    .local p0, "this":Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;, "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap<TT;>;"
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public abstract greylist-max-o instantiateObject()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public blacklist startObject(Ljava/lang/String;J)Ljava/lang/Object;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)TT;"
        }
    .end annotation

    .line 3571
    .local p0, "this":Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;, "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap<TT;>;"
    if-nez p1, :cond_0

    .line 3572
    const-string p1, ""

    .line 3574
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3575
    .local v0, "obj":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_1

    .line 3576
    return-object v0

    .line 3581
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    const/4 v2, 0x1

    const-string v3, "*overflow*"

    if-eqz v1, :cond_3

    .line 3582
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/MutableInt;

    .line 3583
    .local v1, "over":Landroid/util/MutableInt;
    if-eqz v1, :cond_3

    .line 3585
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    .line 3586
    if-nez v0, :cond_2

    .line 3588
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Have active overflow "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but null overflow"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BatteryStatsImpl"

    invoke-static {v5, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3589
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->instantiateObject()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    move-object v0, v4

    .line 3590
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3592
    :cond_2
    iget v3, v1, Landroid/util/MutableInt;->value:I

    add-int/2addr v3, v2

    iput v3, v1, Landroid/util/MutableInt;->value:I

    .line 3593
    return-object v0

    .line 3599
    .end local v1    # "over":Landroid/util/MutableInt;
    :cond_3
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 3600
    .local v1, "N":I
    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$sfgetMAX_WAKELOCKS_PER_UID()I

    move-result v4

    if-lt v1, v4, :cond_6

    .line 3603
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    .line 3604
    if-nez v0, :cond_4

    .line 3606
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->instantiateObject()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    move-object v0, v4

    .line 3607
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3609
    :cond_4
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    if-nez v3, :cond_5

    .line 3610
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    .line 3612
    :cond_5
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    new-instance v4, Landroid/util/MutableInt;

    invoke-direct {v4, v2}, Landroid/util/MutableInt;-><init>(I)V

    invoke-virtual {v3, p1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3613
    iput-wide p2, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastOverflowTimeMs:J

    .line 3614
    return-object v0

    .line 3618
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->instantiateObject()Ljava/lang/Object;

    move-result-object v0

    .line 3619
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3620
    return-object v0
.end method

.method public blacklist stopObject(Ljava/lang/String;J)Ljava/lang/Object;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)TT;"
        }
    .end annotation

    .line 3624
    .local p0, "this":Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;, "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap<TT;>;"
    if-nez p1, :cond_0

    .line 3625
    const-string p1, ""

    .line 3627
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3628
    .local v0, "obj":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_1

    .line 3629
    return-object v0

    .line 3634
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    if-eqz v1, :cond_3

    .line 3635
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/MutableInt;

    .line 3636
    .local v1, "over":Landroid/util/MutableInt;
    if-eqz v1, :cond_3

    .line 3638
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    .line 3639
    if-eqz v0, :cond_3

    .line 3640
    iget v2, v1, Landroid/util/MutableInt;->value:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Landroid/util/MutableInt;->value:I

    .line 3641
    iget v2, v1, Landroid/util/MutableInt;->value:I

    if-gtz v2, :cond_2

    .line 3642
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3643
    iput-wide p2, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastOverflowFinishTimeMs:J

    .line 3645
    :cond_2
    return-object v0

    .line 3652
    .end local v1    # "over":Landroid/util/MutableInt;
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3653
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "Unable to find object for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3654
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3655
    const-string v2, " in uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3656
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3657
    const-string v2, " mapsize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3658
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3659
    const-string v2, " activeoverflow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3660
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3661
    const-string v2, " curoverflow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3662
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3663
    move-wide v2, p2

    .line 3664
    .local v2, "now":J
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastOverflowTimeMs:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    .line 3665
    const-string v4, " lastOverflowTime="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3666
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastOverflowTimeMs:J

    sub-long/2addr v4, v2

    invoke-static {v4, v5, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 3668
    :cond_4
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastOverflowFinishTimeMs:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    .line 3669
    const-string v4, " lastOverflowFinishTime="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3670
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastOverflowFinishTimeMs:J

    sub-long/2addr v4, v2

    invoke-static {v4, v5, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 3672
    :cond_5
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastClearTimeMs:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6

    .line 3673
    const-string v4, " lastClearTime="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3674
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastClearTimeMs:J

    sub-long/2addr v4, v2

    invoke-static {v4, v5, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 3676
    :cond_6
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastCleanupTimeMs:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_7

    .line 3677
    const-string v4, " lastCleanupTime="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3678
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastCleanupTimeMs:J

    sub-long/2addr v4, v2

    invoke-static {v4, v5, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 3680
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BatteryStatsImpl"

    invoke-static {v5, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3681
    const/4 v4, 0x0

    return-object v4
.end method
