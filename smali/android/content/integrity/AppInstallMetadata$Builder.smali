.class public final Landroid/content/integrity/AppInstallMetadata$Builder;
.super Ljava/lang/Object;
.source "AppInstallMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/integrity/AppInstallMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAllowedInstallersAndCertificates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAppCertificateLineage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAppCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mInstallerCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mInstallerName:Ljava/lang/String;

.field private blacklist mIsPreInstalled:Z

.field private blacklist mIsStampPresent:Z

.field private blacklist mIsStampTrusted:Z

.field private blacklist mIsStampVerified:Z

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mStampCertificateHash:Ljava/lang/String;

.field private blacklist mVersionCode:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAllowedInstallersAndCertificates(Landroid/content/integrity/AppInstallMetadata$Builder;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mAllowedInstallersAndCertificates:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAppCertificateLineage(Landroid/content/integrity/AppInstallMetadata$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mAppCertificateLineage:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAppCertificates(Landroid/content/integrity/AppInstallMetadata$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mAppCertificates:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInstallerCertificates(Landroid/content/integrity/AppInstallMetadata$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mInstallerCertificates:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInstallerName(Landroid/content/integrity/AppInstallMetadata$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mInstallerName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsPreInstalled(Landroid/content/integrity/AppInstallMetadata$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mIsPreInstalled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsStampPresent(Landroid/content/integrity/AppInstallMetadata$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mIsStampPresent:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsStampTrusted(Landroid/content/integrity/AppInstallMetadata$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mIsStampTrusted:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsStampVerified(Landroid/content/integrity/AppInstallMetadata$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mIsStampVerified:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPackageName(Landroid/content/integrity/AppInstallMetadata$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStampCertificateHash(Landroid/content/integrity/AppInstallMetadata$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mStampCertificateHash:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVersionCode(Landroid/content/integrity/AppInstallMetadata$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mVersionCode:J

    return-wide v0
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mAllowedInstallersAndCertificates:Ljava/util/Map;

    .line 165
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/content/integrity/AppInstallMetadata;
    .locals 2

    .line 319
    iget-object v0, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    iget-object v0, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mAppCertificates:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget-object v0, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mAppCertificateLineage:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    new-instance v0, Landroid/content/integrity/AppInstallMetadata;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/content/integrity/AppInstallMetadata;-><init>(Landroid/content/integrity/AppInstallMetadata$Builder;Landroid/content/integrity/AppInstallMetadata-IA;)V

    return-object v0
.end method

.method public blacklist setAllowedInstallersAndCert(Ljava/util/Map;)Landroid/content/integrity/AppInstallMetadata$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/integrity/AppInstallMetadata$Builder;"
        }
    .end annotation

    .line 175
    .local p1, "allowedInstallersAndCertificates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mAllowedInstallersAndCertificates:Ljava/util/Map;

    .line 176
    return-object p0
.end method

.method public blacklist setAppCertificateLineage(Ljava/util/List;)Landroid/content/integrity/AppInstallMetadata$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/integrity/AppInstallMetadata$Builder;"
        }
    .end annotation

    .line 214
    .local p1, "appCertificateLineage":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mAppCertificateLineage:Ljava/util/List;

    .line 215
    return-object p0
.end method

.method public blacklist setAppCertificates(Ljava/util/List;)Landroid/content/integrity/AppInstallMetadata$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/integrity/AppInstallMetadata$Builder;"
        }
    .end annotation

    .line 200
    .local p1, "appCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mAppCertificates:Ljava/util/List;

    .line 201
    return-object p0
.end method

.method public blacklist setInstallerCertificates(Ljava/util/List;)Landroid/content/integrity/AppInstallMetadata$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/integrity/AppInstallMetadata$Builder;"
        }
    .end annotation

    .line 239
    .local p1, "installerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mInstallerCertificates:Ljava/util/List;

    .line 240
    return-object p0
.end method

.method public blacklist setInstallerName(Ljava/lang/String;)Landroid/content/integrity/AppInstallMetadata$Builder;
    .locals 1
    .param p1, "installerName"    # Ljava/lang/String;

    .line 225
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mInstallerName:Ljava/lang/String;

    .line 226
    return-object p0
.end method

.method public blacklist setIsPreInstalled(Z)Landroid/content/integrity/AppInstallMetadata$Builder;
    .locals 0
    .param p1, "isPreInstalled"    # Z

    .line 261
    iput-boolean p1, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mIsPreInstalled:Z

    .line 262
    return-object p0
.end method

.method public blacklist setIsStampPresent(Z)Landroid/content/integrity/AppInstallMetadata$Builder;
    .locals 0
    .param p1, "isStampPresent"    # Z

    .line 272
    iput-boolean p1, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mIsStampPresent:Z

    .line 273
    return-object p0
.end method

.method public blacklist setIsStampTrusted(Z)Landroid/content/integrity/AppInstallMetadata$Builder;
    .locals 0
    .param p1, "isStampTrusted"    # Z

    .line 294
    iput-boolean p1, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mIsStampTrusted:Z

    .line 295
    return-object p0
.end method

.method public blacklist setIsStampVerified(Z)Landroid/content/integrity/AppInstallMetadata$Builder;
    .locals 0
    .param p1, "isStampVerified"    # Z

    .line 283
    iput-boolean p1, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mIsStampVerified:Z

    .line 284
    return-object p0
.end method

.method public blacklist setPackageName(Ljava/lang/String;)Landroid/content/integrity/AppInstallMetadata$Builder;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 186
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mPackageName:Ljava/lang/String;

    .line 187
    return-object p0
.end method

.method public blacklist setStampCertificateHash(Ljava/lang/String;)Landroid/content/integrity/AppInstallMetadata$Builder;
    .locals 1
    .param p1, "stampCertificateHash"    # Ljava/lang/String;

    .line 308
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mStampCertificateHash:Ljava/lang/String;

    .line 309
    return-object p0
.end method

.method public blacklist setVersionCode(J)Landroid/content/integrity/AppInstallMetadata$Builder;
    .locals 0
    .param p1, "versionCode"    # J

    .line 250
    iput-wide p1, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mVersionCode:J

    .line 251
    return-object p0
.end method
