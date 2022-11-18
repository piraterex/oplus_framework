.class public Lcom/oplus/os/OplusEnvironment;
.super Ljava/lang/Object;
.source "OplusEnvironment.java"


# static fields
.field public static final whitelist PARENT_STORAGE_DIRECTORY:Ljava/io/File;

.field public static final whitelist SUB_STORAGE_DIRECTORY:Ljava/io/File;

.field private static final blacklist TAG:Ljava/lang/String; = "OplusEnvironment"

.field private static blacklist externalSdDir:Ljava/lang/String;

.field private static blacklist internalSdDir:Ljava/lang/String;

.field private static blacklist mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 103
    const-string v0, "EXTERNAL_STORAGE"

    const-string v1, "/storage/sdcard0"

    invoke-static {v0, v1}, Lcom/oplus/os/OplusEnvironment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/oplus/os/OplusEnvironment;->PARENT_STORAGE_DIRECTORY:Ljava/io/File;

    .line 106
    const-string v0, "INTERNAL_STORAGE"

    const-string v1, "/storage/sdcard0/external_sd"

    invoke-static {v0, v1}, Lcom/oplus/os/OplusEnvironment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/oplus/os/OplusEnvironment;->SUB_STORAGE_DIRECTORY:Ljava/io/File;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "variableName"    # Ljava/lang/String;
    .param p1, "defaultPath"    # Ljava/lang/String;

    .line 113
    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    if-nez v0, :cond_0

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v1
.end method

.method public static whitelist getExternalSdDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 68
    invoke-static {p0}, Lcom/oplus/os/OplusEnvironment;->update(Landroid/content/Context;)V

    .line 69
    sget-object v0, Lcom/oplus/os/OplusEnvironment;->externalSdDir:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/oplus/os/OplusEnvironment;->externalSdDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public static whitelist getExternalSdState(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 84
    invoke-static {p0}, Lcom/oplus/os/OplusEnvironment;->update(Landroid/content/Context;)V

    .line 85
    sget-object v0, Lcom/oplus/os/OplusEnvironment;->externalSdDir:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/oplus/os/OplusEnvironment;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static whitelist getInternalSdDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 60
    invoke-static {p0}, Lcom/oplus/os/OplusEnvironment;->update(Landroid/content/Context;)V

    .line 61
    sget-object v0, Lcom/oplus/os/OplusEnvironment;->internalSdDir:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/oplus/os/OplusEnvironment;->internalSdDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public static whitelist getInternalSdState(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 76
    invoke-static {p0}, Lcom/oplus/os/OplusEnvironment;->update(Landroid/content/Context;)V

    .line 77
    sget-object v0, Lcom/oplus/os/OplusEnvironment;->internalSdDir:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/oplus/os/OplusEnvironment;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static whitelist isExternalSDRemoved(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 92
    invoke-static {p0}, Lcom/oplus/os/OplusEnvironment;->update(Landroid/content/Context;)V

    .line 93
    sget-object v0, Lcom/oplus/os/OplusEnvironment;->externalSdDir:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 94
    const/4 v0, 0x1

    return v0

    .line 96
    :cond_0
    sget-object v1, Lcom/oplus/os/OplusEnvironment;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 97
    invoke-virtual {v1, v0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "removed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 96
    return v0
.end method

.method private static blacklist update(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 37
    const-string/jumbo v0, "storage"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    sput-object v0, Lcom/oplus/os/OplusEnvironment;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 38
    if-nez v0, :cond_0

    .line 39
    return-void

    .line 41
    :cond_0
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 43
    .local v0, "volumes":[Landroid/os/storage/StorageVolume;
    if-nez v0, :cond_1

    .line 44
    return-void

    .line 47
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 48
    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 49
    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/oplus/os/OplusEnvironment;->externalSdDir:Ljava/lang/String;

    goto :goto_1

    .line 51
    :cond_2
    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/oplus/os/OplusEnvironment;->internalSdDir:Ljava/lang/String;

    .line 47
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    .end local v1    # "i":I
    :cond_3
    return-void
.end method
