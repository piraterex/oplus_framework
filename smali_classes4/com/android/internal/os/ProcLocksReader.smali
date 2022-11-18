.class public Lcom/android/internal/os/ProcLocksReader;
.super Ljava/lang/Object;
.source "ProcLocksReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ProcLocksReader$ProcLocksReaderCallback;
    }
.end annotation


# instance fields
.field private final blacklist mPath:Ljava/lang/String;

.field private blacklist mReader:Lcom/android/internal/util/ProcFileReader;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    .line 40
    const-string v0, "/proc/locks"

    iput-object v0, p0, Lcom/android/internal/os/ProcLocksReader;->mPath:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    .line 44
    iput-object p1, p0, Lcom/android/internal/os/ProcLocksReader;->mPath:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public blacklist handleBlockingFileLocks(Lcom/android/internal/os/ProcLocksReader$ProcLocksReaderCallback;)V
    .locals 7
    .param p1, "callback"    # Lcom/android/internal/os/ProcLocksReader$ProcLocksReaderCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    const-wide/16 v0, -0x1

    .line 67
    .local v0, "last":J
    const/4 v2, -0x1

    .line 68
    .local v2, "owner":I
    const/4 v3, -0x1

    .line 70
    .local v3, "pid":I
    iget-object v4, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    if-nez v4, :cond_0

    .line 71
    new-instance v4, Lcom/android/internal/util/ProcFileReader;

    new-instance v5, Ljava/io/FileInputStream;

    iget-object v6, p0, Lcom/android/internal/os/ProcLocksReader;->mPath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V

    iput-object v4, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->rewind()V

    .line 76
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 77
    iget-object v4, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/internal/util/ProcFileReader;->nextLong(Z)J

    move-result-wide v4

    .line 78
    .local v4, "id":J
    cmp-long v6, v4, v0

    if-nez v6, :cond_2

    .line 79
    iget-object v6, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v6}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    .line 80
    if-gez v3, :cond_1

    .line 81
    move v3, v2

    .line 82
    invoke-interface {p1, v3}, Lcom/android/internal/os/ProcLocksReader$ProcLocksReaderCallback;->onBlockingFileLock(I)V

    goto :goto_0

    .line 86
    :cond_2
    const/4 v3, -0x1

    .line 89
    iget-object v6, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v6}, Lcom/android/internal/util/ProcFileReader;->nextIgnored()V

    .line 90
    iget-object v6, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v6}, Lcom/android/internal/util/ProcFileReader;->nextIgnored()V

    .line 91
    iget-object v6, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v6}, Lcom/android/internal/util/ProcFileReader;->nextIgnored()V

    .line 93
    iget-object v6, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v6}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v2

    .line 94
    iget-object v6, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v6}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    .line 95
    move-wide v0, v4

    goto :goto_0

    .line 97
    .end local v4    # "id":J
    :cond_3
    return-void
.end method
