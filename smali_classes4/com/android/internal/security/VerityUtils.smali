.class public abstract Lcom/android/internal/security/VerityUtils;
.super Ljava/lang/Object;
.source "VerityUtils.java"


# static fields
.field public static final blacklist FSVERITY_SIGNATURE_FILE_EXTENSION:Ljava/lang/String; = ".fsv_sig"

.field private static final blacklist HASH_SIZE_BYTES:I = 0x20

.field private static final blacklist MAX_SIGNATURE_FILE_SIZE_BYTES:I = 0x2000

.field private static final blacklist TAG:Ljava/lang/String; = "VerityUtils"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native blacklist enableFsverityNative(Ljava/lang/String;[B)I
.end method

.method public static blacklist getFsverityRootHash(Ljava/lang/String;)[B
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;

    .line 95
    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 96
    .local v0, "result":[B
    invoke-static {p0, v0}, Lcom/android/internal/security/VerityUtils;->measureFsverityNative(Ljava/lang/String;[B)I

    move-result v1

    .line 97
    .local v1, "retval":I
    if-gez v1, :cond_1

    .line 98
    sget v2, Landroid/system/OsConstants;->ENODATA:I

    neg-int v2, v2

    if-eq v1, v2, :cond_0

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to measure fs-verity, errno "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    neg-int v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VerityUtils"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    const/4 v2, 0x0

    return-object v2

    .line 103
    :cond_1
    return-object v0
.end method

.method public static blacklist getFsveritySignatureFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".fsv_sig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist hasFsverity(Ljava/lang/String;)Z
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;

    .line 84
    invoke-static {p0}, Lcom/android/internal/security/VerityUtils;->statxForFsverityNative(Ljava/lang/String;)I

    move-result v0

    .line 85
    .local v0, "retval":I
    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to check whether fs-verity is enabled, errno "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    neg-int v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VerityUtils"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return v1

    .line 90
    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public static blacklist isFsVeritySupported()Z
    .locals 3

    .line 48
    sget v0, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1e

    if-ge v0, v2, :cond_0

    .line 49
    const-string/jumbo v0, "ro.apk_verity.mode"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 48
    :cond_1
    return v1
.end method

.method public static blacklist isFsveritySignatureFile(Ljava/io/File;)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .line 54
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".fsv_sig"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static native blacklist measureFsverityNative(Ljava/lang/String;[B)I
.end method

.method public static blacklist setUpFsverity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "signaturePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v1

    const-wide/16 v3, 0x2000

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 68
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/security/VerityUtils;->setUpFsverity(Ljava/lang/String;[B)V

    .line 69
    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signature file is unexpectedly large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist setUpFsverity(Ljava/lang/String;[B)V
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "pkcs7Signature"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-static {p0, p1}, Lcom/android/internal/security/VerityUtils;->enableFsverityNative(Ljava/lang/String;[B)I

    move-result v0

    .line 76
    .local v0, "errno":I
    if-nez v0, :cond_0

    .line 80
    return-void

    .line 77
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to enable fs-verity on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 78
    invoke-static {v0}, Landroid/system/Os;->strerror(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static native blacklist statxForFsverityNative(Ljava/lang/String;)I
.end method
