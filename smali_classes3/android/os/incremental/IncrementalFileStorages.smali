.class public final Landroid/os/incremental/IncrementalFileStorages;
.super Ljava/lang/Object;
.source "IncrementalFileStorages.java"


# static fields
.field private static final blacklist SYSTEM_DATA_LOADER_PACKAGE:Ljava/lang/String; = "android"

.field private static final blacklist TAG:Ljava/lang/String; = "IncrementalFileStorages"


# instance fields
.field private blacklist mDefaultStorage:Landroid/os/incremental/IncrementalStorage;

.field private final blacklist mIncrementalManager:Landroid/os/incremental/IncrementalManager;

.field private blacklist mInheritedStorage:Landroid/os/incremental/IncrementalStorage;

.field private final blacklist mStageDir:Ljava/io/File;


# direct methods
.method private constructor blacklist <init>(Ljava/io/File;Ljava/io/File;Landroid/os/incremental/IncrementalManager;Landroid/content/pm/DataLoaderParams;)V
    .locals 4
    .param p1, "stageDir"    # Ljava/io/File;
    .param p2, "inheritedDir"    # Ljava/io/File;
    .param p3, "incrementalManager"    # Landroid/os/incremental/IncrementalManager;
    .param p4, "dataLoaderParams"    # Landroid/content/pm/DataLoaderParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    :try_start_0
    iput-object p1, p0, Landroid/os/incremental/IncrementalFileStorages;->mStageDir:Ljava/io/File;

    .line 115
    iput-object p3, p0, Landroid/os/incremental/IncrementalFileStorages;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    .line 116
    const/4 v0, 0x5

    if-eqz p2, :cond_3

    .line 117
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-static {v1}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 118
    nop

    .line 119
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-virtual {p3, v1}, Landroid/os/incremental/IncrementalManager;->openStorage(Ljava/lang/String;)Landroid/os/incremental/IncrementalStorage;

    move-result-object v1

    iput-object v1, p0, Landroid/os/incremental/IncrementalFileStorages;->mInheritedStorage:Landroid/os/incremental/IncrementalStorage;

    .line 120
    if-eqz v1, :cond_3

    .line 121
    const-string v1, "android"

    .line 122
    invoke-virtual {p4}, Landroid/content/pm/DataLoaderParams;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 123
    .local v1, "systemDataLoader":Z
    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/os/incremental/IncrementalFileStorages;->mInheritedStorage:Landroid/os/incremental/IncrementalStorage;

    invoke-virtual {v2}, Landroid/os/incremental/IncrementalStorage;->isFullyLoaded()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Inherited storage has missing pages."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/incremental/IncrementalFileStorages;
    .end local p1    # "stageDir":Ljava/io/File;
    .end local p2    # "inheritedDir":Ljava/io/File;
    .end local p3    # "incrementalManager":Landroid/os/incremental/IncrementalManager;
    .end local p4    # "dataLoaderParams":Landroid/content/pm/DataLoaderParams;
    throw v0

    .line 128
    .restart local p0    # "this":Landroid/os/incremental/IncrementalFileStorages;
    .restart local p1    # "stageDir":Ljava/io/File;
    .restart local p2    # "inheritedDir":Ljava/io/File;
    .restart local p3    # "incrementalManager":Landroid/os/incremental/IncrementalManager;
    .restart local p4    # "dataLoaderParams":Landroid/content/pm/DataLoaderParams;
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/os/incremental/IncrementalFileStorages;->mInheritedStorage:Landroid/os/incremental/IncrementalStorage;

    invoke-virtual {p3, v2, v3, v0}, Landroid/os/incremental/IncrementalManager;->createStorage(Ljava/lang/String;Landroid/os/incremental/IncrementalStorage;I)Landroid/os/incremental/IncrementalStorage;

    move-result-object v0

    iput-object v0, p0, Landroid/os/incremental/IncrementalFileStorages;->mDefaultStorage:Landroid/os/incremental/IncrementalStorage;

    .line 131
    if-eqz v0, :cond_2

    .line 135
    return-void

    .line 132
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t create linked incremental storage at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/incremental/IncrementalFileStorages;
    .end local p1    # "stageDir":Ljava/io/File;
    .end local p2    # "inheritedDir":Ljava/io/File;
    .end local p3    # "incrementalManager":Landroid/os/incremental/IncrementalManager;
    .end local p4    # "dataLoaderParams":Landroid/content/pm/DataLoaderParams;
    throw v0

    .line 139
    .end local v1    # "systemDataLoader":Z
    .restart local p0    # "this":Landroid/os/incremental/IncrementalFileStorages;
    .restart local p1    # "stageDir":Ljava/io/File;
    .restart local p2    # "inheritedDir":Ljava/io/File;
    .restart local p3    # "incrementalManager":Landroid/os/incremental/IncrementalManager;
    .restart local p4    # "dataLoaderParams":Landroid/content/pm/DataLoaderParams;
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1, p4, v0}, Landroid/os/incremental/IncrementalManager;->createStorage(Ljava/lang/String;Landroid/content/pm/DataLoaderParams;I)Landroid/os/incremental/IncrementalStorage;

    move-result-object v0

    iput-object v0, p0, Landroid/os/incremental/IncrementalFileStorages;->mDefaultStorage:Landroid/os/incremental/IncrementalStorage;

    .line 142
    if-eqz v0, :cond_4

    .line 149
    nop

    .line 150
    return-void

    .line 143
    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t create incremental storage at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/incremental/IncrementalFileStorages;
    .end local p1    # "stageDir":Ljava/io/File;
    .end local p2    # "inheritedDir":Ljava/io/File;
    .end local p3    # "incrementalManager":Landroid/os/incremental/IncrementalManager;
    .end local p4    # "dataLoaderParams":Landroid/content/pm/DataLoaderParams;
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .restart local p0    # "this":Landroid/os/incremental/IncrementalFileStorages;
    .restart local p1    # "stageDir":Ljava/io/File;
    .restart local p2    # "inheritedDir":Ljava/io/File;
    .restart local p3    # "incrementalManager":Landroid/os/incremental/IncrementalManager;
    .restart local p4    # "dataLoaderParams":Landroid/content/pm/DataLoaderParams;
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0}, Landroid/os/incremental/IncrementalFileStorages;->cleanUp()Landroid/os/incremental/IncrementalStorage;

    .line 148
    throw v0
.end method

.method private blacklist addApkFile(Landroid/content/pm/InstallationFileParcel;)V
    .locals 10
    .param p1, "apk"    # Landroid/content/pm/InstallationFileParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    iget-object v8, p1, Landroid/content/pm/InstallationFileParcel;->name:Ljava/lang/String;

    .line 154
    .local v8, "apkName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/os/incremental/IncrementalFileStorages;->mStageDir:Ljava/io/File;

    invoke-direct {v0, v1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v9, v0

    .line 155
    .local v9, "targetFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Landroid/os/incremental/IncrementalFileStorages;->mDefaultStorage:Landroid/os/incremental/IncrementalStorage;

    iget-wide v2, p1, Landroid/content/pm/InstallationFileParcel;->size:J

    const/4 v4, 0x0

    iget-object v5, p1, Landroid/content/pm/InstallationFileParcel;->metadata:[B

    iget-object v6, p1, Landroid/content/pm/InstallationFileParcel;->signature:[B

    const/4 v7, 0x0

    move-object v1, v8

    invoke-virtual/range {v0 .. v7}, Landroid/os/incremental/IncrementalStorage;->makeFile(Ljava/lang/String;JLjava/util/UUID;[B[B[B)V

    .line 158
    :cond_0
    return-void
.end method

.method private blacklist cleanUp()Landroid/os/incremental/IncrementalStorage;
    .locals 3

    .line 216
    iget-object v0, p0, Landroid/os/incremental/IncrementalFileStorages;->mDefaultStorage:Landroid/os/incremental/IncrementalStorage;

    .line 217
    .local v0, "defaultStorage":Landroid/os/incremental/IncrementalStorage;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/incremental/IncrementalFileStorages;->mInheritedStorage:Landroid/os/incremental/IncrementalStorage;

    .line 218
    iput-object v1, p0, Landroid/os/incremental/IncrementalFileStorages;->mDefaultStorage:Landroid/os/incremental/IncrementalStorage;

    .line 219
    if-nez v0, :cond_0

    .line 220
    return-object v1

    .line 224
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/incremental/IncrementalFileStorages;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    iget-object v2, p0, Landroid/os/incremental/IncrementalFileStorages;->mStageDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/incremental/IncrementalManager;->unregisterLoadingProgressCallbacks(Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Landroid/os/incremental/IncrementalFileStorages;->mStageDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/incremental/IncrementalStorage;->unBind(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    goto :goto_0

    .line 226
    :catch_0
    move-exception v1

    .line 228
    :goto_0
    return-object v0
.end method

.method public static blacklist initialize(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Landroid/content/pm/DataLoaderParams;Landroid/content/pm/IDataLoaderStatusListener;Landroid/os/incremental/StorageHealthCheckParams;Landroid/os/incremental/IStorageHealthListener;Ljava/util/List;[Landroid/os/incremental/PerUidReadTimeouts;Landroid/content/pm/IPackageLoadingProgressCallback;)Landroid/os/incremental/IncrementalFileStorages;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stageDir"    # Ljava/io/File;
    .param p2, "inheritedDir"    # Ljava/io/File;
    .param p3, "dataLoaderParams"    # Landroid/content/pm/DataLoaderParams;
    .param p4, "statusListener"    # Landroid/content/pm/IDataLoaderStatusListener;
    .param p5, "healthCheckParams"    # Landroid/os/incremental/StorageHealthCheckParams;
    .param p6, "healthListener"    # Landroid/os/incremental/IStorageHealthListener;
    .param p8, "perUidReadTimeouts"    # [Landroid/os/incremental/PerUidReadTimeouts;
    .param p9, "progressCallback"    # Landroid/content/pm/IPackageLoadingProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Landroid/content/pm/DataLoaderParams;",
            "Landroid/content/pm/IDataLoaderStatusListener;",
            "Landroid/os/incremental/StorageHealthCheckParams;",
            "Landroid/os/incremental/IStorageHealthListener;",
            "Ljava/util/List<",
            "Landroid/content/pm/InstallationFileParcel;",
            ">;[",
            "Landroid/os/incremental/PerUidReadTimeouts;",
            "Landroid/content/pm/IPackageLoadingProgressCallback;",
            ")",
            "Landroid/os/incremental/IncrementalFileStorages;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    .local p7, "addedFiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFileParcel;>;"
    move-object/from16 v1, p9

    const-string/jumbo v0, "incremental"

    move-object v2, p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/incremental/IncrementalManager;

    .line 80
    .local v3, "incrementalManager":Landroid/os/incremental/IncrementalManager;
    if-eqz v3, :cond_3

    .line 84
    new-instance v0, Landroid/os/incremental/IncrementalFileStorages;

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v12, p3

    invoke-direct {v0, p1, v5, v3, v12}, Landroid/os/incremental/IncrementalFileStorages;-><init>(Ljava/io/File;Ljava/io/File;Landroid/os/incremental/IncrementalManager;Landroid/content/pm/DataLoaderParams;)V

    move-object v13, v0

    .line 86
    .local v13, "result":Landroid/os/incremental/IncrementalFileStorages;
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/InstallationFileParcel;

    .line 87
    .local v6, "file":Landroid/content/pm/InstallationFileParcel;
    iget v7, v6, Landroid/content/pm/InstallationFileParcel;->location:I

    if-nez v7, :cond_0

    .line 89
    :try_start_0
    invoke-direct {v13, v6}, Landroid/os/incremental/IncrementalFileStorages;->addApkFile(Landroid/content/pm/InstallationFileParcel;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    nop

    .line 97
    .end local v6    # "file":Landroid/content/pm/InstallationFileParcel;
    goto :goto_0

    .line 90
    .restart local v6    # "file":Landroid/content/pm/InstallationFileParcel;
    :catch_0
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 91
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to add file to IncFS: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v6, Landroid/content/pm/InstallationFileParcel;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", reason: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 95
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown file location: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Landroid/content/pm/InstallationFileParcel;->location:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    .end local v6    # "file":Landroid/content/pm/InstallationFileParcel;
    :cond_1
    if-eqz v1, :cond_2

    .line 100
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v1}, Landroid/os/incremental/IncrementalManager;->registerLoadingProgressCallback(Ljava/lang/String;Landroid/content/pm/IPackageLoadingProgressCallback;)Z

    .line 103
    :cond_2
    move-object v6, v13

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p8

    invoke-virtual/range {v6 .. v11}, Landroid/os/incremental/IncrementalFileStorages;->startLoading(Landroid/content/pm/DataLoaderParams;Landroid/content/pm/IDataLoaderStatusListener;Landroid/os/incremental/StorageHealthCheckParams;Landroid/os/incremental/IStorageHealthListener;[Landroid/os/incremental/PerUidReadTimeouts;)V

    .line 106
    return-object v13

    .line 81
    .end local v13    # "result":Landroid/os/incremental/IncrementalFileStorages;
    :cond_3
    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v12, p3

    new-instance v0, Ljava/io/IOException;

    const-string v6, "Failed to obtain incrementalManager."

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist cleanUpAndMarkComplete()V
    .locals 1

    .line 209
    invoke-direct {p0}, Landroid/os/incremental/IncrementalFileStorages;->cleanUp()Landroid/os/incremental/IncrementalStorage;

    move-result-object v0

    .line 210
    .local v0, "defaultStorage":Landroid/os/incremental/IncrementalStorage;
    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0}, Landroid/os/incremental/IncrementalStorage;->onInstallationComplete()V

    .line 213
    :cond_0
    return-void
.end method

.method public blacklist disallowReadLogs()V
    .locals 1

    .line 202
    iget-object v0, p0, Landroid/os/incremental/IncrementalFileStorages;->mDefaultStorage:Landroid/os/incremental/IncrementalStorage;

    invoke-virtual {v0}, Landroid/os/incremental/IncrementalStorage;->disallowReadLogs()V

    .line 203
    return-void
.end method

.method public blacklist makeFile(Ljava/lang/String;[B)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Landroid/os/incremental/IncrementalFileStorages;->mDefaultStorage:Landroid/os/incremental/IncrementalStorage;

    array-length v1, p2

    int-to-long v2, v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, Landroid/os/incremental/IncrementalStorage;->makeFile(Ljava/lang/String;JLjava/util/UUID;[B[B[B)V

    .line 181
    return-void
.end method

.method public blacklist makeLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "fromBase"    # Ljava/lang/String;
    .param p3, "toBase"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Landroid/os/incremental/IncrementalFileStorages;->mInheritedStorage:Landroid/os/incremental/IncrementalStorage;

    if-nez v0, :cond_0

    .line 189
    const/4 v0, 0x0

    return v0

    .line 191
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .local v0, "sourcePath":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .local v1, "destPath":Ljava/io/File;
    iget-object v2, p0, Landroid/os/incremental/IncrementalFileStorages;->mInheritedStorage:Landroid/os/incremental/IncrementalStorage;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/os/incremental/IncrementalFileStorages;->mDefaultStorage:Landroid/os/incremental/IncrementalStorage;

    .line 194
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 193
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/incremental/IncrementalStorage;->makeLink(Ljava/lang/String;Landroid/os/incremental/IncrementalStorage;Ljava/lang/String;)V

    .line 195
    const/4 v2, 0x1

    return v2
.end method

.method public blacklist startLoading(Landroid/content/pm/DataLoaderParams;Landroid/content/pm/IDataLoaderStatusListener;Landroid/os/incremental/StorageHealthCheckParams;Landroid/os/incremental/IStorageHealthListener;[Landroid/os/incremental/PerUidReadTimeouts;)V
    .locals 6
    .param p1, "dataLoaderParams"    # Landroid/content/pm/DataLoaderParams;
    .param p2, "statusListener"    # Landroid/content/pm/IDataLoaderStatusListener;
    .param p3, "healthCheckParams"    # Landroid/os/incremental/StorageHealthCheckParams;
    .param p4, "healthListener"    # Landroid/os/incremental/IStorageHealthListener;
    .param p5, "perUidReadTimeouts"    # [Landroid/os/incremental/PerUidReadTimeouts;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Landroid/os/incremental/IncrementalFileStorages;->mDefaultStorage:Landroid/os/incremental/IncrementalStorage;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/os/incremental/IncrementalStorage;->startLoading(Landroid/content/pm/DataLoaderParams;Landroid/content/pm/IDataLoaderStatusListener;Landroid/os/incremental/StorageHealthCheckParams;Landroid/os/incremental/IStorageHealthListener;[Landroid/os/incremental/PerUidReadTimeouts;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    return-void

    .line 171
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to start or restart loading data for Incremental installation."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
