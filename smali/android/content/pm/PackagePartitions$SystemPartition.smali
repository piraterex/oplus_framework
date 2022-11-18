.class public Landroid/content/pm/PackagePartitions$SystemPartition;
.super Ljava/lang/Object;
.source "PackagePartitions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackagePartitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemPartition"
.end annotation


# instance fields
.field private final blacklist mAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

.field private final blacklist mFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mNonConicalFolder:Ljava/io/File;

.field private final blacklist mOverlayFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

.field private final blacklist mPrivAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

.field public final blacklist type:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/pm/PackagePartitions$SystemPartition;)V
    .locals 3
    .param p1, "original"    # Landroid/content/pm/PackagePartitions$SystemPartition;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iget v0, p1, Landroid/content/pm/PackagePartitions$SystemPartition;->type:I

    iput v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->type:I

    .line 188
    iget-object v0, p1, Landroid/content/pm/PackagePartitions$SystemPartition;->mName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mName:Ljava/lang/String;

    .line 189
    new-instance v0, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    iget-object v1, p1, Landroid/content/pm/PackagePartitions$SystemPartition;->mFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    invoke-static {v1}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->-$$Nest$mgetFile(Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;-><init>(Ljava/io/File;Landroid/content/pm/PackagePartitions$DeferredCanonicalFile-IA;)V

    iput-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    .line 190
    iget-object v0, p1, Landroid/content/pm/PackagePartitions$SystemPartition;->mAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    iput-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    .line 191
    iget-object v0, p1, Landroid/content/pm/PackagePartitions$SystemPartition;->mPrivAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    iput-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mPrivAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    .line 192
    iget-object v0, p1, Landroid/content/pm/PackagePartitions$SystemPartition;->mOverlayFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    iput-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mOverlayFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    .line 193
    iget-object v0, p1, Landroid/content/pm/PackagePartitions$SystemPartition;->mNonConicalFolder:Ljava/io/File;

    iput-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mNonConicalFolder:Ljava/io/File;

    .line 194
    return-void
.end method

.method private constructor blacklist <init>(Ljava/io/File;ILjava/lang/String;ZZ)V
    .locals 3
    .param p1, "folder"    # Ljava/io/File;
    .param p2, "type"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "containsPrivApp"    # Z
    .param p5, "containsOverlay"    # Z

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput p2, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->type:I

    .line 176
    iput-object p3, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mName:Ljava/lang/String;

    .line 177
    new-instance v0, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;-><init>(Ljava/io/File;Landroid/content/pm/PackagePartitions$DeferredCanonicalFile-IA;)V

    iput-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    .line 178
    new-instance v0, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    const-string v2, "app"

    invoke-direct {v0, p1, v2, v1}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;-><init>(Ljava/io/File;Ljava/lang/String;Landroid/content/pm/PackagePartitions$DeferredCanonicalFile-IA;)V

    iput-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    .line 179
    if-eqz p4, :cond_0

    new-instance v0, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    const-string/jumbo v2, "priv-app"

    invoke-direct {v0, p1, v2, v1}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;-><init>(Ljava/io/File;Ljava/lang/String;Landroid/content/pm/PackagePartitions$DeferredCanonicalFile-IA;)V

    goto :goto_0

    .line 180
    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mPrivAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    .line 181
    if-eqz p5, :cond_1

    new-instance v0, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    const-string/jumbo v2, "overlay"

    invoke-direct {v0, p1, v2, v1}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;-><init>(Ljava/io/File;Ljava/lang/String;Landroid/content/pm/PackagePartitions$DeferredCanonicalFile-IA;)V

    move-object v1, v0

    goto :goto_1

    .line 182
    :cond_1
    nop

    :goto_1
    iput-object v1, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mOverlayFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    .line 183
    iput-object p1, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mNonConicalFolder:Ljava/io/File;

    .line 184
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/io/File;ILjava/lang/String;ZZLandroid/content/pm/PackagePartitions$SystemPartition-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/content/pm/PackagePartitions$SystemPartition;-><init>(Ljava/io/File;ILjava/lang/String;ZZ)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/File;Landroid/content/pm/PackagePartitions$SystemPartition;)V
    .locals 7
    .param p1, "rootFolder"    # Ljava/io/File;
    .param p2, "partition"    # Landroid/content/pm/PackagePartitions$SystemPartition;

    .line 201
    iget v2, p2, Landroid/content/pm/PackagePartitions$SystemPartition;->type:I

    iget-object v3, p2, Landroid/content/pm/PackagePartitions$SystemPartition;->mName:Ljava/lang/String;

    iget-object v0, p2, Landroid/content/pm/PackagePartitions$SystemPartition;->mPrivAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    iget-object v0, p2, Landroid/content/pm/PackagePartitions$SystemPartition;->mOverlayFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    if-eqz v0, :cond_1

    move v6, v1

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v4, v5

    move v5, v6

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackagePartitions$SystemPartition;-><init>(Ljava/io/File;ILjava/lang/String;ZZ)V

    .line 203
    return-void
.end method


# virtual methods
.method public blacklist containsApp(Ljava/io/File;)Z
    .locals 2
    .param p1, "scanFile"    # Ljava/io/File;

    .line 262
    iget-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    if-eqz v0, :cond_0

    .line 263
    invoke-static {v0}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->-$$Nest$mgetFile(Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1}, Landroid/content/pm/PackagePartitions;->-$$Nest$smcanonicalize(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 262
    :goto_0
    return v0
.end method

.method public blacklist containsFile(Ljava/io/File;)Z
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .line 251
    iget-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    invoke-static {v0}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->-$$Nest$mgetFile(Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1}, Landroid/content/pm/PackagePartitions;->-$$Nest$smcanonicalize(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public blacklist containsOverlay(Ljava/io/File;)Z
    .locals 2
    .param p1, "scanFile"    # Ljava/io/File;

    .line 268
    iget-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mOverlayFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    if-eqz v0, :cond_0

    .line 269
    invoke-static {v0}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->-$$Nest$mgetFile(Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1}, Landroid/content/pm/PackagePartitions;->-$$Nest$smcanonicalize(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 268
    :goto_0
    return v0
.end method

.method public blacklist containsPath(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 246
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/pm/PackagePartitions$SystemPartition;->containsFile(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public blacklist containsPrivApp(Ljava/io/File;)Z
    .locals 2
    .param p1, "scanFile"    # Ljava/io/File;

    .line 256
    iget-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mPrivAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    if-eqz v0, :cond_0

    .line 257
    invoke-static {v0}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->-$$Nest$mgetFile(Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1}, Landroid/content/pm/PackagePartitions;->-$$Nest$smcanonicalize(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 256
    :goto_0
    return v0
.end method

.method public blacklist getAppFolder()Ljava/io/File;
    .locals 1

    .line 229
    iget-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->-$$Nest$mgetFile(Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;)Ljava/io/File;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public blacklist getFolder()Ljava/io/File;
    .locals 1

    .line 217
    iget-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    invoke-static {v0}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->-$$Nest$mgetFile(Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getNonConicalFolder()Ljava/io/File;
    .locals 1

    .line 223
    iget-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mNonConicalFolder:Ljava/io/File;

    return-object v0
.end method

.method public blacklist getOverlayFolder()Ljava/io/File;
    .locals 1

    .line 241
    iget-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mOverlayFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->-$$Nest$mgetFile(Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;)Ljava/io/File;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public blacklist getPrivAppFolder()Ljava/io/File;
    .locals 1

    .line 235
    iget-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mPrivAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->-$$Nest$mgetFile(Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;)Ljava/io/File;

    move-result-object v0

    :goto_0
    return-object v0
.end method
