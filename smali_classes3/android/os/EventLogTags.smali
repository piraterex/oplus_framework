.class public Landroid/os/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# static fields
.field public static final greylist-max-o SERVICE_MANAGER_SLOW:I = 0x38271

.field public static final greylist-max-o SERVICE_MANAGER_STATS:I = 0x38270


# direct methods
.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o writeServiceManagerSlow(ILjava/lang/String;)V
    .locals 3
    .param p0, "time"    # I
    .param p1, "service"    # Ljava/lang/String;

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const v1, 0x38271

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 25
    return-void
.end method

.method public static greylist-max-o writeServiceManagerStats(III)V
    .locals 3
    .param p0, "callCount"    # I
    .param p1, "totalTime"    # I
    .param p2, "duration"    # I

    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0x38270

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 21
    return-void
.end method
