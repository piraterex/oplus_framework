.class public final Lcom/android/internal/os/ProcStatsUtil;
.super Ljava/lang/Object;
.source "ProcStatsUtil.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist READ_SIZE:I = 0x400

.field private static final blacklist TAG:Ljava/lang/String; = "ProcStatsUtil"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static blacklist readNullSeparatedFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .line 59
    invoke-static {p0}, Lcom/android/internal/os/ProcStatsUtil;->readSingleLineProcFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "contents":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 61
    const/4 v1, 0x0

    return-object v1

    .line 66
    :cond_0
    const-string v1, "\u0000\u0000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 67
    .local v1, "endIndex":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 68
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 72
    :cond_1
    const-string v2, "\u0000"

    const-string v3, " "

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist readSingleLineProcFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 84
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/android/internal/os/ProcStatsUtil;->readTerminatedProcFile(Ljava/lang/String;B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist readTerminatedProcFile(Ljava/lang/String;B)Ljava/lang/String;
    .locals 10
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "terminator"    # B

    .line 98
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 99
    .local v0, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 100
    .local v1, "is":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 101
    .local v2, "byteStream":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x400

    :try_start_1
    new-array v4, v3, [B

    .line 104
    .local v4, "buffer":[B
    :goto_0
    invoke-virtual {v1, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .line 105
    .local v5, "len":I
    if-gtz v5, :cond_0

    .line 107
    goto :goto_5

    .line 111
    :cond_0
    const/4 v6, -0x1

    .line 112
    .local v6, "terminatingIndex":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v5, :cond_2

    .line 113
    aget-byte v8, v4, v7

    if-ne v8, p1, :cond_1

    .line 114
    move v6, v7

    .line 115
    goto :goto_2

    .line 112
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 118
    .end local v7    # "i":I
    :cond_2
    :goto_2
    const/4 v7, -0x1

    const/4 v8, 0x0

    if-eq v6, v7, :cond_3

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    move v7, v8

    .line 122
    .local v7, "foundTerminator":Z
    :goto_3
    if-eqz v7, :cond_4

    if-nez v2, :cond_4

    .line 123
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4, v8, v6}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 151
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 123
    return-object v3

    .line 127
    :cond_4
    if-nez v2, :cond_5

    .line 128
    :try_start_3
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v2, v9

    .line 132
    :cond_5
    if-eqz v7, :cond_6

    move v9, v6

    goto :goto_4

    :cond_6
    move v9, v5

    :goto_4
    invoke-virtual {v2, v4, v8, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 135
    if-eqz v7, :cond_8

    .line 136
    nop

    .line 141
    .end local v5    # "len":I
    .end local v6    # "terminatingIndex":I
    .end local v7    # "foundTerminator":Z
    :goto_5
    if-nez v2, :cond_7

    .line 142
    const-string v3, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 151
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 142
    return-object v3

    .line 144
    :cond_7
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 145
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 151
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 144
    return-object v3

    .line 138
    :cond_8
    goto :goto_0

    .line 99
    .end local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "buffer":[B
    :catchall_0
    move-exception v2

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v3

    :try_start_8
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local p0    # "path":Ljava/lang/String;
    .end local p1    # "terminator":B
    :goto_6
    throw v2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 151
    .end local v1    # "is":Ljava/io/FileInputStream;
    .restart local v0    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local p0    # "path":Ljava/lang/String;
    .restart local p1    # "terminator":B
    :catchall_2
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 152
    throw v1

    .line 145
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    .line 151
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 149
    return-object v2
.end method
