.class Landroid/media/ExifInterfaceUtils;
.super Ljava/lang/Object;
.source "ExifInterfaceUtils.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ExifInterface"


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist byteArrayToHexString([B)Ljava/lang/String;
    .locals 5
    .param p0, "bytes"    # [B

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 92
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 93
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-byte v4, p0, v1

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "%02x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist closeFileDescriptor(Ljava/io/FileDescriptor;)V
    .locals 3
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    .line 130
    :try_start_0
    invoke-static {p0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "ex":Landroid/system/ErrnoException;
    const-string v1, "ExifInterface"

    const-string v2, "Error closing fd."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    .end local v0    # "ex":Landroid/system/ErrnoException;
    :goto_0
    return-void
.end method

.method public static blacklist closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 115
    if-eqz p0, :cond_0

    .line 117
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    goto :goto_0

    .line 118
    :catch_1
    move-exception v0

    .line 119
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 123
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public static blacklist convertToLongArray(Ljava/lang/Object;)[J
    .locals 5
    .param p0, "inputObj"    # Ljava/lang/Object;

    .line 74
    instance-of v0, p0, [I

    if-eqz v0, :cond_1

    .line 75
    move-object v0, p0

    check-cast v0, [I

    .line 76
    .local v0, "input":[I
    array-length v1, v0

    new-array v1, v1, [J

    .line 77
    .local v1, "result":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 78
    aget v3, v0, v2

    int-to-long v3, v3

    aput-wide v3, v1, v2

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 81
    .end local v0    # "input":[I
    .end local v1    # "result":[J
    :cond_1
    instance-of v0, p0, [J

    if-eqz v0, :cond_2

    .line 82
    move-object v0, p0

    check-cast v0, [J

    return-object v0

    .line 84
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, "total":I
    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 43
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "c":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 44
    add-int/2addr v0, v3

    .line 45
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 47
    :cond_0
    return v0
.end method

.method public static blacklist copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "numBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    move v0, p2

    .line 56
    .local v0, "remainder":I
    const/16 v1, 0x2000

    new-array v2, v1, [B

    .line 57
    .local v2, "buffer":[B
    :goto_0
    if-lez v0, :cond_1

    .line 58
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 59
    .local v3, "bytesToRead":I
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 60
    .local v5, "bytesRead":I
    if-ne v5, v3, :cond_0

    .line 64
    sub-int/2addr v0, v5

    .line 65
    invoke-virtual {p1, v2, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 66
    .end local v3    # "bytesToRead":I
    .end local v5    # "bytesRead":I
    goto :goto_0

    .line 61
    .restart local v3    # "bytesToRead":I
    .restart local v5    # "bytesRead":I
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v4, "Failed to copy the given amount of bytes from the inputstream to the output stream."

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    .end local v3    # "bytesToRead":I
    .end local v5    # "bytesRead":I
    :cond_1
    return-void
.end method

.method public static blacklist startsWith([B[B)Z
    .locals 4
    .param p0, "cur"    # [B
    .param p1, "val"    # [B

    .line 102
    const/4 v0, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto :goto_2

    .line 103
    :cond_0
    array-length v1, p0

    array-length v2, p1

    if-ge v1, v2, :cond_1

    return v0

    .line 104
    :cond_1
    array-length v1, p0

    if-eqz v1, :cond_5

    array-length v1, p1

    if-nez v1, :cond_2

    goto :goto_1

    .line 105
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 106
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    if-eq v2, v3, :cond_3

    return v0

    .line 105
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    .end local v1    # "i":I
    :cond_4
    const/4 v0, 0x1

    return v0

    .line 104
    :cond_5
    :goto_1
    return v0

    .line 102
    :cond_6
    :goto_2
    return v0
.end method
