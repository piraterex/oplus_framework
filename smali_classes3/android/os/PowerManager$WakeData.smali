.class public Landroid/os/PowerManager$WakeData;
.super Ljava/lang/Object;
.source "PowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WakeData"
.end annotation


# instance fields
.field public final blacklist sleepDuration:J

.field public final blacklist wakeReason:I

.field public final blacklist wakeTime:J


# direct methods
.method public constructor blacklist <init>(JIJ)V
    .locals 0
    .param p1, "wakeTime"    # J
    .param p3, "wakeReason"    # I
    .param p4, "sleepDuration"    # J

    .line 739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 740
    iput-wide p1, p0, Landroid/os/PowerManager$WakeData;->wakeTime:J

    .line 741
    iput p3, p0, Landroid/os/PowerManager$WakeData;->wakeReason:I

    .line 742
    iput-wide p4, p0, Landroid/os/PowerManager$WakeData;->sleepDuration:J

    .line 743
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 750
    instance-of v0, p1, Landroid/os/PowerManager$WakeData;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 751
    move-object v0, p1

    check-cast v0, Landroid/os/PowerManager$WakeData;

    .line 752
    .local v0, "other":Landroid/os/PowerManager$WakeData;
    iget-wide v2, p0, Landroid/os/PowerManager$WakeData;->wakeTime:J

    iget-wide v4, v0, Landroid/os/PowerManager$WakeData;->wakeTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget v2, p0, Landroid/os/PowerManager$WakeData;->wakeReason:I

    iget v3, v0, Landroid/os/PowerManager$WakeData;->wakeReason:I

    if-ne v2, v3, :cond_0

    iget-wide v2, p0, Landroid/os/PowerManager$WakeData;->sleepDuration:J

    iget-wide v4, v0, Landroid/os/PowerManager$WakeData;->sleepDuration:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 755
    .end local v0    # "other":Landroid/os/PowerManager$WakeData;
    :cond_1
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 760
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Landroid/os/PowerManager$WakeData;->wakeTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/os/PowerManager$WakeData;->wakeReason:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/os/PowerManager$WakeData;->sleepDuration:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
