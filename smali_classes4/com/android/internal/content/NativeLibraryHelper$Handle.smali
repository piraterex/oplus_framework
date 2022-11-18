.class public Lcom/android/internal/content/NativeLibraryHelper$Handle;
.super Ljava/lang/Object;
.source "NativeLibraryHelper.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/content/NativeLibraryHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Handle"
.end annotation


# instance fields
.field final blacklist apkHandles:[J

.field final blacklist apkPaths:[Ljava/lang/String;

.field final blacklist debuggable:Z

.field final blacklist extractNativeLibs:Z

.field private volatile blacklist mClosed:Z

.field private final blacklist mGuard:Ldalvik/system/CloseGuard;

.field final blacklist multiArch:Z


# direct methods
.method constructor blacklist <init>([Ljava/lang/String;[JZZZ)V
    .locals 2
    .param p1, "apkPaths"    # [Ljava/lang/String;
    .param p2, "apkHandles"    # [J
    .param p3, "multiArch"    # Z
    .param p4, "extractNativeLibs"    # Z
    .param p5, "debuggable"    # Z

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mGuard:Ldalvik/system/CloseGuard;

    .line 138
    iput-object p1, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkPaths:[Ljava/lang/String;

    .line 139
    iput-object p2, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    .line 140
    iput-boolean p3, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->multiArch:Z

    .line 141
    iput-boolean p4, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->extractNativeLibs:Z

    .line 142
    iput-boolean p5, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->debuggable:Z

    .line 143
    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public static blacklist create(Landroid/content/pm/parsing/PackageLite;)Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .locals 4
    .param p0, "lite"    # Landroid/content/pm/parsing/PackageLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getAllApkPaths()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->isMultiArch()Z

    move-result v1

    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->isExtractNativeLibs()Z

    move-result v2

    .line 100
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->isDebuggable()Z

    move-result v3

    .line 99
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/util/List;ZZZ)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist create(Ljava/io/File;)Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .locals 5
    .param p0, "packageFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v0

    .line 89
    .local v0, "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    invoke-virtual {v0}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 91
    .local v1, "ret":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/PackageLite;>;"
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-nez v2, :cond_0

    .line 95
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/PackageLite;

    invoke-static {v2}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Landroid/content/pm/parsing/PackageLite;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v2

    return-object v2

    .line 92
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 93
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static blacklist create(Ljava/util/List;ZZZ)Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .locals 10
    .param p1, "multiArch"    # Z
    .param p2, "extractNativeLibs"    # Z
    .param p3, "debuggable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZZ)",
            "Lcom/android/internal/content/NativeLibraryHelper$Handle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    .local p0, "codePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 106
    .local v0, "size":I
    new-array v7, v0, [Ljava/lang/String;

    .line 107
    .local v7, "apkPaths":[Ljava/lang/String;
    new-array v8, v0, [J

    .line 108
    .local v8, "apkHandles":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 109
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 110
    .local v2, "path":Ljava/lang/String;
    aput-object v2, v7, v1

    .line 111
    invoke-static {v2}, Lcom/android/internal/content/NativeLibraryHelper;->-$$Nest$smnativeOpenApk(Ljava/lang/String;)J

    move-result-wide v3

    aput-wide v3, v8, v1

    .line 112
    aget-wide v3, v8, v1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 114
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 115
    aget-wide v4, v8, v3

    invoke-static {v4, v5}, Lcom/android/internal/content/NativeLibraryHelper;->-$$Nest$smnativeClose(J)V

    .line 114
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 117
    .end local v3    # "j":I
    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to open APK: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 108
    .end local v2    # "path":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    .end local v1    # "i":I
    :cond_2
    new-instance v9, Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-object v1, v9

    move-object v2, v7

    move-object v3, v8

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/content/NativeLibraryHelper$Handle;-><init>([Ljava/lang/String;[JZZZ)V

    return-object v9
.end method

.method public static blacklist createFd(Landroid/content/pm/parsing/PackageLite;Ljava/io/FileDescriptor;)Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .locals 10
    .param p0, "lite"    # Landroid/content/pm/parsing/PackageLite;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    const/4 v0, 0x1

    new-array v7, v0, [J

    .line 126
    .local v7, "apkHandles":[J
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getBaseApkPath()Ljava/lang/String;

    move-result-object v8

    .line 127
    .local v8, "path":Ljava/lang/String;
    invoke-static {p1, v8}, Lcom/android/internal/content/NativeLibraryHelper;->-$$Nest$smnativeOpenApkFd(Ljava/io/FileDescriptor;Ljava/lang/String;)J

    move-result-wide v1

    const/4 v3, 0x0

    aput-wide v1, v7, v3

    .line 128
    aget-wide v1, v7, v3

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-eqz v1, :cond_0

    .line 132
    new-instance v9, Lcom/android/internal/content/NativeLibraryHelper$Handle;

    new-array v2, v0, [Ljava/lang/String;

    aput-object v8, v2, v3

    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->isMultiArch()Z

    move-result v4

    .line 133
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->isExtractNativeLibs()Z

    move-result v5

    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->isDebuggable()Z

    move-result v6

    move-object v1, v9

    move-object v3, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/content/NativeLibraryHelper$Handle;-><init>([Ljava/lang/String;[JZZZ)V

    .line 132
    return-object v9

    .line 129
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to open APK "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from fd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 5

    .line 148
    iget-object v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, v0, v2

    .line 149
    .local v3, "apkHandle":J
    invoke-static {v3, v4}, Lcom/android/internal/content/NativeLibraryHelper;->-$$Nest$smnativeClose(J)V

    .line 148
    .end local v3    # "apkHandle":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mClosed:Z

    .line 153
    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 161
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mClosed:Z

    if-nez v0, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 166
    nop

    .line 167
    return-void

    .line 165
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 166
    throw v0
.end method
