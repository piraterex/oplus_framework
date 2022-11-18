.class public final Lcom/android/internal/content/F2fsUtils;
.super Ljava/lang/Object;
.source "F2fsUtils.java"


# static fields
.field private static final blacklist COMPRESSION_FEATURE:Ljava/lang/String; = "compression"

.field private static final blacklist DEBUG_F2FS:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "F2fsUtils"

.field private static final blacklist sDataDirectory:Ljava/io/File;

.field private static final blacklist sKernelCompressionAvailable:Z

.field private static final blacklist sKernelFeatures:Ljava/io/File;

.field private static final blacklist sUserDataCompressionAvailable:Z

.field private static final blacklist sUserDataFeatures:Ljava/io/File;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/fs/f2fs/features"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/content/F2fsUtils;->sKernelFeatures:Ljava/io/File;

    .line 44
    new-instance v0, Ljava/io/File;

    const-string v1, "/dev/sys/fs/by-name/userdata/features"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/content/F2fsUtils;->sUserDataFeatures:Ljava/io/File;

    .line 46
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/android/internal/content/F2fsUtils;->sDataDirectory:Ljava/io/File;

    .line 54
    invoke-static {}, Lcom/android/internal/content/F2fsUtils;->isCompressionEnabledInKernel()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/content/F2fsUtils;->sKernelCompressionAvailable:Z

    .line 55
    nop

    .line 60
    invoke-static {}, Lcom/android/internal/content/F2fsUtils;->isCompressionEnabledOnUserData()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/content/F2fsUtils;->sUserDataCompressionAvailable:Z

    .line 61
    nop

    .line 66
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getFilesRecursive(Ljava/io/File;)Ljava/util/List;
    .locals 6
    .param p0, "path"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 262
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 263
    .local v0, "allFiles":[Ljava/io/File;
    if-nez v0, :cond_0

    .line 264
    const/4 v1, 0x0

    return-object v1

    .line 266
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 268
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 269
    invoke-static {v4}, Lcom/android/internal/content/F2fsUtils;->getFilesRecursive(Ljava/io/File;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 270
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 271
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    .end local v4    # "f":Ljava/io/File;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 274
    :cond_3
    return-object v1
.end method

.method private static blacklist getFilesToRelease(Ljava/io/File;)[Ljava/io/File;
    .locals 3
    .param p0, "codePath"    # Ljava/io/File;

    .line 281
    invoke-static {p0}, Lcom/android/internal/content/F2fsUtils;->getFilesRecursive(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    .line 282
    .local v0, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 283
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 284
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/File;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    return-object v1

    .line 286
    :cond_0
    return-object v1

    .line 288
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 289
    return-object v1

    .line 291
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/io/File;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/io/File;

    return-object v1
.end method

.method private static blacklist isChild(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3
    .param p0, "base"    # Ljava/io/File;
    .param p1, "childPath"    # Ljava/lang/String;

    .line 166
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    move-object p0, v1

    .line 168
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    .line 169
    .local v1, "parentFile":Ljava/io/File;
    :goto_0
    if-eqz v1, :cond_1

    .line 170
    invoke-virtual {p0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    const/4 v0, 0x1

    return v0

    .line 173
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 175
    :cond_1
    return v0

    .line 176
    .end local v1    # "parentFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 177
    .local v1, "ignore":Ljava/io/IOException;
    return v0
.end method

.method private static blacklist isCompressionAllowed(Ljava/io/File;)Z
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .line 136
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .local v1, "filePath":Ljava/lang/String;
    nop

    .line 143
    invoke-static {v1}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    return v0

    .line 149
    :cond_0
    sget-object v2, Lcom/android/internal/content/F2fsUtils;->sDataDirectory:Ljava/io/File;

    invoke-static {v2, v1}, Lcom/android/internal/content/F2fsUtils;->isChild(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 153
    return v0

    .line 158
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 137
    .end local v1    # "filePath":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Ljava/io/IOException;
    return v0
.end method

.method private static blacklist isCompressionEnabledInKernel()Z
    .locals 7

    .line 189
    sget-object v0, Lcom/android/internal/content/F2fsUtils;->sKernelFeatures:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 190
    .local v0, "features":[Ljava/io/File;
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_1

    .line 196
    :cond_0
    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 197
    aget-object v4, v0, v2

    .line 198
    .local v4, "feature":Ljava/io/File;
    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "compression"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 202
    return v3

    .line 196
    .end local v4    # "feature":Ljava/io/File;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 208
    .end local v2    # "i":I
    :cond_2
    return v1

    .line 194
    :cond_3
    :goto_1
    return v1
.end method

.method private static blacklist isCompressionEnabledOnUserData()Z
    .locals 7

    .line 218
    sget-object v0, Lcom/android/internal/content/F2fsUtils;->sUserDataFeatures:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 219
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 220
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 228
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .local v0, "configLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 235
    if-eqz v0, :cond_4

    .line 236
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-gt v1, v3, :cond_4

    .line 237
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 243
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, "features":[Ljava/lang/String;
    array-length v4, v1

    sub-int/2addr v4, v3

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_3

    .line 245
    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "compression"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 249
    return v3

    .line 244
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 255
    .end local v4    # "i":I
    :cond_3
    return v2

    .line 241
    .end local v1    # "features":[Ljava/lang/String;
    :cond_4
    :goto_1
    return v2

    .line 229
    .end local v0    # "configLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 233
    .local v0, "ignore":Ljava/io/IOException;
    return v2

    .line 224
    .end local v0    # "ignore":Ljava/io/IOException;
    :cond_5
    :goto_2
    return v2
.end method

.method private static native blacklist nativeReleaseCompressedBlocks(Ljava/lang/String;)J
.end method

.method public static blacklist releaseCompressedBlocks(Landroid/content/ContentResolver;Ljava/io/File;)V
    .locals 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "file"    # Ljava/io/File;

    .line 86
    sget-boolean v0, Lcom/android/internal/content/F2fsUtils;->sKernelCompressionAvailable:Z

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/android/internal/content/F2fsUtils;->sUserDataCompressionAvailable:Z

    if-nez v0, :cond_0

    goto :goto_3

    .line 95
    :cond_0
    nop

    .line 96
    const-string/jumbo v0, "release_compress_blocks_on_install"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 97
    .local v0, "releaseCompressBlocks":Z
    :goto_0
    if-nez v0, :cond_2

    .line 101
    return-void

    .line 103
    :cond_2
    invoke-static {p1}, Lcom/android/internal/content/F2fsUtils;->isCompressionAllowed(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 107
    return-void

    .line 109
    :cond_3
    invoke-static {p1}, Lcom/android/internal/content/F2fsUtils;->getFilesToRelease(Ljava/io/File;)[Ljava/io/File;

    move-result-object v2

    .line 110
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_6

    array-length v3, v2

    if-nez v3, :cond_4

    goto :goto_2

    .line 116
    :cond_4
    array-length v3, v2

    sub-int/2addr v3, v1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_5

    .line 117
    aget-object v1, v2, v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/content/F2fsUtils;->nativeReleaseCompressedBlocks(Ljava/lang/String;)J

    .line 116
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 123
    .end local v3    # "i":I
    :cond_5
    return-void

    .line 114
    :cond_6
    :goto_2
    return-void

    .line 87
    .end local v0    # "releaseCompressBlocks":Z
    .end local v2    # "files":[Ljava/io/File;
    :cond_7
    :goto_3
    return-void
.end method
