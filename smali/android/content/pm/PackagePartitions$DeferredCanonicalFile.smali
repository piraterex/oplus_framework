.class Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;
.super Ljava/lang/Object;
.source "PackagePartitions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackagePartitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeferredCanonicalFile"
.end annotation


# instance fields
.field private blacklist mFile:Ljava/io/File;

.field private blacklist mIsCanonical:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetFile(Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;)Ljava/io/File;
    .locals 0

    invoke-direct {p0}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->getFile()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "dir"    # Ljava/io/File;

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->mIsCanonical:Z

    .line 285
    iput-object p1, p0, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->mFile:Ljava/io/File;

    .line 286
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/io/File;Landroid/content/pm/PackagePartitions$DeferredCanonicalFile-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;-><init>(Ljava/io/File;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->mIsCanonical:Z

    .line 289
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->mFile:Ljava/io/File;

    .line 290
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/io/File;Ljava/lang/String;Landroid/content/pm/PackagePartitions$DeferredCanonicalFile-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist getFile()Ljava/io/File;
    .locals 1

    .line 294
    iget-boolean v0, p0, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->mIsCanonical:Z

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->mFile:Ljava/io/File;

    invoke-static {v0}, Landroid/content/pm/PackagePartitions;->-$$Nest$smcanonicalize(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->mFile:Ljava/io/File;

    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->mIsCanonical:Z

    .line 298
    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->mFile:Ljava/io/File;

    return-object v0
.end method
