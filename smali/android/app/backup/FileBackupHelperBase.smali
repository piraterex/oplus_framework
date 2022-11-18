.class Landroid/app/backup/FileBackupHelperBase;
.super Ljava/lang/Object;
.source "FileBackupHelperBase.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "FileBackupHelperBase"


# instance fields
.field greylist-max-o mContext:Landroid/content/Context;

.field greylist-max-o mExceptionLogged:Z

.field greylist-max-o mPtr:J


# direct methods
.method constructor greylist-max-o <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Landroid/app/backup/FileBackupHelperBase;->ctor()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/backup/FileBackupHelperBase;->mPtr:J

    .line 39
    iput-object p1, p0, Landroid/app/backup/FileBackupHelperBase;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method

.method private static native greylist-max-o ctor()J
.end method

.method private static native greylist-max-o dtor(J)V
.end method

.method static greylist-max-o performBackup_checked(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p0, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p2, "newState"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "files"    # [Ljava/lang/String;
    .param p4, "keys"    # [Ljava/lang/String;

    .line 56
    array-length v0, p3

    if-nez v0, :cond_0

    .line 57
    return-void

    .line 60
    :cond_0
    array-length v0, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p3, v2

    .line 61
    .local v3, "f":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2f

    if-ne v4, v5, :cond_1

    .line 60
    .end local v3    # "f":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    .restart local v3    # "f":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "files must have all absolute paths: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    .end local v3    # "f":Ljava/lang/String;
    :cond_2
    array-length v0, p3

    array-length v1, p4

    if-ne v0, v1, :cond_6

    .line 71
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    move-object v1, v0

    .line 72
    .local v1, "oldStateFd":Ljava/io/FileDescriptor;
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 73
    .local v0, "newStateFd":Ljava/io/FileDescriptor;
    if-eqz v0, :cond_5

    .line 77
    iget-wide v2, p1, Landroid/app/backup/BackupDataOutput;->mBackupWriter:J

    move-object v4, v0

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Landroid/app/backup/FileBackupHelperBase;->performBackup_native(Ljava/io/FileDescriptor;JLjava/io/FileDescriptor;[Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 79
    .local v2, "err":I
    if-nez v2, :cond_4

    .line 83
    return-void

    .line 81
    :cond_4
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Backup failed 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 74
    .end local v2    # "err":I
    :cond_5
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 67
    .end local v0    # "newStateFd":Ljava/io/FileDescriptor;
    .end local v1    # "oldStateFd":Ljava/io/FileDescriptor;
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "files.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " keys.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native greylist-max-o performBackup_native(Ljava/io/FileDescriptor;JLjava/io/FileDescriptor;[Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method private static native greylist-max-o writeFile_native(JLjava/lang/String;J)I
.end method

.method private static native greylist-max-o writeSnapshot_native(JLjava/io/FileDescriptor;)I
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 44
    :try_start_0
    iget-wide v0, p0, Landroid/app/backup/FileBackupHelperBase;->mPtr:J

    invoke-static {v0, v1}, Landroid/app/backup/FileBackupHelperBase;->dtor(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 47
    nop

    .line 48
    return-void

    .line 46
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 47
    throw v0
.end method

.method greylist-max-o isKeyInList(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "list"    # [Ljava/lang/String;

    .line 112
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    .line 113
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 114
    const/4 v0, 0x1

    return v0

    .line 112
    .end local v3    # "s":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    :cond_1
    return v1
.end method

.method greylist-max-o writeFile(Ljava/io/File;Landroid/app/backup/BackupDataInputStream;)Z
    .locals 7
    .param p1, "f"    # Ljava/io/File;
    .param p2, "in"    # Landroid/app/backup/BackupDataInputStream;

    .line 86
    const/4 v0, -0x1

    .line 89
    .local v0, "result":I
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 90
    .local v1, "parent":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 92
    iget-wide v2, p0, Landroid/app/backup/FileBackupHelperBase;->mPtr:J

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p2, Landroid/app/backup/BackupDataInputStream;->mData:Landroid/app/backup/BackupDataInput;

    iget-wide v5, v5, Landroid/app/backup/BackupDataInput;->mBackupReader:J

    invoke-static {v2, v3, v4, v5, v6}, Landroid/app/backup/FileBackupHelperBase;->writeFile_native(JLjava/lang/String;J)I

    move-result v0

    .line 93
    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 95
    iget-boolean v3, p0, Landroid/app/backup/FileBackupHelperBase;->mExceptionLogged:Z

    if-nez v3, :cond_0

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed restoring file \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' for app \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/backup/FileBackupHelperBase;->mContext:Landroid/content/Context;

    .line 97
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' result=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 98
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 96
    const-string v4, "FileBackupHelperBase"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iput-boolean v2, p0, Landroid/app/backup/FileBackupHelperBase;->mExceptionLogged:Z

    .line 102
    :cond_0
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public greylist writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
    .locals 3
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .line 107
    iget-wide v0, p0, Landroid/app/backup/FileBackupHelperBase;->mPtr:J

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/backup/FileBackupHelperBase;->writeSnapshot_native(JLjava/io/FileDescriptor;)I

    move-result v0

    .line 109
    .local v0, "result":I
    return-void
.end method
