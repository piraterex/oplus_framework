.class public Landroid/util/apk/ApkSignatureVerifierSocExtImpl;
.super Ljava/lang/Object;
.source "ApkSignatureVerifierSocExtImpl.java"

# interfaces
.implements Landroid/util/apk/IApkSignatureVerifierSocExt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/apk/ApkSignatureVerifierSocExtImpl$LazyHolder;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ApkSignatureVerifier"

.field private static blacklist sIsPerfLockAcquired:Z

.field private static blacklist sPerfBoost:Landroid/util/BoostFramework;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 26
    const/4 v0, 0x0

    sput-object v0, Landroid/util/apk/ApkSignatureVerifierSocExtImpl;->sPerfBoost:Landroid/util/BoostFramework;

    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Landroid/util/apk/ApkSignatureVerifierSocExtImpl;->sIsPerfLockAcquired:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/util/apk/ApkSignatureVerifierSocExtImpl-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/util/apk/ApkSignatureVerifierSocExtImpl;-><init>()V

    return-void
.end method

.method public static whitelist getInstance(Ljava/lang/Object;)Landroid/util/apk/ApkSignatureVerifierSocExtImpl;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .line 38
    invoke-static {}, Landroid/util/apk/ApkSignatureVerifierSocExtImpl$LazyHolder;->-$$Nest$sfgetINSTANCE()Landroid/util/apk/ApkSignatureVerifierSocExtImpl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist hintPackageInstallBoost(Z)V
    .locals 5
    .param p1, "verifyFull"    # Z

    .line 43
    sget-object v0, Landroid/util/apk/ApkSignatureVerifierSocExtImpl;->sPerfBoost:Landroid/util/BoostFramework;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    sput-object v0, Landroid/util/apk/ApkSignatureVerifierSocExtImpl;->sPerfBoost:Landroid/util/BoostFramework;

    .line 46
    :cond_0
    sget-object v0, Landroid/util/apk/ApkSignatureVerifierSocExtImpl;->sPerfBoost:Landroid/util/BoostFramework;

    if-eqz v0, :cond_1

    sget-boolean v1, Landroid/util/apk/ApkSignatureVerifierSocExtImpl;->sIsPerfLockAcquired:Z

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 48
    const/16 v1, 0x1088

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 50
    const-string v0, "ApkSignatureVerifier"

    const-string v1, "Perflock acquired for PackageInstall "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v0, 0x1

    sput-boolean v0, Landroid/util/apk/ApkSignatureVerifierSocExtImpl;->sIsPerfLockAcquired:Z

    .line 53
    :cond_1
    return-void
.end method

.method public whitelist releasePackageInstallBoost()V
    .locals 2

    .line 57
    sget-boolean v0, Landroid/util/apk/ApkSignatureVerifierSocExtImpl;->sIsPerfLockAcquired:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/util/apk/ApkSignatureVerifierSocExtImpl;->sPerfBoost:Landroid/util/BoostFramework;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 59
    const/4 v0, 0x0

    sput-boolean v0, Landroid/util/apk/ApkSignatureVerifierSocExtImpl;->sIsPerfLockAcquired:Z

    .line 60
    const-string v0, "ApkSignatureVerifier"

    const-string v1, "Perflock released for PackageInstall "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    return-void
.end method
