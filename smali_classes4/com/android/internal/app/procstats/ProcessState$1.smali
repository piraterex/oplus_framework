.class Lcom/android/internal/app/procstats/ProcessState$1;
.super Ljava/lang/Object;
.source "ProcessState.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/procstats/ProcessState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/internal/app/procstats/ProcessState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compare(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/internal/app/procstats/ProcessState;)I
    .locals 4
    .param p1, "lhs"    # Lcom/android/internal/app/procstats/ProcessState;
    .param p2, "rhs"    # Lcom/android/internal/app/procstats/ProcessState;

    .line 109
    invoke-static {p1}, Lcom/android/internal/app/procstats/ProcessState;->-$$Nest$fgetmTmpTotalTime(Lcom/android/internal/app/procstats/ProcessState;)J

    move-result-wide v0

    invoke-static {p2}, Lcom/android/internal/app/procstats/ProcessState;->-$$Nest$fgetmTmpTotalTime(Lcom/android/internal/app/procstats/ProcessState;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 110
    const/4 v0, -0x1

    return v0

    .line 111
    :cond_0
    invoke-static {p1}, Lcom/android/internal/app/procstats/ProcessState;->-$$Nest$fgetmTmpTotalTime(Lcom/android/internal/app/procstats/ProcessState;)J

    move-result-wide v0

    invoke-static {p2}, Lcom/android/internal/app/procstats/ProcessState;->-$$Nest$fgetmTmpTotalTime(Lcom/android/internal/app/procstats/ProcessState;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 112
    const/4 v0, 0x1

    return v0

    .line 114
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 106
    check-cast p1, Lcom/android/internal/app/procstats/ProcessState;

    check-cast p2, Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/procstats/ProcessState$1;->compare(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/internal/app/procstats/ProcessState;)I

    move-result p1

    return p1
.end method
