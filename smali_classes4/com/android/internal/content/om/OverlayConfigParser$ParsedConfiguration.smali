.class public Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;
.super Ljava/lang/Object;
.source "OverlayConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/content/om/OverlayConfigParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParsedConfiguration"
.end annotation


# instance fields
.field public final blacklist enabled:Z

.field public final blacklist mutable:Z

.field public final blacklist packageName:Ljava/lang/String;

.field public final blacklist parsedInfo:Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

.field public final blacklist policy:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;ZZLjava/lang/String;Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "mutable"    # Z
    .param p4, "policy"    # Ljava/lang/String;
    .param p5, "parsedInfo"    # Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->packageName:Ljava/lang/String;

    .line 104
    iput-boolean p2, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->enabled:Z

    .line 105
    iput-boolean p3, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->mutable:Z

    .line 106
    iput-object p4, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->policy:Ljava/lang/String;

    .line 107
    iput-object p5, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->parsedInfo:Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

    .line 108
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->enabled:Z

    .line 113
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->mutable:Z

    .line 114
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->policy:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->parsedInfo:Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 112
    const-string/jumbo v2, "{packageName=%s, enabled=%s, mutable=%s, policy=%s, parsedInfo=%s}"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
