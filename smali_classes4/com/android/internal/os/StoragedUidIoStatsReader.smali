.class public Lcom/android/internal/os/StoragedUidIoStatsReader;
.super Ljava/lang/Object;
.source "StoragedUidIoStatsReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/StoragedUidIoStatsReader$Callback;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field private static blacklist sUidIoFile:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lcom/android/internal/os/StoragedUidIoStatsReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/StoragedUidIoStatsReader;->TAG:Ljava/lang/String;

    .line 44
    const-string v0, "/proc/uid_io/stats"

    sput-object v0, Lcom/android/internal/os/StoragedUidIoStatsReader;->sUidIoFile:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "file"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sput-object p1, Lcom/android/internal/os/StoragedUidIoStatsReader;->sUidIoFile:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public blacklist readAbsolute(Lcom/android/internal/os/StoragedUidIoStatsReader$Callback;)V
    .locals 31
    .param p1, "callback"    # Lcom/android/internal/os/StoragedUidIoStatsReader$Callback;

    .line 77
    const-string v1, ": "

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReadsMask()I

    move-result v2

    .line 78
    .local v2, "oldMask":I
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/android/internal/os/StoragedUidIoStatsReader;->sUidIoFile:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 79
    .local v3, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;)Ljava/io/BufferedReader;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v4, v0

    .line 81
    .local v4, "reader":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .local v5, "line":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 82
    const-string v0, " "

    invoke-static {v5, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 83
    .local v6, "fields":[Ljava/lang/String;
    array-length v0, v6

    const/16 v7, 0xb

    if-eq v0, v7, :cond_0

    .line 84
    sget-object v0, Lcom/android/internal/os/StoragedUidIoStatsReader;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Malformed entry in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/internal/os/StoragedUidIoStatsReader;->sUidIoFile:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    goto :goto_0

    .line 88
    :cond_0
    const/4 v0, 0x0

    :try_start_2
    aget-object v7, v6, v0

    .line 89
    .local v7, "uidStr":Ljava/lang/String;
    aget-object v0, v6, v0

    const/16 v8, 0xa

    invoke-static {v0, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    .line 90
    .local v10, "uid":I
    const/4 v0, 0x1

    aget-object v0, v6, v0

    invoke-static {v0, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v11

    .line 91
    .local v11, "fgCharsRead":J
    const/4 v0, 0x2

    aget-object v0, v6, v0

    invoke-static {v0, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v13

    .line 92
    .local v13, "fgCharsWrite":J
    const/4 v0, 0x3

    aget-object v0, v6, v0

    invoke-static {v0, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v15

    .line 93
    .local v15, "fgBytesRead":J
    const/4 v0, 0x4

    aget-object v0, v6, v0

    invoke-static {v0, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v17

    .line 94
    .local v17, "fgBytesWrite":J
    const/4 v0, 0x5

    aget-object v0, v6, v0

    invoke-static {v0, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v19

    .line 95
    .local v19, "bgCharsRead":J
    const/4 v0, 0x6

    aget-object v0, v6, v0

    invoke-static {v0, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v21

    .line 96
    .local v21, "bgCharsWrite":J
    const/4 v0, 0x7

    aget-object v0, v6, v0

    invoke-static {v0, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v23

    .line 97
    .local v23, "bgBytesRead":J
    const/16 v0, 0x8

    aget-object v0, v6, v0

    invoke-static {v0, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v25

    .line 98
    .local v25, "bgBytesWrite":J
    const/16 v0, 0x9

    aget-object v0, v6, v0

    invoke-static {v0, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v27

    .line 99
    .local v27, "fgFsync":J
    aget-object v0, v6, v8

    invoke-static {v0, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v29

    .line 100
    .local v29, "bgFsync":J
    move-object/from16 v9, p1

    invoke-interface/range {v9 .. v30}, Lcom/android/internal/os/StoragedUidIoStatsReader$Callback;->onUidStorageStats(IJJJJJJJJJJ)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    .end local v7    # "uidStr":Ljava/lang/String;
    .end local v10    # "uid":I
    .end local v11    # "fgCharsRead":J
    .end local v13    # "fgCharsWrite":J
    .end local v15    # "fgBytesRead":J
    .end local v17    # "fgBytesWrite":J
    .end local v19    # "bgCharsRead":J
    .end local v21    # "bgCharsWrite":J
    .end local v23    # "bgBytesRead":J
    .end local v25    # "bgBytesWrite":J
    .end local v27    # "fgFsync":J
    .end local v29    # "bgFsync":J
    goto :goto_1

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_3
    sget-object v7, Lcom/android/internal/os/StoragedUidIoStatsReader;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not parse entry in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/internal/os/StoragedUidIoStatsReader;->sUidIoFile:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 106
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "fields":[Ljava/lang/String;
    :goto_1
    goto/16 :goto_0

    .line 107
    .end local v5    # "line":Ljava/lang/String;
    :cond_1
    if-eqz v4, :cond_2

    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 110
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :cond_2
    nop

    :goto_2
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 111
    goto :goto_4

    .line 79
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v0

    move-object v5, v0

    if-eqz v4, :cond_3

    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v6, v0

    :try_start_6
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "oldMask":I
    .end local v3    # "file":Ljava/io/File;
    .end local p0    # "this":Lcom/android/internal/os/StoragedUidIoStatsReader;
    .end local p1    # "callback":Lcom/android/internal/os/StoragedUidIoStatsReader$Callback;
    :cond_3
    :goto_3
    throw v5
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 110
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "oldMask":I
    .restart local v3    # "file":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/internal/os/StoragedUidIoStatsReader;
    .restart local p1    # "callback":Lcom/android/internal/os/StoragedUidIoStatsReader$Callback;
    :catchall_2
    move-exception v0

    goto :goto_5

    .line 107
    :catch_1
    move-exception v0

    .line 108
    .local v0, "e":Ljava/io/IOException;
    :try_start_7
    sget-object v4, Lcom/android/internal/os/StoragedUidIoStatsReader;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to read "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/os/StoragedUidIoStatsReader;->sUidIoFile:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 110
    nop

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 112
    :goto_4
    return-void

    .line 110
    :goto_5
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 111
    throw v0
.end method
