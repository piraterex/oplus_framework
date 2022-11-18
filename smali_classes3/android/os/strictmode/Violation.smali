.class public abstract Landroid/os/strictmode/Violation;
.super Ljava/lang/Throwable;
.source "Violation.java"


# instance fields
.field private blacklist mHashCode:I

.field private blacklist mHashCodeValid:Z


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 25
    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method private static blacklist calcStackTraceHashCode([Ljava/lang/StackTraceElement;)I
    .locals 4
    .param p0, "stackTrace"    # [Ljava/lang/StackTraceElement;

    .line 65
    const/16 v0, 0x11

    .line 66
    .local v0, "hashCode":I
    if-eqz p0, :cond_1

    .line 67
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 68
    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    .line 69
    mul-int/lit8 v2, v0, 0x25

    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->hashCode()I

    move-result v3

    add-int v0, v2, v3

    .line 67
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    .end local v1    # "i":I
    :cond_1
    return v0
.end method


# virtual methods
.method public declared-synchronized whitelist test-api fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    monitor-enter p0

    .line 60
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/os/strictmode/Violation;->mHashCodeValid:Z

    .line 61
    invoke-super {p0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 59
    .end local p0    # "this":Landroid/os/strictmode/Violation;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .locals 5

    .line 30
    monitor-enter p0

    .line 31
    :try_start_0
    iget-boolean v0, p0, Landroid/os/strictmode/Violation;->mHashCodeValid:Z

    if-eqz v0, :cond_0

    .line 32
    iget v0, p0, Landroid/os/strictmode/Violation;->mHashCode:I

    monitor-exit p0

    return v0

    .line 34
    :cond_0
    invoke-virtual {p0}, Landroid/os/strictmode/Violation;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "message":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/strictmode/Violation;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 36
    .local v1, "cause":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 37
    .local v2, "hashCode":I
    :goto_0
    mul-int/lit8 v3, v2, 0x25

    invoke-virtual {p0}, Landroid/os/strictmode/Violation;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-static {v4}, Landroid/os/strictmode/Violation;->calcStackTraceHashCode([Ljava/lang/StackTraceElement;)I

    move-result v4

    add-int/2addr v3, v4

    .line 38
    .end local v2    # "hashCode":I
    .local v3, "hashCode":I
    mul-int/lit8 v2, v3, 0x25

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    add-int/2addr v2, v4

    .line 39
    .end local v3    # "hashCode":I
    .restart local v2    # "hashCode":I
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/os/strictmode/Violation;->mHashCodeValid:Z

    .line 40
    iput v2, p0, Landroid/os/strictmode/Violation;->mHashCode:I

    monitor-exit p0

    return v2

    .line 41
    .end local v0    # "message":Ljava/lang/String;
    .end local v1    # "cause":Ljava/lang/Throwable;
    .end local v2    # "hashCode":I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized whitelist test-api initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    monitor-enter p0

    .line 46
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/os/strictmode/Violation;->mHashCodeValid:Z

    .line 47
    invoke-super {p0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 45
    .end local p0    # "this":Landroid/os/strictmode/Violation;
    .end local p1    # "cause":Ljava/lang/Throwable;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist test-api setStackTrace([Ljava/lang/StackTraceElement;)V
    .locals 1
    .param p1, "stackTrace"    # [Ljava/lang/StackTraceElement;

    .line 52
    invoke-super {p0, p1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 53
    monitor-enter p0

    .line 54
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/os/strictmode/Violation;->mHashCodeValid:Z

    .line 55
    monitor-exit p0

    .line 56
    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
