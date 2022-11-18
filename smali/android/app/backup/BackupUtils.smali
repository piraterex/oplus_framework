.class public Landroid/app/backup/BackupUtils;
.super Ljava/lang/Object;
.source "BackupUtils.java"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isFileSpecifiedInPathList(Ljava/io/File;Ljava/util/Collection;)Z
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Collection<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    .local p1, "canonicalPathList":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;

    .line 37
    .local v1, "canonical":Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;
    invoke-virtual {v1}, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, "canonicalPath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .local v3, "fileFromList":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 40
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 42
    invoke-virtual {p0, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 43
    return v5

    .line 47
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/nio/file/Path;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 48
    return v5

    .line 51
    :cond_1
    invoke-virtual {p0, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 53
    return v5

    .line 55
    .end local v1    # "canonical":Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;
    .end local v2    # "canonicalPath":Ljava/lang/String;
    .end local v3    # "fileFromList":Ljava/io/File;
    :cond_2
    goto :goto_0

    .line 56
    :cond_3
    const/4 v0, 0x0

    return v0
.end method
