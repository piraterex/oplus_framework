.class public Lsystem/ext/registry/SocCommonCoreRegistry;
.super Ljava/lang/Object;
.source "SocCommonCoreRegistry.java"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 44
    const-class v0, Lcom/android/internal/os/IZygoteConfigSocExt;

    new-instance v1, Lsystem/ext/registry/SocCommonCoreRegistry$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lsystem/ext/registry/SocCommonCoreRegistry$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lsystem/ext/loader/core/ExtRegistry;->registerExt(Ljava/lang/Class;Lsystem/ext/loader/core/ExtCreator;)V

    .line 46
    const-class v0, Landroid/view/IChoreographerSocExt;

    new-instance v1, Lsystem/ext/registry/SocCommonCoreRegistry$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lsystem/ext/registry/SocCommonCoreRegistry$$ExternalSyntheticLambda11;-><init>()V

    invoke-static {v0, v1}, Lsystem/ext/loader/core/ExtRegistry;->registerExt(Ljava/lang/Class;Lsystem/ext/loader/core/ExtCreator;)V

    .line 47
    const-class v0, Landroid/view/ISurfaceSocExt;

    new-instance v1, Lsystem/ext/registry/SocCommonCoreRegistry$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lsystem/ext/registry/SocCommonCoreRegistry$$ExternalSyntheticLambda12;-><init>()V

    invoke-static {v0, v1}, Lsystem/ext/loader/core/ExtRegistry;->registerExt(Ljava/lang/Class;Lsystem/ext/loader/core/ExtCreator;)V

    .line 50
    const-class v0, Landroid/hardware/camera2/ICameraManagerSocExt;

    new-instance v1, Lsystem/ext/registry/SocCommonCoreRegistry$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Lsystem/ext/registry/SocCommonCoreRegistry$$ExternalSyntheticLambda13;-><init>()V

    invoke-static {v0, v1}, Lsystem/ext/loader/core/ExtRegistry;->registerExt(Ljava/lang/Class;Lsystem/ext/loader/core/ExtCreator;)V

    .line 51
    const-class v0, Landroid/hardware/ICameraSocExt;

    new-instance v1, Lsystem/ext/registry/SocCommonCoreRegistry$$ExternalSyntheticLambda14;

    invoke-direct {v1}, Lsystem/ext/registry/SocCommonCoreRegistry$$ExternalSyntheticLambda14;-><init>()V

    invoke-static {v0, v1}, Lsystem/ext/loader/core/ExtRegistry;->registerExt(Ljava/lang/Class;Lsystem/ext/loader/core/ExtCreator;)V

    .line 53
    const-class v0, Landroid/app/IActivityThreadSocExt;

    new-instance v1, Lsystem/ext/registry/SocCommonCoreRegistry$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Lsystem/ext/registry/SocCommonCoreRegistry$$ExternalSyntheticLambda15;-><init>()V

    invoke-static {v0, v1}, Lsystem/ext/loader/core/ExtRegistry;->registerExt(Ljava/lang/Class;Lsystem/ext/loader/core/ExtCreator;)V

    .line 54
    const-class v0, Landroid/app/IActivityThreadSocExt$IStaticExt;

    new-instance v1, Lsystem/ext/registry/SocCommonCoreRegistry$$ExternalSyntheticLambda16;

    invoke-direct {v1}, Lsystem/ext/registry/SocCommonCoreRegistry$$ExternalSyntheticLambda16;-><init>()V

    invoke-static {v0, v1}, Lsystem/ext/loader/core/ExtRegistry;->registerExt(Ljava/lang/Class;Lsystem/ext/loader/core/ExtCreator;)V

    .line 56
    const-class v0, Landroid/widget/IOverScrollerSocExt;

    new-instance v1, Lsystem/ext/registry/SocCommonCoreRegistry$$ExternalSyntheticLambda17;

    invoke-direct {v1}, Lsystem/ext/registry/SocCommonCoreRegistry$$ExternalSyntheticLambda17;-><init>()V

    invoke-static {v0, v1}, Lsystem/ext/loader/core/ExtRegistry;->registerExt(Ljava/lang/Class;Lsystem/ext/loader/core/ExtCreator;)V

    .line 57
    const-class v0, Landroid/widget/ISplineOverScrollerSocExt;

    new-instance v1, Lsystem/ext/registry/SocCommonCoreRegistry$$ExternalSyntheticLambda18;

    invoke-direct {v1}, Lsystem/ext/registry/SocCommonCoreRegistry$$ExternalSyntheticLambda18;-><init>()V

    invoke-static {v0, v1}, Lsystem/ext/loader/core/ExtRegistry;->registerExt(Ljava/lang/Class;Lsystem/ext/loader/core/ExtCreator;)V

    .line 59
    const-class v0, Landroid/view/IViewSocExt;

    new-instance v1, Lsystem/ext/registry/SocCommonCoreRegistry$$ExternalSyntheticLambda19;

    invoke-direct {v1}, Lsystem/ext/registry/SocCommonCoreRegistry$$ExternalSyntheticLambda19;-><init>()V

    invoke-static {v0, v1}, Lsystem/ext/loader/core/ExtRegistry;->registerExt(Ljava/lang/Class;Lsystem/ext/loader/core/ExtCreator;)V

    .line 60
    const-class v0, Landroid/view/IViewRootImplSocExt;

    new-instance v1, Lsystem/ext/registry/SocCommonCoreRegistry$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lsystem/ext/registry/SocCommonCoreRegistry$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, v1}, Lsystem/ext/loader/core/ExtRegistry;->registerExt(Ljava/lang/Class;Lsystem/ext/loader/core/ExtCreator;)V

    .line 61
    const-class v0, Landroid/view/ISurfaceViewSocExt;

    new-instance v1, Lsystem/ext/registry/SocCommonCoreRegistry$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lsystem/ext/registry/SocCommonCoreRegistry$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0, v1}, Lsystem/ext/loader/core/ExtRegistry;->registerExt(Ljava/lang/Class;Lsystem/ext/loader/core/ExtCreator;)V

    .line 63
    const-class v0, Landroid/content/res/IAssetManagerSocExt;

    new-instance v1, Lsystem/ext/registry/SocCommonCoreRegistry$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lsystem/ext/registry/SocCommonCoreRegistry$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0, v1}, Lsystem/ext/loader/core/ExtRegistry;->registerExt(Ljava/lang/Class;Lsystem/ext/loader/core/ExtCreator;)V

    .line 65
    const-class v0, Landroid/app/IContextImplSocExt;

    new-instance v1, Lsystem/ext/registry/SocCommonCoreRegistry$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lsystem/ext/registry/SocCommonCoreRegistry$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0, v1}, Lsystem/ext/loader/core/ExtRegistry;->registerExt(Ljava/lang/Class;Lsystem/ext/loader/core/ExtCreator;)V

    .line 66
    const-class v0, Landroid/app/IContextImplSocExt$IStaticExt;

    new-instance v1, Lsystem/ext/registry/SocCommonCoreRegistry$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lsystem/ext/registry/SocCommonCoreRegistry$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v0, v1}, Lsystem/ext/loader/core/ExtRegistry;->registerExt(Ljava/lang/Class;Lsystem/ext/loader/core/ExtCreator;)V

    .line 68
    const-class v0, Landroid/app/ILoadedApkSocExt;

    new-instance v1, Lsystem/ext/registry/SocCommonCoreRegistry$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lsystem/ext/registry/SocCommonCoreRegistry$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v0, v1}, Lsystem/ext/loader/core/ExtRegistry;->registerExt(Ljava/lang/Class;Lsystem/ext/loader/core/ExtCreator;)V

    .line 69
    const-class v0, Landroid/util/apk/IApkSignatureVerifierSocExt;

    new-instance v1, Lsystem/ext/registry/SocCommonCoreRegistry$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lsystem/ext/registry/SocCommonCoreRegistry$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v0, v1}, Lsystem/ext/loader/core/ExtRegistry;->registerExt(Ljava/lang/Class;Lsystem/ext/loader/core/ExtCreator;)V

    .line 70
    const-class v0, Landroid/content/res/IResourcesImpSocExt;

    new-instance v1, Lsystem/ext/registry/SocCommonCoreRegistry$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lsystem/ext/registry/SocCommonCoreRegistry$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {v0, v1}, Lsystem/ext/loader/core/ExtRegistry;->registerExt(Ljava/lang/Class;Lsystem/ext/loader/core/ExtCreator;)V

    .line 72
    const-class v0, Landroid/widget/IScrollerSocExt;

    new-instance v1, Lsystem/ext/registry/SocCommonCoreRegistry$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lsystem/ext/registry/SocCommonCoreRegistry$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {v0, v1}, Lsystem/ext/loader/core/ExtRegistry;->registerExt(Ljava/lang/Class;Lsystem/ext/loader/core/ExtCreator;)V

    .line 74
    const-class v0, Lcom/android/server/ISystemConfigSocExt;

    new-instance v1, Lsystem/ext/registry/SocCommonCoreRegistry$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lsystem/ext/registry/SocCommonCoreRegistry$$ExternalSyntheticLambda10;-><init>()V

    invoke-static {v0, v1}, Lsystem/ext/loader/core/ExtRegistry;->registerExt(Ljava/lang/Class;Lsystem/ext/loader/core/ExtCreator;)V

    .line 75
    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
