.class public Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;
.super Ljava/lang/Object;
.source "OverlayScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/content/om/OverlayScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParsedOverlayInfo"
.end annotation


# instance fields
.field public final blacklist isStatic:Z

.field public final blacklist packageName:Ljava/lang/String;

.field public final blacklist path:Ljava/io/File;

.field public final blacklist preInstalledApexPath:Ljava/io/File;

.field public final blacklist priority:I

.field public final blacklist targetPackageName:Ljava/lang/String;

.field public final blacklist targetSdkVersion:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;IZILjava/io/File;Ljava/io/File;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "targetPackageName"    # Ljava/lang/String;
    .param p3, "targetSdkVersion"    # I
    .param p4, "isStatic"    # Z
    .param p5, "priority"    # I
    .param p6, "path"    # Ljava/io/File;
    .param p7, "preInstalledApexPath"    # Ljava/io/File;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->packageName:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 62
    iput p3, p0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->targetSdkVersion:I

    .line 63
    iput-boolean p4, p0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->isStatic:Z

    .line 64
    iput p5, p0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->priority:I

    .line 65
    iput-object p6, p0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->path:Ljava/io/File;

    .line 66
    iput-object p7, p0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->preInstalledApexPath:Ljava/io/File;

    .line 67
    return-void
.end method


# virtual methods
.method public blacklist getOriginalPartitionPath()Ljava/io/File;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->preInstalledApexPath:Ljava/io/File;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->path:Ljava/io/File;

    :goto_0
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->targetPackageName:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->targetSdkVersion:I

    .line 74
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->isStatic:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->priority:I

    .line 75
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->path:Ljava/io/File;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->preInstalledApexPath:Ljava/io/File;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 71
    const-string/jumbo v2, "{packageName=%s, targetPackageName=%s, targetSdkVersion=%s, isStatic=%s, priority=%s, path=%s, preInstalledApexPath=%s}"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
