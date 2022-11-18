.class public final Landroid/content/integrity/AppInstallMetadata;
.super Ljava/lang/Object;
.source "AppInstallMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/integrity/AppInstallMetadata$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mAllowedInstallersAndCertificates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAppCertificateLineage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAppCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mInstallerCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mInstallerName:Ljava/lang/String;

.field private final blacklist mIsPreInstalled:Z

.field private final blacklist mIsStampPresent:Z

.field private final blacklist mIsStampTrusted:Z

.field private final blacklist mIsStampVerified:Z

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mStampCertificateHash:Ljava/lang/String;

.field private final blacklist mVersionCode:J


# direct methods
.method private constructor blacklist <init>(Landroid/content/integrity/AppInstallMetadata$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/content/integrity/AppInstallMetadata$Builder;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1}, Landroid/content/integrity/AppInstallMetadata$Builder;->-$$Nest$fgetmPackageName(Landroid/content/integrity/AppInstallMetadata$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/integrity/AppInstallMetadata;->mPackageName:Ljava/lang/String;

    .line 56
    invoke-static {p1}, Landroid/content/integrity/AppInstallMetadata$Builder;->-$$Nest$fgetmAppCertificates(Landroid/content/integrity/AppInstallMetadata$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/integrity/AppInstallMetadata;->mAppCertificates:Ljava/util/List;

    .line 57
    invoke-static {p1}, Landroid/content/integrity/AppInstallMetadata$Builder;->-$$Nest$fgetmAppCertificateLineage(Landroid/content/integrity/AppInstallMetadata$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/integrity/AppInstallMetadata;->mAppCertificateLineage:Ljava/util/List;

    .line 58
    invoke-static {p1}, Landroid/content/integrity/AppInstallMetadata$Builder;->-$$Nest$fgetmInstallerName(Landroid/content/integrity/AppInstallMetadata$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/integrity/AppInstallMetadata;->mInstallerName:Ljava/lang/String;

    .line 59
    invoke-static {p1}, Landroid/content/integrity/AppInstallMetadata$Builder;->-$$Nest$fgetmInstallerCertificates(Landroid/content/integrity/AppInstallMetadata$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/integrity/AppInstallMetadata;->mInstallerCertificates:Ljava/util/List;

    .line 60
    invoke-static {p1}, Landroid/content/integrity/AppInstallMetadata$Builder;->-$$Nest$fgetmVersionCode(Landroid/content/integrity/AppInstallMetadata$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/integrity/AppInstallMetadata;->mVersionCode:J

    .line 61
    invoke-static {p1}, Landroid/content/integrity/AppInstallMetadata$Builder;->-$$Nest$fgetmIsPreInstalled(Landroid/content/integrity/AppInstallMetadata$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/integrity/AppInstallMetadata;->mIsPreInstalled:Z

    .line 62
    invoke-static {p1}, Landroid/content/integrity/AppInstallMetadata$Builder;->-$$Nest$fgetmIsStampPresent(Landroid/content/integrity/AppInstallMetadata$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/integrity/AppInstallMetadata;->mIsStampPresent:Z

    .line 63
    invoke-static {p1}, Landroid/content/integrity/AppInstallMetadata$Builder;->-$$Nest$fgetmIsStampVerified(Landroid/content/integrity/AppInstallMetadata$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/integrity/AppInstallMetadata;->mIsStampVerified:Z

    .line 64
    invoke-static {p1}, Landroid/content/integrity/AppInstallMetadata$Builder;->-$$Nest$fgetmIsStampTrusted(Landroid/content/integrity/AppInstallMetadata$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/integrity/AppInstallMetadata;->mIsStampTrusted:Z

    .line 65
    invoke-static {p1}, Landroid/content/integrity/AppInstallMetadata$Builder;->-$$Nest$fgetmStampCertificateHash(Landroid/content/integrity/AppInstallMetadata$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/integrity/AppInstallMetadata;->mStampCertificateHash:Ljava/lang/String;

    .line 66
    invoke-static {p1}, Landroid/content/integrity/AppInstallMetadata$Builder;->-$$Nest$fgetmAllowedInstallersAndCertificates(Landroid/content/integrity/AppInstallMetadata$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/content/integrity/AppInstallMetadata;->mAllowedInstallersAndCertificates:Ljava/util/Map;

    .line 67
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/integrity/AppInstallMetadata$Builder;Landroid/content/integrity/AppInstallMetadata-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/integrity/AppInstallMetadata;-><init>(Landroid/content/integrity/AppInstallMetadata$Builder;)V

    return-void
.end method


# virtual methods
.method public blacklist getAllowedInstallersAndCertificates()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Landroid/content/integrity/AppInstallMetadata;->mAllowedInstallersAndCertificates:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getAppCertificateLineage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Landroid/content/integrity/AppInstallMetadata;->mAppCertificateLineage:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getAppCertificates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Landroid/content/integrity/AppInstallMetadata;->mAppCertificates:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getInstallerCertificates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Landroid/content/integrity/AppInstallMetadata;->mInstallerCertificates:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getInstallerName()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Landroid/content/integrity/AppInstallMetadata;->mInstallerName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Landroid/content/integrity/AppInstallMetadata;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getStampCertificateHash()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Landroid/content/integrity/AppInstallMetadata;->mStampCertificateHash:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getVersionCode()J
    .locals 2

    .line 96
    iget-wide v0, p0, Landroid/content/integrity/AppInstallMetadata;->mVersionCode:J

    return-wide v0
.end method

.method public blacklist isPreInstalled()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Landroid/content/integrity/AppInstallMetadata;->mIsPreInstalled:Z

    return v0
.end method

.method public blacklist isStampPresent()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Landroid/content/integrity/AppInstallMetadata;->mIsStampPresent:Z

    return v0
.end method

.method public blacklist isStampTrusted()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Landroid/content/integrity/AppInstallMetadata;->mIsStampTrusted:Z

    return v0
.end method

.method public blacklist isStampVerified()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Landroid/content/integrity/AppInstallMetadata;->mIsStampVerified:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    .line 131
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/content/integrity/AppInstallMetadata;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/content/integrity/AppInstallMetadata;->mAppCertificates:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/content/integrity/AppInstallMetadata;->mAppCertificateLineage:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 138
    iget-object v1, p0, Landroid/content/integrity/AppInstallMetadata;->mInstallerName:Ljava/lang/String;

    const-string/jumbo v2, "null"

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    const/4 v3, 0x3

    aput-object v1, v0, v3

    const/4 v1, 0x4

    .line 139
    iget-object v3, p0, Landroid/content/integrity/AppInstallMetadata;->mInstallerCertificates:Ljava/util/List;

    if-nez v3, :cond_1

    move-object v3, v2

    :cond_1
    aput-object v3, v0, v1

    const/4 v1, 0x5

    iget-wide v3, p0, Landroid/content/integrity/AppInstallMetadata;->mVersionCode:J

    .line 140
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x6

    iget-boolean v3, p0, Landroid/content/integrity/AppInstallMetadata;->mIsPreInstalled:Z

    .line 141
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x7

    iget-boolean v3, p0, Landroid/content/integrity/AppInstallMetadata;->mIsStampPresent:Z

    .line 142
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0x8

    iget-boolean v3, p0, Landroid/content/integrity/AppInstallMetadata;->mIsStampVerified:Z

    .line 143
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0x9

    iget-boolean v3, p0, Landroid/content/integrity/AppInstallMetadata;->mIsStampTrusted:Z

    .line 144
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0xa

    .line 145
    iget-object v3, p0, Landroid/content/integrity/AppInstallMetadata;->mStampCertificateHash:Ljava/lang/String;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, v3

    :goto_0
    aput-object v2, v0, v1

    .line 131
    const-string v1, "AppInstallMetadata { PackageName = %s, AppCerts = %s, InstallerName = %s, InstallerCerts = %s, VersionCode = %d, PreInstalled = %b, StampPresent = %b, StampVerified = %b, StampTrusted = %b, StampCert = %s }"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
