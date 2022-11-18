.class public Lcom/android/server/SystemConfig;
.super Ljava/lang/Object;
.source "SystemConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SystemConfig$SystemConfigStaticWrapper;,
        Lcom/android/server/SystemConfig$PermissionEntry;,
        Lcom/android/server/SystemConfig$SharedLibraryEntry;
    }
.end annotation


# static fields
.field private static final blacklist ALLOW_ALL:I = -0x1

.field private static final blacklist ALLOW_APP_CONFIGS:I = 0x8

.field private static final blacklist ALLOW_ASSOCIATIONS:I = 0x80

.field private static final blacklist ALLOW_FEATURES:I = 0x1

.field private static final blacklist ALLOW_HIDDENAPI_WHITELISTING:I = 0x40

.field private static final blacklist ALLOW_IMPLICIT_BROADCASTS:I = 0x200

.field private static final blacklist ALLOW_LIBS:I = 0x2

.field private static final blacklist ALLOW_OEM_PERMISSIONS:I = 0x20

.field private static final blacklist ALLOW_OVERRIDE_APP_RESTRICTIONS:I = 0x100

.field private static final blacklist ALLOW_PERMISSIONS:I = 0x4

.field private static final blacklist ALLOW_PRIVAPP_PERMISSIONS:I = 0x10

.field private static final blacklist ALLOW_VENDOR_APEX:I = 0x400

.field private static final blacklist EMPTY_PERMISSIONS:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final blacklist NO_RIL_PROPERTY:Ljava/lang/String; = "ro.radio.noril"

.field private static final blacklist SKU_PROPERTY:Ljava/lang/String; = "ro.boot.product.hardware.sku"

.field private static final blacklist STATIC_WRAPPER:Lcom/android/server/ISystemConfigStaticWrapper;

.field static final blacklist TAG:Ljava/lang/String; = "SystemConfig"

.field private static final blacklist VENDOR_SKU_PROPERTY:Ljava/lang/String; = "ro.boot.product.vendor.sku"

.field static blacklist sInstance:Lcom/android/server/SystemConfig;


# instance fields
.field final blacklist mAllowAdasSettings:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final blacklist mAllowIgnoreLocationSettings:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final blacklist mAllowImplicitBroadcasts:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mAllowInDataUsageSave:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mAllowInPowerSave:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mAllowInPowerSaveExceptIdle:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mAllowUnthrottledLocation:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mAllowedAssociations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mAllowedVendorApexes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mApexPrivAppDenyPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field final blacklist mApexPrivAppPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final blacklist mAppDataIsolationWhitelistedApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mAvailableFeatures:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mBackupTransportWhitelist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mBgRestrictionExemption:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mBugreportWhitelistedPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mDefaultVrComponents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mDisabledUntilUsedPreinstalledCarrierApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mDisabledUntilUsedPreinstalledCarrierAssociatedApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/CarrierAssociatedAppEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field blacklist mGlobalGids:[I

.field final blacklist mHiddenApiPackageWhitelist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mLinkedApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mModulesInstallerPackageName:Ljava/lang/String;

.field private blacklist mNamedActors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final blacklist mOemPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mOverlayConfigSignaturePackage:Ljava/lang/String;

.field final blacklist mPackageComponentEnabledState:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mPackageToUserTypeBlacklist:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mPackageToUserTypeWhitelist:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final blacklist mPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/SystemConfig$PermissionEntry;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mPrivAppDenyPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final blacklist mPrivAppPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final blacklist mProductPrivAppDenyPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final blacklist mProductPrivAppPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mRollbackWhitelistedPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mSharedLibraries:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/SystemConfig$SharedLibraryEntry;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mSplitPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/permission/PermissionManager$SplitPermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mSystemConfigExt:Lcom/android/server/ISystemConfigExt;

.field blacklist mSystemConfigSocExt:Lcom/android/server/ISystemConfigSocExt;

.field final blacklist mSystemExtPrivAppDenyPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final blacklist mSystemExtPrivAppPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final blacklist mSystemPermissions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final blacklist mUnavailableFeatures:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mVendorPrivAppDenyPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final blacklist mVendorPrivAppPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mWhitelistedStagedInstallers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smisAtLeastSdkLevel(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/server/SystemConfig;->isAtLeastSdkLevel(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 109
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/SystemConfig;->EMPTY_PERMISSIONS:Landroid/util/ArrayMap;

    .line 1976
    new-instance v0, Lcom/android/server/SystemConfig$SystemConfigStaticWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/SystemConfig$SystemConfigStaticWrapper;-><init>(Lcom/android/server/SystemConfig$SystemConfigStaticWrapper-IA;)V

    sput-object v0, Lcom/android/server/SystemConfig;->STATIC_WRAPPER:Lcom/android/server/ISystemConfigStaticWrapper;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 4

    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mGlobalGids:[I

    .line 120
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mSystemPermissions:Landroid/util/SparseArray;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mSplitPermissions:Ljava/util/ArrayList;

    .line 219
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mSharedLibraries:Landroid/util/ArrayMap;

    .line 223
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    .line 227
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mUnavailableFeatures:Landroid/util/ArraySet;

    .line 242
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mPermissions:Landroid/util/ArrayMap;

    .line 247
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowInPowerSaveExceptIdle:Landroid/util/ArraySet;

    .line 251
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowInPowerSave:Landroid/util/ArraySet;

    .line 255
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowInDataUsageSave:Landroid/util/ArraySet;

    .line 259
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowUnthrottledLocation:Landroid/util/ArraySet;

    .line 263
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowAdasSettings:Landroid/util/ArrayMap;

    .line 267
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowIgnoreLocationSettings:Landroid/util/ArrayMap;

    .line 271
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowImplicitBroadcasts:Landroid/util/ArraySet;

    .line 275
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mBgRestrictionExemption:Landroid/util/ArraySet;

    .line 280
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mLinkedApps:Landroid/util/ArraySet;

    .line 283
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mDefaultVrComponents:Landroid/util/ArraySet;

    .line 286
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mBackupTransportWhitelist:Landroid/util/ArraySet;

    .line 289
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mPackageComponentEnabledState:Landroid/util/ArrayMap;

    .line 293
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mHiddenApiPackageWhitelist:Landroid/util/ArraySet;

    .line 306
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mDisabledUntilUsedPreinstalledCarrierApps:Landroid/util/ArraySet;

    .line 310
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mDisabledUntilUsedPreinstalledCarrierAssociatedApps:Landroid/util/ArrayMap;

    .line 313
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mPrivAppPermissions:Landroid/util/ArrayMap;

    .line 314
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mPrivAppDenyPermissions:Landroid/util/ArrayMap;

    .line 316
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mVendorPrivAppPermissions:Landroid/util/ArrayMap;

    .line 317
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mVendorPrivAppDenyPermissions:Landroid/util/ArrayMap;

    .line 319
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mProductPrivAppPermissions:Landroid/util/ArrayMap;

    .line 320
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mProductPrivAppDenyPermissions:Landroid/util/ArrayMap;

    .line 322
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mSystemExtPrivAppPermissions:Landroid/util/ArrayMap;

    .line 323
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mSystemExtPrivAppDenyPermissions:Landroid/util/ArrayMap;

    .line 325
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mApexPrivAppPermissions:Landroid/util/ArrayMap;

    .line 327
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mApexPrivAppDenyPermissions:Landroid/util/ArrayMap;

    .line 330
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mOemPermissions:Landroid/util/ArrayMap;

    .line 336
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowedAssociations:Landroid/util/ArrayMap;

    .line 338
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mBugreportWhitelistedPackages:Landroid/util/ArraySet;

    .line 339
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAppDataIsolationWhitelistedApps:Landroid/util/ArraySet;

    .line 342
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mPackageToUserTypeWhitelist:Landroid/util/ArrayMap;

    .line 343
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mPackageToUserTypeBlacklist:Landroid/util/ArrayMap;

    .line 345
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mRollbackWhitelistedPackages:Landroid/util/ArraySet;

    .line 346
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mWhitelistedStagedInstallers:Landroid/util/ArraySet;

    .line 349
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowedVendorApexes:Landroid/util/ArrayMap;

    .line 357
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mNamedActors:Ljava/util/Map;

    .line 369
    const-class v0, Lcom/android/server/ISystemConfigExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ISystemConfigExt;

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mSystemConfigExt:Lcom/android/server/ISystemConfigExt;

    .line 374
    const-class v0, Lcom/android/server/ISystemConfigSocExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ISystemConfigSocExt;

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mSystemConfigSocExt:Lcom/android/server/ISystemConfigSocExt;

    .line 617
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemConfig"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 618
    .local v0, "log":Landroid/util/TimingsTraceLog;
    const-string/jumbo v1, "readAllPermissions"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 620
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SystemConfig;->readAllPermissions()V

    .line 621
    invoke-direct {p0}, Lcom/android/server/SystemConfig;->readPublicNativeLibrariesList()V

    .line 624
    iget-object v1, p0, Lcom/android/server/SystemConfig;->mSystemConfigExt:Lcom/android/server/ISystemConfigExt;

    invoke-interface {v1}, Lcom/android/server/ISystemConfigExt;->readConfigInConstructor()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 628
    nop

    .line 629
    return-void

    .line 627
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 628
    throw v1
.end method

.method public constructor blacklist <init>(Z)V
    .locals 2
    .param p1, "readPermissions"    # Z

    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mGlobalGids:[I

    .line 120
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mSystemPermissions:Landroid/util/SparseArray;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mSplitPermissions:Ljava/util/ArrayList;

    .line 219
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mSharedLibraries:Landroid/util/ArrayMap;

    .line 223
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    .line 227
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mUnavailableFeatures:Landroid/util/ArraySet;

    .line 242
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mPermissions:Landroid/util/ArrayMap;

    .line 247
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowInPowerSaveExceptIdle:Landroid/util/ArraySet;

    .line 251
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowInPowerSave:Landroid/util/ArraySet;

    .line 255
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowInDataUsageSave:Landroid/util/ArraySet;

    .line 259
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowUnthrottledLocation:Landroid/util/ArraySet;

    .line 263
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowAdasSettings:Landroid/util/ArrayMap;

    .line 267
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowIgnoreLocationSettings:Landroid/util/ArrayMap;

    .line 271
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowImplicitBroadcasts:Landroid/util/ArraySet;

    .line 275
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mBgRestrictionExemption:Landroid/util/ArraySet;

    .line 280
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mLinkedApps:Landroid/util/ArraySet;

    .line 283
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mDefaultVrComponents:Landroid/util/ArraySet;

    .line 286
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mBackupTransportWhitelist:Landroid/util/ArraySet;

    .line 289
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mPackageComponentEnabledState:Landroid/util/ArrayMap;

    .line 293
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mHiddenApiPackageWhitelist:Landroid/util/ArraySet;

    .line 306
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mDisabledUntilUsedPreinstalledCarrierApps:Landroid/util/ArraySet;

    .line 310
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mDisabledUntilUsedPreinstalledCarrierAssociatedApps:Landroid/util/ArrayMap;

    .line 313
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mPrivAppPermissions:Landroid/util/ArrayMap;

    .line 314
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mPrivAppDenyPermissions:Landroid/util/ArrayMap;

    .line 316
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mVendorPrivAppPermissions:Landroid/util/ArrayMap;

    .line 317
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mVendorPrivAppDenyPermissions:Landroid/util/ArrayMap;

    .line 319
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mProductPrivAppPermissions:Landroid/util/ArrayMap;

    .line 320
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mProductPrivAppDenyPermissions:Landroid/util/ArrayMap;

    .line 322
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mSystemExtPrivAppPermissions:Landroid/util/ArrayMap;

    .line 323
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mSystemExtPrivAppDenyPermissions:Landroid/util/ArrayMap;

    .line 325
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mApexPrivAppPermissions:Landroid/util/ArrayMap;

    .line 327
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mApexPrivAppDenyPermissions:Landroid/util/ArrayMap;

    .line 330
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mOemPermissions:Landroid/util/ArrayMap;

    .line 336
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowedAssociations:Landroid/util/ArrayMap;

    .line 338
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mBugreportWhitelistedPackages:Landroid/util/ArraySet;

    .line 339
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAppDataIsolationWhitelistedApps:Landroid/util/ArraySet;

    .line 342
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mPackageToUserTypeWhitelist:Landroid/util/ArrayMap;

    .line 343
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mPackageToUserTypeBlacklist:Landroid/util/ArrayMap;

    .line 345
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mRollbackWhitelistedPackages:Landroid/util/ArraySet;

    .line 346
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mWhitelistedStagedInstallers:Landroid/util/ArraySet;

    .line 349
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowedVendorApexes:Landroid/util/ArrayMap;

    .line 357
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mNamedActors:Ljava/util/Map;

    .line 369
    const-class v0, Lcom/android/server/ISystemConfigExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ISystemConfigExt;

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mSystemConfigExt:Lcom/android/server/ISystemConfigExt;

    .line 374
    const-class v0, Lcom/android/server/ISystemConfigSocExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ISystemConfigSocExt;

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mSystemConfigSocExt:Lcom/android/server/ISystemConfigSocExt;

    .line 604
    const-string v0, "SystemConfig"

    if-eqz p1, :cond_0

    .line 605
    const-string v1, "Constructing a test SystemConfig"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-direct {p0}, Lcom/android/server/SystemConfig;->readAllPermissions()V

    .line 609
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mSystemConfigExt:Lcom/android/server/ISystemConfigExt;

    invoke-interface {v0}, Lcom/android/server/ISystemConfigExt;->readConfigInConstructor()V

    goto :goto_0

    .line 612
    :cond_0
    const-string v1, "Constructing an empty test SystemConfig"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :goto_0
    return-void
.end method

.method private blacklist addFeature(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # I

    .line 1594
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/FeatureInfo;

    .line 1595
    .local v0, "fi":Landroid/content/pm/FeatureInfo;
    if-nez v0, :cond_0

    .line 1596
    new-instance v1, Landroid/content/pm/FeatureInfo;

    invoke-direct {v1}, Landroid/content/pm/FeatureInfo;-><init>()V

    move-object v0, v1

    .line 1597
    iput-object p1, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 1598
    iput p2, v0, Landroid/content/pm/FeatureInfo;->version:I

    .line 1599
    iget-object v1, p0, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1601
    :cond_0
    iget v1, v0, Landroid/content/pm/FeatureInfo;->version:I

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/content/pm/FeatureInfo;->version:I

    .line 1603
    :goto_0
    return-void
.end method

.method private blacklist getApexModuleNameFromFilePath(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/lang/String;
    .locals 3
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "apexDirectoryPath"    # Ljava/nio/file/Path;

    .line 1910
    invoke-interface {p1, p2}, Ljava/nio/file/Path;->startsWith(Ljava/nio/file/Path;)Z

    move-result v0

    const-string v1, "File "

    if-eqz v0, :cond_1

    .line 1914
    invoke-interface {p1}, Ljava/nio/file/Path;->getNameCount()I

    move-result v0

    invoke-interface {p2}, Ljava/nio/file/Path;->getNameCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-le v0, v2, :cond_0

    .line 1918
    invoke-interface {p2}, Ljava/nio/file/Path;->getNameCount()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/nio/file/Path;->getName(I)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1915
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is in the APEX partition, but not inside a module."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1911
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not part of an APEX."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstance()Lcom/android/server/SystemConfig;
    .locals 2

    .line 378
    invoke-static {}, Lcom/android/server/SystemConfig;->isSystemProcess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    const-string v0, "SystemConfig"

    const-string v1, "SystemConfig is being accessed by a process other than system_server."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_0
    const-class v0, Lcom/android/server/SystemConfig;

    monitor-enter v0

    .line 384
    :try_start_0
    sget-object v1, Lcom/android/server/SystemConfig;->sInstance:Lcom/android/server/SystemConfig;

    if-nez v1, :cond_1

    .line 385
    new-instance v1, Lcom/android/server/SystemConfig;

    invoke-direct {v1}, Lcom/android/server/SystemConfig;-><init>()V

    sput-object v1, Lcom/android/server/SystemConfig;->sInstance:Lcom/android/server/SystemConfig;

    .line 387
    :cond_1
    sget-object v1, Lcom/android/server/SystemConfig;->sInstance:Lcom/android/server/SystemConfig;

    monitor-exit v0

    return-object v1

    .line 388
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist getStaticWrapper()Lcom/android/server/ISystemConfigStaticWrapper;
    .locals 1

    .line 1978
    sget-object v0, Lcom/android/server/SystemConfig;->STATIC_WRAPPER:Lcom/android/server/ISystemConfigStaticWrapper;

    return-object v0
.end method

.method private static blacklist isAtLeastSdkLevel(Ljava/lang/String;)Z
    .locals 2
    .param p0, "version"    # Ljava/lang/String;

    .line 126
    :try_start_0
    invoke-static {p0}, Landroid/internal/modules/utils/build/UnboundedSdkLevel;->isAtLeast(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 127
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return v1
.end method

.method private static blacklist isAtMostSdkLevel(Ljava/lang/String;)Z
    .locals 2
    .param p0, "version"    # Ljava/lang/String;

    .line 135
    :try_start_0
    invoke-static {p0}, Landroid/internal/modules/utils/build/UnboundedSdkLevel;->isAtMost(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 136
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x1

    return v1
.end method

.method private static blacklist isErofsSupported()Z
    .locals 3

    .line 1952
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "/sys/fs/erofs"

    new-array v2, v0, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    .line 1953
    .local v1, "path":Ljava/nio/file/Path;
    new-array v2, v0, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1954
    .end local v1    # "path":Ljava/nio/file/Path;
    :catch_0
    move-exception v1

    .line 1955
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method private static blacklist isKernelVersionAtLeast(II)Z
    .locals 6
    .param p0, "major"    # I
    .param p1, "minor"    # I

    .line 1960
    invoke-static {}, Landroid/os/VintfRuntimeInfo;->getKernelVersion()Ljava/lang/String;

    move-result-object v0

    .line 1961
    .local v0, "kernelVersion":Ljava/lang/String;
    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1962
    .local v1, "parts":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ge v2, v4, :cond_0

    .line 1963
    return v3

    .line 1966
    :cond_0
    :try_start_0
    aget-object v2, v1, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1967
    .local v2, "majorVersion":I
    const/4 v4, 0x1

    aget-object v5, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1968
    .local v5, "minorVersion":I
    if-gt v2, p0, :cond_1

    if-ne v2, p0, :cond_2

    if-lt v5, p1, :cond_2

    :cond_1
    move v3, v4

    :cond_2
    return v3

    .line 1969
    .end local v2    # "majorVersion":I
    .end local v5    # "minorVersion":I
    :catch_0
    move-exception v2

    .line 1970
    .local v2, "e":Ljava/lang/NumberFormatException;
    return v3
.end method

.method private static blacklist isSystemProcess()Z
    .locals 2

    .line 1947
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "permFile"    # Ljava/io/File;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "> not allowed in partition of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 796
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 795
    const-string v1, "SystemConfig"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    return-void
.end method

.method private blacklist readAllPermissions()V
    .locals 18

    .line 632
    move-object/from16 v0, p0

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 635
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    nop

    .line 636
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "etc"

    const-string/jumbo v4, "sysconfig"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v5

    .line 635
    invoke-static {v2, v5}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const/4 v5, -0x1

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 639
    nop

    .line 640
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v6, "permissions"

    filled-new-array {v3, v6}, [Ljava/lang/String;

    move-result-object v7

    .line 639
    invoke-static {v2, v7}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 643
    const/16 v2, 0x493

    .line 645
    .local v2, "vendorPermissionFlag":I
    sget v7, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    const/16 v8, 0x1b

    if-gt v7, v8, :cond_0

    .line 647
    or-int/lit8 v2, v2, 0xc

    .line 649
    :cond_0
    nop

    .line 650
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v7

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v8

    .line 649
    invoke-static {v7, v8}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v0, v1, v7, v2}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 651
    nop

    .line 652
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v7

    filled-new-array {v3, v6}, [Ljava/lang/String;

    move-result-object v8

    .line 651
    invoke-static {v7, v8}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v0, v1, v7, v2}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 654
    const-string/jumbo v7, "ro.boot.product.vendor.sku"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 655
    .local v7, "vendorSkuProperty":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    const-string/jumbo v10, "sku_"

    const/4 v11, 0x2

    const/4 v12, 0x3

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-nez v9, :cond_1

    .line 656
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 657
    .local v9, "vendorSkuDir":Ljava/lang/String;
    nop

    .line 658
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v15

    new-array v5, v12, [Ljava/lang/String;

    aput-object v3, v5, v14

    aput-object v4, v5, v13

    aput-object v9, v5, v11

    .line 657
    invoke-static {v15, v5}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v0, v1, v5, v2}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 660
    nop

    .line 661
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v5

    new-array v15, v12, [Ljava/lang/String;

    aput-object v3, v15, v14

    aput-object v6, v15, v13

    aput-object v9, v15, v11

    .line 660
    invoke-static {v5, v15}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v0, v1, v5, v2}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 665
    .end local v9    # "vendorSkuDir":Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, "ro.radio.noril"

    invoke-static {v5, v14}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 666
    .local v5, "noRilSupport":Z
    if-eqz v5, :cond_2

    .line 667
    const-string/jumbo v9, "noRil"

    .line 668
    .local v9, "noRilDir":Ljava/lang/String;
    nop

    .line 669
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v15

    new-array v11, v12, [Ljava/lang/String;

    aput-object v3, v11, v14

    aput-object v4, v11, v13

    const/16 v17, 0x2

    aput-object v9, v11, v17

    .line 668
    invoke-static {v15, v11}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v0, v1, v11, v2}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 671
    nop

    .line 672
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v11

    new-array v15, v12, [Ljava/lang/String;

    aput-object v3, v15, v14

    aput-object v6, v15, v13

    aput-object v9, v15, v17

    .line 671
    invoke-static {v11, v15}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v0, v1, v11, v2}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 678
    .end local v9    # "noRilDir":Ljava/lang/String;
    :cond_2
    move v9, v2

    .line 679
    .local v9, "odmPermissionFlag":I
    nop

    .line 680
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v11

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v15

    .line 679
    invoke-static {v11, v15}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v0, v1, v11, v9}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 681
    nop

    .line 682
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v11

    filled-new-array {v3, v6}, [Ljava/lang/String;

    move-result-object v15

    .line 681
    invoke-static {v11, v15}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v0, v1, v11, v9}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 684
    const-string/jumbo v11, "ro.boot.product.hardware.sku"

    invoke-static {v11, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 685
    .local v8, "skuProperty":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3

    .line 686
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 688
    .local v10, "skuDir":Ljava/lang/String;
    nop

    .line 689
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v11

    new-array v15, v12, [Ljava/lang/String;

    aput-object v3, v15, v14

    aput-object v4, v15, v13

    const/16 v17, 0x2

    aput-object v10, v15, v17

    .line 688
    invoke-static {v11, v15}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v0, v1, v11, v9}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 690
    nop

    .line 691
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v11

    new-array v12, v12, [Ljava/lang/String;

    aput-object v3, v12, v14

    aput-object v6, v12, v13

    aput-object v10, v12, v17

    .line 690
    invoke-static {v11, v12}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v0, v1, v11, v9}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 696
    .end local v10    # "skuDir":Ljava/lang/String;
    :cond_3
    const/16 v10, 0x4a1

    .line 698
    .local v10, "oemPermissionFlag":I
    nop

    .line 699
    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object v11

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v12

    .line 698
    invoke-static {v11, v12}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v0, v1, v11, v10}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 700
    nop

    .line 701
    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object v11

    filled-new-array {v3, v6}, [Ljava/lang/String;

    move-result-object v12

    .line 700
    invoke-static {v11, v12}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v0, v1, v11, v10}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 706
    const/16 v11, 0x7df

    .line 710
    .local v11, "productPermissionFlag":I
    sget v12, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    const/16 v13, 0x1e

    if-gt v12, v13, :cond_4

    .line 713
    const/4 v11, -0x1

    .line 715
    :cond_4
    nop

    .line 716
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v12

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v13

    .line 715
    invoke-static {v12, v13}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    invoke-virtual {v0, v1, v12, v11}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 717
    nop

    .line 718
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v12

    filled-new-array {v3, v6}, [Ljava/lang/String;

    move-result-object v13

    .line 717
    invoke-static {v12, v13}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    invoke-virtual {v0, v1, v12, v11}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 721
    nop

    .line 722
    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    move-result-object v12

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v4

    .line 721
    invoke-static {v12, v4}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    const/4 v12, -0x1

    invoke-virtual {v0, v1, v4, v12}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 723
    nop

    .line 724
    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    move-result-object v4

    filled-new-array {v3, v6}, [Ljava/lang/String;

    move-result-object v13

    .line 723
    invoke-static {v4, v13}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v0, v1, v4, v12}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 727
    invoke-static {}, Lcom/android/server/SystemConfig;->isSystemProcess()Z

    move-result v4

    if-nez v4, :cond_5

    .line 728
    return-void

    .line 731
    :cond_5
    const/16 v4, 0x13

    .line 733
    .local v4, "apexPermissionFlag":I
    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    move-result-object v12

    invoke-static {v12}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v12

    array-length v13, v12

    :goto_0
    if-ge v14, v13, :cond_8

    aget-object v15, v12, v14

    .line 734
    .local v15, "f":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->isFile()Z

    move-result v16

    if-nez v16, :cond_7

    move/from16 v16, v2

    .end local v2    # "vendorPermissionFlag":I
    .local v16, "vendorPermissionFlag":I
    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    move/from16 v17, v5

    .end local v5    # "noRilSupport":Z
    .local v17, "noRilSupport":Z
    const-string v5, "@"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 735
    goto :goto_1

    .line 737
    :cond_6
    filled-new-array {v3, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    goto :goto_1

    .line 734
    .end local v16    # "vendorPermissionFlag":I
    .end local v17    # "noRilSupport":Z
    .restart local v2    # "vendorPermissionFlag":I
    .restart local v5    # "noRilSupport":Z
    :cond_7
    move/from16 v16, v2

    move/from16 v17, v5

    .line 733
    .end local v2    # "vendorPermissionFlag":I
    .end local v5    # "noRilSupport":Z
    .end local v15    # "f":Ljava/io/File;
    .restart local v16    # "vendorPermissionFlag":I
    .restart local v17    # "noRilSupport":Z
    :goto_1
    add-int/lit8 v14, v14, 0x1

    move/from16 v2, v16

    move/from16 v5, v17

    goto :goto_0

    .line 740
    .end local v16    # "vendorPermissionFlag":I
    .end local v17    # "noRilSupport":Z
    .restart local v2    # "vendorPermissionFlag":I
    .restart local v5    # "noRilSupport":Z
    :cond_8
    return-void
.end method

.method private blacklist readComponentOverrides(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;)V
    .locals 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "permFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1826
    const/4 v0, 0x0

    const-string/jumbo v1, "package"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1827
    .local v1, "pkgname":Ljava/lang/String;
    const-string v2, " at "

    const-string v3, "SystemConfig"

    if-nez v1, :cond_0

    .line 1828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<component-override> without package in "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1829
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1828
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    return-void

    .line 1833
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 1835
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    .line 1836
    .local v4, "depth":I
    :cond_1
    :goto_0
    invoke-static {p1, v4}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1837
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "component"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1838
    const-string v5, "class"

    invoke-interface {p1, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1839
    .local v5, "clsname":Ljava/lang/String;
    const-string v6, "enabled"

    invoke-interface {p1, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1840
    .local v6, "enabled":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 1841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<component> without class in "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1842
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1841
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    return-void

    .line 1844
    :cond_2
    if-nez v6, :cond_3

    .line 1845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<component> without enabled in "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1846
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1845
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    return-void

    .line 1850
    :cond_3
    const-string v7, "."

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1851
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1854
    :cond_4
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 1856
    iget-object v7, p0, Lcom/android/server/SystemConfig;->mPackageComponentEnabledState:Landroid/util/ArrayMap;

    .line 1857
    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    .line 1858
    .local v7, "componentEnabledStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-nez v7, :cond_5

    .line 1859
    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    move-object v7, v8

    .line 1860
    iget-object v8, p0, Lcom/android/server/SystemConfig;->mPackageComponentEnabledState:Landroid/util/ArrayMap;

    invoke-virtual {v8, v1, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1864
    :cond_5
    const-string v8, "false"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1865
    .end local v5    # "clsname":Ljava/lang/String;
    .end local v6    # "enabled":Ljava/lang/String;
    .end local v7    # "componentEnabledStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    goto/16 :goto_0

    .line 1867
    :cond_6
    return-void
.end method

.method private blacklist readInstallInUserType(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Ljava/util/Map;)V
    .locals 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1703
    .local p2, "doInstallMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .local p3, "nonInstallMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    const-string/jumbo v1, "package"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1704
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "SystemConfig"

    if-eqz v2, :cond_0

    .line 1705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "package is required for <install-in-user-type> in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1706
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1705
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    return-void

    .line 1710
    :cond_0
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 1711
    .local v2, "userTypesYes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 1712
    .local v4, "userTypesNo":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 1713
    .local v5, "depth":I
    :goto_0
    invoke-static {p1, v5}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1714
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1715
    .local v6, "name":Ljava/lang/String;
    const-string v7, "install-in"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string/jumbo v8, "user-type is required for <install-in-user-type> in "

    const-string/jumbo v9, "user-type"

    if-eqz v7, :cond_3

    .line 1716
    invoke-interface {p1, v0, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1717
    .local v7, "userType":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1718
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1719
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1718
    invoke-static {v3, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    goto :goto_0

    .line 1722
    :cond_1
    if-nez v2, :cond_2

    .line 1723
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    move-object v2, v8

    .line 1724
    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1726
    :cond_2
    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1727
    .end local v7    # "userType":Ljava/lang/String;
    goto :goto_1

    :cond_3
    const-string v7, "do-not-install-in"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1728
    invoke-interface {p1, v0, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1729
    .restart local v7    # "userType":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1730
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1731
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1730
    invoke-static {v3, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    goto :goto_0

    .line 1734
    :cond_4
    if-nez v4, :cond_5

    .line 1735
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    move-object v4, v8

    .line 1736
    invoke-interface {p3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1738
    :cond_5
    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1739
    .end local v7    # "userType":Ljava/lang/String;
    goto :goto_1

    .line 1740
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unrecognized tag in <install-in-user-type> in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1741
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1740
    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    .end local v6    # "name":Ljava/lang/String;
    :goto_1
    goto/16 :goto_0

    .line 1744
    :cond_7
    return-void
.end method

.method private blacklist readPermissionsFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V
    .locals 40
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "permFile"    # Ljava/io/File;
    .param p3, "permissionFlag"    # I

    .line 803
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    const-string v5, "Got exception parsing permissions."

    const-string v6, "SystemConfig"

    :try_start_0
    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9

    .line 807
    .local v7, "permReader":Ljava/io/FileReader;
    nop

    .line 808
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Reading permissions from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v8

    .line 813
    .local v8, "lowRam":Z
    :try_start_1
    invoke-interface {v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 816
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v15

    move/from16 v16, v15

    .local v16, "type":I
    const/4 v9, 0x2

    const/4 v13, 0x1

    if-eq v15, v9, :cond_0

    move/from16 v15, v16

    .end local v16    # "type":I
    .local v15, "type":I
    if-eq v15, v13, :cond_1

    goto :goto_0

    .end local v15    # "type":I
    .restart local v16    # "type":I
    :cond_0
    move/from16 v15, v16

    .line 821
    .end local v16    # "type":I
    .restart local v15    # "type":I
    :cond_1
    if-ne v15, v9, :cond_7a

    .line 825
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "permissions"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v9, :cond_3

    :try_start_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "config"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 828
    iget-object v9, v1, Lcom/android/server/SystemConfig;->mSystemConfigExt:Lcom/android/server/ISystemConfigExt;

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v3}, Lcom/android/server/ISystemConfigExt;->skipTagExceptionAndReturn(Ljava/lang/String;Ljava/io/File;)Z

    move-result v9
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v9, :cond_2

    .line 1540
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 829
    return-void

    .line 832
    :cond_2
    :try_start_3
    new-instance v9, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unexpected start tag in "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, ": found "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 833
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, ", expected \'permissions\' or \'config\'"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v7    # "permReader":Ljava/io/FileReader;
    .end local v8    # "lowRam":Z
    .end local p0    # "this":Lcom/android/server/SystemConfig;
    .end local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p2    # "permFile":Ljava/io/File;
    .end local p3    # "permissionFlag":I
    throw v9
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1540
    .end local v15    # "type":I
    .restart local v7    # "permReader":Ljava/io/FileReader;
    .restart local v8    # "lowRam":Z
    .restart local p0    # "this":Lcom/android/server/SystemConfig;
    .restart local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p2    # "permFile":Ljava/io/File;
    .restart local p3    # "permissionFlag":I
    :catchall_0
    move-exception v0

    move-object v4, v0

    move-object/from16 v25, v7

    move/from16 v27, v8

    goto/16 :goto_59

    .line 1537
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object/from16 v26, v5

    move-object/from16 v25, v7

    move/from16 v27, v8

    goto/16 :goto_50

    .line 1535
    :catch_1
    move-exception v0

    move-object v4, v0

    move-object/from16 v25, v7

    move/from16 v27, v8

    goto/16 :goto_51

    .line 836
    .restart local v15    # "type":I
    :cond_3
    const/4 v9, -0x1

    if-ne v4, v9, :cond_4

    move v10, v13

    goto :goto_1

    :cond_4
    const/4 v10, 0x0

    .line 837
    .local v10, "allowAll":Z
    :goto_1
    and-int/lit8 v17, v4, 0x2

    if-eqz v17, :cond_5

    move/from16 v17, v13

    goto :goto_2

    :cond_5
    const/16 v17, 0x0

    .line 838
    .local v17, "allowLibs":Z
    :goto_2
    and-int/lit8 v18, v4, 0x1

    if-eqz v18, :cond_6

    move/from16 v18, v13

    goto :goto_3

    :cond_6
    const/16 v18, 0x0

    .line 839
    .local v18, "allowFeatures":Z
    :goto_3
    and-int/lit8 v19, v4, 0x4

    if-eqz v19, :cond_7

    move/from16 v19, v13

    goto :goto_4

    :cond_7
    const/16 v19, 0x0

    .line 840
    .local v19, "allowPermissions":Z
    :goto_4
    and-int/lit8 v20, v4, 0x8

    if-eqz v20, :cond_8

    move/from16 v20, v13

    goto :goto_5

    :cond_8
    const/16 v20, 0x0

    .line 841
    .local v20, "allowAppConfigs":Z
    :goto_5
    and-int/lit8 v21, v4, 0x10

    if-eqz v21, :cond_9

    move/from16 v21, v13

    goto :goto_6

    :cond_9
    const/16 v21, 0x0

    .line 843
    .local v21, "allowPrivappPermissions":Z
    :goto_6
    and-int/lit8 v22, v4, 0x20

    if-eqz v22, :cond_a

    move/from16 v22, v13

    goto :goto_7

    :cond_a
    const/16 v22, 0x0

    .line 844
    .local v22, "allowOemPermissions":Z
    :goto_7
    and-int/lit8 v23, v4, 0x40

    if-eqz v23, :cond_b

    move/from16 v23, v13

    goto :goto_8

    :cond_b
    const/16 v23, 0x0

    .line 846
    .local v23, "allowApiWhitelisting":Z
    :goto_8
    and-int/lit16 v9, v4, 0x80

    if-eqz v9, :cond_c

    move v9, v13

    goto :goto_9

    :cond_c
    const/4 v9, 0x0

    .line 847
    .local v9, "allowAssociations":Z
    :goto_9
    and-int/lit16 v11, v4, 0x100

    if-eqz v11, :cond_d

    move v11, v13

    goto :goto_a

    :cond_d
    const/4 v11, 0x0

    .line 849
    .local v11, "allowOverrideAppRestrictions":Z
    :goto_a
    and-int/lit16 v12, v4, 0x200

    if-eqz v12, :cond_e

    move v12, v13

    goto :goto_b

    :cond_e
    const/4 v12, 0x0

    .line 851
    .local v12, "allowImplicitBroadcasts":Z
    :goto_b
    and-int/lit16 v14, v4, 0x400

    if-eqz v14, :cond_f

    move v14, v13

    goto :goto_c

    :cond_f
    const/4 v14, 0x0

    .line 853
    .local v14, "allowVendorApex":Z
    :goto_c
    :try_start_4
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 854
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v13
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v4, 0x1

    if-ne v13, v4, :cond_10

    .line 855
    nop

    .line 1540
    .end local v9    # "allowAssociations":Z
    .end local v10    # "allowAll":Z
    .end local v11    # "allowOverrideAppRestrictions":Z
    .end local v12    # "allowImplicitBroadcasts":Z
    .end local v14    # "allowVendorApex":Z
    .end local v15    # "type":I
    .end local v17    # "allowLibs":Z
    .end local v18    # "allowFeatures":Z
    .end local v19    # "allowPermissions":Z
    .end local v20    # "allowAppConfigs":Z
    .end local v21    # "allowPrivappPermissions":Z
    .end local v22    # "allowOemPermissions":Z
    .end local v23    # "allowApiWhitelisting":Z
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1541
    move-object/from16 v25, v7

    move/from16 v27, v8

    goto/16 :goto_53

    .line 858
    .restart local v9    # "allowAssociations":Z
    .restart local v10    # "allowAll":Z
    .restart local v11    # "allowOverrideAppRestrictions":Z
    .restart local v12    # "allowImplicitBroadcasts":Z
    .restart local v14    # "allowVendorApex":Z
    .restart local v15    # "type":I
    .restart local v17    # "allowLibs":Z
    .restart local v18    # "allowFeatures":Z
    .restart local v19    # "allowPermissions":Z
    .restart local v20    # "allowAppConfigs":Z
    .restart local v21    # "allowPrivappPermissions":Z
    .restart local v22    # "allowOemPermissions":Z
    .restart local v23    # "allowApiWhitelisting":Z
    :cond_10
    :try_start_5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 859
    .local v4, "name":Ljava/lang/String;
    if-nez v4, :cond_11

    .line 860
    :try_start_6
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 861
    move/from16 v4, p3

    const/4 v13, 0x1

    goto :goto_c

    .line 863
    :cond_11
    :try_start_7
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v13
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    sparse-switch v13, :sswitch_data_0

    :cond_12
    goto/16 :goto_d

    :sswitch_0
    :try_start_8
    const-string v13, "allow-implicit-broadcast"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    const/16 v13, 0xe

    goto/16 :goto_e

    :sswitch_1
    const-string/jumbo v13, "overlay-config-signature"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    const/16 v13, 0x1e

    goto/16 :goto_e

    :sswitch_2
    const-string v13, "bugreport-whitelisted"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    const/16 v13, 0x1b

    goto/16 :goto_e

    :sswitch_3
    const-string/jumbo v13, "privapp-permissions"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    const/16 v13, 0x16

    goto/16 :goto_e

    :sswitch_4
    const-string v13, "disabled-until-used-preinstalled-carrier-associated-app"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    const/16 v13, 0x14

    goto/16 :goto_e

    :sswitch_5
    const-string v13, "default-enabled-vr-app"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    const/16 v13, 0x11

    goto/16 :goto_e

    :sswitch_6
    const-string v13, "app-data-isolation-whitelisted-app"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    const/16 v13, 0x1a

    goto/16 :goto_e

    :sswitch_7
    const-string/jumbo v13, "split-permission"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    const/4 v13, 0x3

    goto/16 :goto_e

    :sswitch_8
    const-string v13, "app-link"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    const/16 v13, 0xf

    goto/16 :goto_e

    :sswitch_9
    const-string/jumbo v13, "whitelisted-staged-installer"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    const/16 v13, 0x20

    goto/16 :goto_e

    :sswitch_a
    const-string/jumbo v13, "oem-permissions"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    const/16 v13, 0x17

    goto/16 :goto_e

    :sswitch_b
    const-string v13, "apex-library"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    const/4 v13, 0x4

    goto/16 :goto_e

    :sswitch_c
    const-string/jumbo v13, "rollback-whitelisted-app"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    const/16 v13, 0x1f

    goto/16 :goto_e

    :sswitch_d
    const-string v13, "assign-permission"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    const/4 v13, 0x2

    goto/16 :goto_e

    :sswitch_e
    const-string v13, "allow-in-data-usage-save"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    const/16 v13, 0xa

    goto/16 :goto_e

    :sswitch_f
    const-string v13, "allowed-vendor-apex"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    const/16 v13, 0x21

    goto/16 :goto_e

    :sswitch_10
    const-string v13, "backup-transport-whitelisted-service"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    const/16 v13, 0x13

    goto/16 :goto_e

    :sswitch_11
    const-string v13, "hidden-api-whitelisted-app"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    const/16 v13, 0x18

    goto/16 :goto_e

    :sswitch_12
    const-string/jumbo v13, "library"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    const/4 v13, 0x5

    goto/16 :goto_e

    :sswitch_13
    const-string v13, "group"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    const/4 v13, 0x0

    goto/16 :goto_e

    :sswitch_14
    const-string v13, "install-in-user-type"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    const/16 v13, 0x1c

    goto/16 :goto_e

    :sswitch_15
    const-string/jumbo v13, "permission"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    const/4 v13, 0x1

    goto/16 :goto_e

    :sswitch_16
    const-string v13, "allow-ignore-location-settings"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    const/16 v13, 0xd

    goto/16 :goto_e

    :sswitch_17
    const-string v13, "bg-restriction-exemption"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    const/16 v13, 0x10

    goto/16 :goto_e

    :sswitch_18
    const-string v13, "allow-in-power-save-except-idle"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    const/16 v13, 0x8

    goto/16 :goto_e

    :sswitch_19
    const-string/jumbo v13, "unavailable-feature"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    const/4 v13, 0x7

    goto :goto_e

    :sswitch_1a
    const-string v13, "feature"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    const/4 v13, 0x6

    goto :goto_e

    :sswitch_1b
    const-string v13, "allow-association"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    const/16 v13, 0x19

    goto :goto_e

    :sswitch_1c
    const-string v13, "disabled-until-used-preinstalled-carrier-app"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    const/16 v13, 0x15

    goto :goto_e

    :sswitch_1d
    const-string v13, "component-override"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    const/16 v13, 0x12

    goto :goto_e

    :sswitch_1e
    const-string/jumbo v13, "named-actor"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    const/16 v13, 0x1d

    goto :goto_e

    :sswitch_1f
    const-string v13, "allow-adas-location-settings"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    const/16 v13, 0xc

    goto :goto_e

    :sswitch_20
    const-string v13, "allow-in-power-save"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    const/16 v13, 0x9

    goto :goto_e

    :sswitch_21
    const-string v13, "allow-unthrottled-location"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v13, :cond_12

    const/16 v13, 0xb

    goto :goto_e

    :goto_d
    const/4 v13, -0x1

    :goto_e
    move/from16 v24, v15

    .end local v15    # "type":I
    .local v24, "type":I
    const-string v15, "> without name in "

    move-object/from16 v25, v7

    .end local v7    # "permReader":Ljava/io/FileReader;
    .local v25, "permReader":Ljava/io/FileReader;
    const-string v7, "/"

    move-object/from16 v26, v5

    const-string/jumbo v5, "name"

    move/from16 v27, v8

    .end local v8    # "lowRam":Z
    .local v27, "lowRam":Z
    const-string v8, "> without package in "

    move-object/from16 v28, v15

    const-string/jumbo v15, "package"

    move/from16 v29, v12

    .end local v12    # "allowImplicitBroadcasts":Z
    .local v29, "allowImplicitBroadcasts":Z
    const-string v12, "<"

    move/from16 v30, v11

    .end local v11    # "allowOverrideAppRestrictions":Z
    .local v30, "allowOverrideAppRestrictions":Z
    const-string v11, " at "

    move/from16 v31, v9

    .end local v9    # "allowAssociations":Z
    .local v31, "allowAssociations":Z
    const/4 v9, 0x0

    packed-switch v13, :pswitch_data_0

    .line 1529
    move/from16 v39, v10

    move/from16 v38, v14

    .end local v10    # "allowAll":Z
    .end local v14    # "allowVendorApex":Z
    .local v38, "allowVendorApex":Z
    .local v39, "allowAll":Z
    goto/16 :goto_4c

    .line 1508
    .end local v38    # "allowVendorApex":Z
    .end local v39    # "allowAll":Z
    .restart local v10    # "allowAll":Z
    .restart local v14    # "allowVendorApex":Z
    :pswitch_0
    if-eqz v14, :cond_16

    .line 1509
    :try_start_9
    invoke-interface {v2, v9, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1510
    .local v5, "pkgName":Ljava/lang/String;
    const-string v7, "installerPackage"

    invoke-interface {v2, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1512
    .local v7, "installerPkgName":Ljava/lang/String;
    if-nez v5, :cond_13

    .line 1513
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1514
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1513
    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    :cond_13
    if-nez v7, :cond_14

    .line 1517
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "> without installerPackage in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1518
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1517
    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    :cond_14
    if-eqz v5, :cond_15

    if-eqz v7, :cond_15

    .line 1521
    iget-object v8, v1, Lcom/android/server/SystemConfig;->mAllowedVendorApexes:Landroid/util/ArrayMap;

    invoke-virtual {v8, v5, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1523
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v7    # "installerPkgName":Ljava/lang/String;
    :cond_15
    goto :goto_f

    .line 1524
    :cond_16
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1526
    :goto_f
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1527
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_4d

    .line 1485
    :pswitch_1
    if-eqz v20, :cond_1a

    .line 1486
    invoke-interface {v2, v9, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1487
    .local v5, "pkgname":Ljava/lang/String;
    const-string v7, "isModulesInstaller"

    const/4 v9, 0x0

    invoke-static {v2, v7, v9}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v7

    .line 1489
    .local v7, "isModulesInstaller":Z
    if-nez v5, :cond_17

    .line 1490
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1491
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1490
    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 1493
    :cond_17
    iget-object v8, v1, Lcom/android/server/SystemConfig;->mWhitelistedStagedInstallers:Landroid/util/ArraySet;

    invoke-virtual {v8, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1495
    :goto_10
    if-eqz v7, :cond_19

    .line 1496
    iget-object v8, v1, Lcom/android/server/SystemConfig;->mModulesInstallerPackageName:Ljava/lang/String;

    if-nez v8, :cond_18

    .line 1500
    iput-object v5, v1, Lcom/android/server/SystemConfig;->mModulesInstallerPackageName:Ljava/lang/String;

    goto :goto_11

    .line 1497
    :cond_18
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Multiple modules installers"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v25    # "permReader":Ljava/io/FileReader;
    .end local v27    # "lowRam":Z
    .end local p0    # "this":Lcom/android/server/SystemConfig;
    .end local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p2    # "permFile":Ljava/io/File;
    .end local p3    # "permissionFlag":I
    throw v8

    .line 1502
    .end local v5    # "pkgname":Ljava/lang/String;
    .end local v7    # "isModulesInstaller":Z
    .restart local v25    # "permReader":Ljava/io/FileReader;
    .restart local v27    # "lowRam":Z
    .restart local p0    # "this":Lcom/android/server/SystemConfig;
    .restart local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p2    # "permFile":Ljava/io/File;
    .restart local p3    # "permissionFlag":I
    :cond_19
    :goto_11
    goto :goto_12

    .line 1503
    :cond_1a
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1505
    :goto_12
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1506
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_4d

    .line 1475
    :pswitch_2
    invoke-interface {v2, v9, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1476
    .restart local v5    # "pkgname":Ljava/lang/String;
    if-nez v5, :cond_1b

    .line 1477
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1478
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1477
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 1480
    :cond_1b
    iget-object v7, v1, Lcom/android/server/SystemConfig;->mRollbackWhitelistedPackages:Landroid/util/ArraySet;

    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1482
    :goto_13
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1483
    .end local v5    # "pkgname":Ljava/lang/String;
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_4d

    .line 1454
    :pswitch_3
    if-eqz v10, :cond_1e

    .line 1455
    invoke-interface {v2, v9, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1456
    .local v5, "pkgName":Ljava/lang/String;
    if-nez v5, :cond_1c

    .line 1457
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1458
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1457
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 1460
    :cond_1c
    iget-object v7, v1, Lcom/android/server/SystemConfig;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 1461
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/SystemConfig;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    .line 1469
    .end local v5    # "pkgName":Ljava/lang/String;
    :goto_14
    goto :goto_15

    .line 1463
    .restart local v5    # "pkgName":Ljava/lang/String;
    :cond_1d
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Reference signature package defined as both "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/android/server/SystemConfig;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " and "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v25    # "permReader":Ljava/io/FileReader;
    .end local v27    # "lowRam":Z
    .end local p0    # "this":Lcom/android/server/SystemConfig;
    .end local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p2    # "permFile":Ljava/io/File;
    .end local p3    # "permissionFlag":I
    throw v7

    .line 1470
    .end local v5    # "pkgName":Ljava/lang/String;
    .restart local v25    # "permReader":Ljava/io/FileReader;
    .restart local v27    # "lowRam":Z
    .restart local p0    # "this":Lcom/android/server/SystemConfig;
    .restart local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p2    # "permFile":Ljava/io/File;
    .restart local p3    # "permissionFlag":I
    :cond_1e
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1472
    :goto_15
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1473
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_4d

    .line 1416
    :pswitch_4
    const-string/jumbo v8, "namespace"

    .line 1417
    invoke-interface {v2, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1416
    invoke-static {v8}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1418
    .local v8, "namespace":Ljava/lang/String;
    invoke-interface {v2, v9, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1419
    .local v5, "actorName":Ljava/lang/String;
    nop

    .line 1420
    invoke-interface {v2, v9, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1419
    invoke-static {v9}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1421
    .local v9, "pkgName":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1f

    .line 1422
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "> without namespace in "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1423
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1422
    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 1424
    :cond_1f
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_20

    .line 1425
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "> without actor name in "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1426
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1425
    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 1427
    :cond_20
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_21

    .line 1428
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "> without package name in "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1429
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1428
    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 1430
    :cond_21
    const-string v11, "android"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_25

    .line 1434
    iget-object v11, v1, Lcom/android/server/SystemConfig;->mNamedActors:Ljava/util/Map;

    if-nez v11, :cond_22

    .line 1435
    new-instance v11, Landroid/util/ArrayMap;

    invoke-direct {v11}, Landroid/util/ArrayMap;-><init>()V

    iput-object v11, v1, Lcom/android/server/SystemConfig;->mNamedActors:Ljava/util/Map;

    .line 1438
    :cond_22
    iget-object v11, v1, Lcom/android/server/SystemConfig;->mNamedActors:Ljava/util/Map;

    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    .line 1439
    .local v11, "nameToPkgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v11, :cond_23

    .line 1440
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    move-object v11, v7

    .line 1441
    iget-object v7, v1, Lcom/android/server/SystemConfig;->mNamedActors:Ljava/util/Map;

    invoke-interface {v7, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 1442
    :cond_23
    invoke-interface {v11, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_24

    .line 1449
    :goto_16
    invoke-interface {v11, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1451
    .end local v11    # "nameToPkgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_17
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1452
    .end local v5    # "actorName":Ljava/lang/String;
    .end local v8    # "namespace":Ljava/lang/String;
    .end local v9    # "pkgName":Ljava/lang/String;
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_4d

    .line 1443
    .restart local v5    # "actorName":Ljava/lang/String;
    .restart local v8    # "namespace":Ljava/lang/String;
    .restart local v9    # "pkgName":Ljava/lang/String;
    .restart local v11    # "nameToPkgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_24
    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1444
    .local v12, "existing":Ljava/lang/String;
    new-instance v13, Ljava/lang/IllegalStateException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v28, v11

    .end local v11    # "nameToPkgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v28, "nameToPkgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v11, "Duplicate actor definition for "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, "; defined as both "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " and "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v13, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v25    # "permReader":Ljava/io/FileReader;
    .end local v27    # "lowRam":Z
    .end local p0    # "this":Lcom/android/server/SystemConfig;
    .end local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p2    # "permFile":Ljava/io/File;
    .end local p3    # "permissionFlag":I
    throw v13

    .line 1431
    .end local v12    # "existing":Ljava/lang/String;
    .end local v28    # "nameToPkgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v25    # "permReader":Ljava/io/FileReader;
    .restart local v27    # "lowRam":Z
    .restart local p0    # "this":Lcom/android/server/SystemConfig;
    .restart local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p2    # "permFile":Ljava/io/File;
    .restart local p3    # "permissionFlag":I
    :cond_25
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Defining "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " as "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " for the android namespace is not allowed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v25    # "permReader":Ljava/io/FileReader;
    .end local v27    # "lowRam":Z
    .end local p0    # "this":Lcom/android/server/SystemConfig;
    .end local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p2    # "permFile":Ljava/io/File;
    .end local p3    # "permissionFlag":I
    throw v7

    .line 1412
    .end local v5    # "actorName":Ljava/lang/String;
    .end local v8    # "namespace":Ljava/lang/String;
    .end local v9    # "pkgName":Ljava/lang/String;
    .restart local v25    # "permReader":Ljava/io/FileReader;
    .restart local v27    # "lowRam":Z
    .restart local p0    # "this":Lcom/android/server/SystemConfig;
    .restart local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p2    # "permFile":Ljava/io/File;
    .restart local p3    # "permissionFlag":I
    :pswitch_5
    iget-object v5, v1, Lcom/android/server/SystemConfig;->mPackageToUserTypeWhitelist:Landroid/util/ArrayMap;

    iget-object v7, v1, Lcom/android/server/SystemConfig;->mPackageToUserTypeBlacklist:Landroid/util/ArrayMap;

    invoke-direct {v1, v2, v5, v7}, Lcom/android/server/SystemConfig;->readInstallInUserType(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Ljava/util/Map;)V

    .line 1414
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_4d

    .line 1401
    :pswitch_6
    invoke-interface {v2, v9, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1402
    .local v5, "pkgname":Ljava/lang/String;
    if-nez v5, :cond_26

    .line 1403
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1404
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1403
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 1406
    :cond_26
    iget-object v7, v1, Lcom/android/server/SystemConfig;->mBugreportWhitelistedPackages:Landroid/util/ArraySet;

    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1408
    :goto_18
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1409
    .end local v5    # "pkgname":Ljava/lang/String;
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_4d

    .line 1391
    :pswitch_7
    invoke-interface {v2, v9, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1392
    .restart local v5    # "pkgname":Ljava/lang/String;
    if-nez v5, :cond_27

    .line 1393
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1394
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1393
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 1396
    :cond_27
    iget-object v7, v1, Lcom/android/server/SystemConfig;->mAppDataIsolationWhitelistedApps:Landroid/util/ArraySet;

    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1398
    :goto_19
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1399
    .end local v5    # "pkgname":Ljava/lang/String;
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_4d

    .line 1361
    :pswitch_8
    if-eqz v31, :cond_2b

    .line 1362
    const-string/jumbo v5, "target"

    invoke-interface {v2, v9, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1363
    .local v5, "target":Ljava/lang/String;
    if-nez v5, :cond_28

    .line 1364
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "> without target in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1365
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1364
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1367
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_4d

    .line 1369
    :cond_28
    const-string v7, "allowed"

    invoke-interface {v2, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1370
    .local v7, "allowed":Ljava/lang/String;
    if-nez v7, :cond_29

    .line 1371
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "> without allowed in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1372
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1371
    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1374
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_4d

    .line 1376
    :cond_29
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 1377
    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 1378
    iget-object v8, v1, Lcom/android/server/SystemConfig;->mAllowedAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArraySet;

    .line 1379
    .local v8, "associations":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v8, :cond_2a

    .line 1380
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    move-object v8, v9

    .line 1381
    iget-object v9, v1, Lcom/android/server/SystemConfig;->mAllowedAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v9, v5, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1383
    :cond_2a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Adding association: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " <- "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1385
    nop

    .end local v5    # "target":Ljava/lang/String;
    .end local v7    # "allowed":Ljava/lang/String;
    .end local v8    # "associations":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_1a

    .line 1386
    :cond_2b
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1388
    :goto_1a
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1389
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_4d

    .line 1347
    :pswitch_9
    if-eqz v23, :cond_2d

    .line 1348
    invoke-interface {v2, v9, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1349
    .local v5, "pkgname":Ljava/lang/String;
    if-nez v5, :cond_2c

    .line 1350
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1351
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1350
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 1353
    :cond_2c
    iget-object v7, v1, Lcom/android/server/SystemConfig;->mHiddenApiPackageWhitelist:Landroid/util/ArraySet;

    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1355
    .end local v5    # "pkgname":Ljava/lang/String;
    :goto_1b
    goto :goto_1c

    .line 1356
    :cond_2d
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1358
    :goto_1c
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1359
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_4d

    .line 1339
    :pswitch_a
    if-eqz v22, :cond_2e

    .line 1340
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/SystemConfig;->readOemPermissions(Lorg/xmlpull/v1/XmlPullParser;)V

    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_4d

    .line 1342
    :cond_2e
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1343
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1345
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_4d

    .line 1297
    :pswitch_b
    if-eqz v21, :cond_36

    .line 1302
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1303
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1302
    invoke-interface {v5, v8}, Ljava/nio/file/Path;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_30

    .line 1304
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1305
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1304
    invoke-interface {v5, v8}, Ljava/nio/file/Path;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2f

    goto :goto_1d

    :cond_2f
    const/4 v5, 0x0

    goto :goto_1e

    :cond_30
    :goto_1d
    const/4 v5, 0x1

    .line 1306
    .local v5, "vendor":Z
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1307
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1306
    invoke-interface {v8, v9}, Ljava/nio/file/Path;->startsWith(Ljava/lang/String;)Z

    move-result v8

    .line 1310
    .local v8, "product":Z
    iget-object v9, v1, Lcom/android/server/SystemConfig;->mSystemConfigExt:Lcom/android/server/ISystemConfigExt;

    invoke-interface {v9, v3}, Lcom/android/server/ISystemConfigExt;->isFilePartitionWithProductFlag(Ljava/io/File;)Z

    move-result v9

    or-int/2addr v8, v9

    .line 1312
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1313
    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1312
    invoke-interface {v9, v11}, Ljava/nio/file/Path;->startsWith(Ljava/lang/String;)Z

    move-result v9

    .line 1314
    .local v9, "systemExt":Z
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1315
    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1314
    invoke-interface {v11, v7}, Ljava/nio/file/Path;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 1316
    invoke-static {}, Landroid/sysprop/ApexProperties;->updatable()Ljava/util/Optional;

    move-result-object v7

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_31

    const/4 v7, 0x1

    goto :goto_1f

    :cond_31
    const/4 v7, 0x0

    .line 1317
    .local v7, "apex":Z
    :goto_1f
    if-eqz v5, :cond_32

    .line 1318
    iget-object v11, v1, Lcom/android/server/SystemConfig;->mVendorPrivAppPermissions:Landroid/util/ArrayMap;

    iget-object v12, v1, Lcom/android/server/SystemConfig;->mVendorPrivAppDenyPermissions:Landroid/util/ArrayMap;

    invoke-direct {v1, v2, v11, v12}, Lcom/android/server/SystemConfig;->readPrivAppPermissions(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    goto :goto_20

    .line 1320
    :cond_32
    if-eqz v8, :cond_33

    .line 1321
    iget-object v11, v1, Lcom/android/server/SystemConfig;->mProductPrivAppPermissions:Landroid/util/ArrayMap;

    iget-object v12, v1, Lcom/android/server/SystemConfig;->mProductPrivAppDenyPermissions:Landroid/util/ArrayMap;

    invoke-direct {v1, v2, v11, v12}, Lcom/android/server/SystemConfig;->readPrivAppPermissions(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    goto :goto_20

    .line 1323
    :cond_33
    if-eqz v9, :cond_34

    .line 1324
    iget-object v11, v1, Lcom/android/server/SystemConfig;->mSystemExtPrivAppPermissions:Landroid/util/ArrayMap;

    iget-object v12, v1, Lcom/android/server/SystemConfig;->mSystemExtPrivAppDenyPermissions:Landroid/util/ArrayMap;

    invoke-direct {v1, v2, v11, v12}, Lcom/android/server/SystemConfig;->readPrivAppPermissions(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    goto :goto_20

    .line 1326
    :cond_34
    if-eqz v7, :cond_35

    .line 1327
    nop

    .line 1328
    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v11

    .line 1327
    invoke-virtual {v1, v2, v3, v11}, Lcom/android/server/SystemConfig;->readApexPrivAppPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;Ljava/nio/file/Path;)V

    goto :goto_20

    .line 1330
    :cond_35
    iget-object v11, v1, Lcom/android/server/SystemConfig;->mPrivAppPermissions:Landroid/util/ArrayMap;

    iget-object v12, v1, Lcom/android/server/SystemConfig;->mPrivAppDenyPermissions:Landroid/util/ArrayMap;

    invoke-direct {v1, v2, v11, v12}, Lcom/android/server/SystemConfig;->readPrivAppPermissions(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 1333
    .end local v5    # "vendor":Z
    .end local v7    # "apex":Z
    .end local v8    # "product":Z
    .end local v9    # "systemExt":Z
    :goto_20
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_4d

    .line 1334
    :cond_36
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1335
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1337
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_4d

    .line 1281
    :pswitch_c
    if-eqz v20, :cond_38

    .line 1282
    invoke-interface {v2, v9, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1283
    .local v5, "pkgname":Ljava/lang/String;
    if-nez v5, :cond_37

    .line 1284
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1287
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1284
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 1289
    :cond_37
    iget-object v7, v1, Lcom/android/server/SystemConfig;->mDisabledUntilUsedPreinstalledCarrierApps:Landroid/util/ArraySet;

    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1291
    .end local v5    # "pkgname":Ljava/lang/String;
    :goto_21
    goto :goto_22

    .line 1292
    :cond_38
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1294
    :goto_22
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1295
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_4d

    .line 1239
    :pswitch_d
    if-eqz v20, :cond_3d

    .line 1240
    invoke-interface {v2, v9, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1241
    .restart local v5    # "pkgname":Ljava/lang/String;
    const-string v7, "carrierAppPackage"

    invoke-interface {v2, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1243
    .local v7, "carrierPkgname":Ljava/lang/String;
    if-eqz v5, :cond_3c

    if-nez v7, :cond_39

    goto :goto_24

    .line 1251
    :cond_39
    const/4 v8, -0x1

    .line 1252
    .local v8, "addedInSdk":I
    const-string v13, "addedInSdk"

    invoke-interface {v2, v9, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1253
    .local v9, "addedInSdkStr":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-nez v13, :cond_3a

    .line 1255
    :try_start_a
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move v8, v11

    .line 1262
    goto :goto_23

    .line 1256
    :catch_2
    move-exception v0

    move-object v13, v0

    .line 1257
    .local v13, "e":Ljava/lang/NumberFormatException;
    :try_start_b
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, "> addedInSdk not an integer in "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1259
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1257
    invoke-static {v6, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1261
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_4d

    .line 1264
    .end local v13    # "e":Ljava/lang/NumberFormatException;
    :cond_3a
    :goto_23
    iget-object v11, v1, Lcom/android/server/SystemConfig;->mDisabledUntilUsedPreinstalledCarrierAssociatedApps:Landroid/util/ArrayMap;

    .line 1265
    invoke-virtual {v11, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 1267
    .local v11, "associatedPkgs":Ljava/util/List;, "Ljava/util/List<Landroid/os/CarrierAssociatedAppEntry;>;"
    if-nez v11, :cond_3b

    .line 1268
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v12

    .line 1269
    iget-object v12, v1, Lcom/android/server/SystemConfig;->mDisabledUntilUsedPreinstalledCarrierAssociatedApps:Landroid/util/ArrayMap;

    invoke-virtual {v12, v7, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1272
    :cond_3b
    new-instance v12, Landroid/os/CarrierAssociatedAppEntry;

    invoke-direct {v12, v5, v8}, Landroid/os/CarrierAssociatedAppEntry;-><init>(Ljava/lang/String;I)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 1244
    .end local v8    # "addedInSdk":I
    .end local v9    # "addedInSdkStr":Ljava/lang/String;
    .end local v11    # "associatedPkgs":Ljava/util/List;, "Ljava/util/List<Landroid/os/CarrierAssociatedAppEntry;>;"
    :cond_3c
    :goto_24
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "> without package or carrierAppPackage in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1246
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1244
    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    .end local v5    # "pkgname":Ljava/lang/String;
    .end local v7    # "carrierPkgname":Ljava/lang/String;
    :goto_25
    goto :goto_26

    .line 1276
    :cond_3d
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1278
    :goto_26
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1279
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_4d

    .line 1218
    :pswitch_e
    if-eqz v18, :cond_40

    .line 1219
    const-string/jumbo v5, "service"

    invoke-interface {v2, v9, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1220
    .local v5, "serviceName":Ljava/lang/String;
    if-nez v5, :cond_3e

    .line 1221
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "> without service in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1222
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1221
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 1224
    :cond_3e
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    .line 1225
    .local v7, "cn":Landroid/content/ComponentName;
    if-nez v7, :cond_3f

    .line 1226
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "> with invalid service name "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1228
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1226
    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 1230
    :cond_3f
    iget-object v8, v1, Lcom/android/server/SystemConfig;->mBackupTransportWhitelist:Landroid/util/ArraySet;

    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1233
    .end local v5    # "serviceName":Ljava/lang/String;
    .end local v7    # "cn":Landroid/content/ComponentName;
    :goto_27
    goto :goto_28

    .line 1234
    :cond_40
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1236
    :goto_28
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1237
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_4d

    .line 1215
    :pswitch_f
    invoke-direct/range {p0 .. p2}, Lcom/android/server/SystemConfig;->readComponentOverrides(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;)V

    .line 1216
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_4d

    .line 1197
    :pswitch_10
    if-eqz v20, :cond_43

    .line 1198
    invoke-interface {v2, v9, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1199
    .local v5, "pkgname":Ljava/lang/String;
    const-string v7, "class"

    invoke-interface {v2, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1200
    .local v7, "clsname":Ljava/lang/String;
    if-nez v5, :cond_41

    .line 1201
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1202
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1201
    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 1203
    :cond_41
    if-nez v7, :cond_42

    .line 1204
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "> without class in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1205
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1204
    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 1207
    :cond_42
    iget-object v8, v1, Lcom/android/server/SystemConfig;->mDefaultVrComponents:Landroid/util/ArraySet;

    new-instance v9, Landroid/content/ComponentName;

    invoke-direct {v9, v5, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1209
    .end local v5    # "pkgname":Ljava/lang/String;
    .end local v7    # "clsname":Ljava/lang/String;
    :goto_29
    goto :goto_2a

    .line 1210
    :cond_43
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1212
    :goto_2a
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1213
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_4d

    .line 1183
    :pswitch_11
    if-eqz v30, :cond_45

    .line 1184
    invoke-interface {v2, v9, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1185
    .restart local v5    # "pkgname":Ljava/lang/String;
    if-nez v5, :cond_44

    .line 1186
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1187
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1186
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 1189
    :cond_44
    iget-object v7, v1, Lcom/android/server/SystemConfig;->mBgRestrictionExemption:Landroid/util/ArraySet;

    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1191
    .end local v5    # "pkgname":Ljava/lang/String;
    :goto_2b
    goto :goto_2c

    .line 1192
    :cond_45
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1194
    :goto_2c
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1195
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_4d

    .line 1169
    :pswitch_12
    if-eqz v20, :cond_47

    .line 1170
    invoke-interface {v2, v9, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1171
    .restart local v5    # "pkgname":Ljava/lang/String;
    if-nez v5, :cond_46

    .line 1172
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1173
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1172
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 1175
    :cond_46
    iget-object v7, v1, Lcom/android/server/SystemConfig;->mLinkedApps:Landroid/util/ArraySet;

    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1177
    .end local v5    # "pkgname":Ljava/lang/String;
    :goto_2d
    goto :goto_2e

    .line 1178
    :cond_47
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1180
    :goto_2e
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1181
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_4d

    .line 1155
    :pswitch_13
    if-eqz v29, :cond_49

    .line 1156
    const-string v5, "action"

    invoke-interface {v2, v9, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1157
    .local v5, "action":Ljava/lang/String;
    if-nez v5, :cond_48

    .line 1158
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "> without action in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1159
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1158
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 1161
    :cond_48
    iget-object v7, v1, Lcom/android/server/SystemConfig;->mAllowImplicitBroadcasts:Landroid/util/ArraySet;

    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1163
    .end local v5    # "action":Ljava/lang/String;
    :goto_2f
    goto :goto_30

    .line 1164
    :cond_49
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1166
    :goto_30
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1167
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_4d

    .line 1127
    :pswitch_14
    if-eqz v30, :cond_4f

    .line 1128
    invoke-interface {v2, v9, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1129
    .local v5, "pkgname":Ljava/lang/String;
    const-string v7, "attributionTag"

    invoke-interface {v2, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1131
    .local v7, "attributionTag":Ljava/lang/String;
    if-nez v5, :cond_4a

    .line 1132
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1133
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1132
    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 1135
    :cond_4a
    iget-object v8, v1, Lcom/android/server/SystemConfig;->mAllowIgnoreLocationSettings:Landroid/util/ArrayMap;

    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArraySet;

    .line 1136
    .local v8, "tags":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v8, :cond_4b

    invoke-virtual {v8}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4e

    .line 1137
    :cond_4b
    if-nez v8, :cond_4c

    .line 1138
    new-instance v9, Landroid/util/ArraySet;

    const/4 v11, 0x1

    invoke-direct {v9, v11}, Landroid/util/ArraySet;-><init>(I)V

    move-object v8, v9

    .line 1139
    iget-object v9, v1, Lcom/android/server/SystemConfig;->mAllowIgnoreLocationSettings:Landroid/util/ArrayMap;

    invoke-virtual {v9, v5, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    :cond_4c
    const-string v9, "*"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4e

    .line 1142
    const-string/jumbo v9, "null"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4d

    .line 1143
    const/4 v7, 0x0

    .line 1145
    :cond_4d
    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1149
    .end local v5    # "pkgname":Ljava/lang/String;
    .end local v7    # "attributionTag":Ljava/lang/String;
    .end local v8    # "tags":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_4e
    :goto_31
    goto :goto_32

    .line 1150
    :cond_4f
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1152
    :goto_32
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1153
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_4d

    .line 1099
    :pswitch_15
    if-eqz v30, :cond_55

    .line 1100
    invoke-interface {v2, v9, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1101
    .restart local v5    # "pkgname":Ljava/lang/String;
    const-string v7, "attributionTag"

    invoke-interface {v2, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1103
    .restart local v7    # "attributionTag":Ljava/lang/String;
    if-nez v5, :cond_50

    .line 1104
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1105
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1104
    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 1107
    :cond_50
    iget-object v8, v1, Lcom/android/server/SystemConfig;->mAllowAdasSettings:Landroid/util/ArrayMap;

    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArraySet;

    .line 1108
    .restart local v8    # "tags":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v8, :cond_51

    invoke-virtual {v8}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_54

    .line 1109
    :cond_51
    if-nez v8, :cond_52

    .line 1110
    new-instance v9, Landroid/util/ArraySet;

    const/4 v11, 0x1

    invoke-direct {v9, v11}, Landroid/util/ArraySet;-><init>(I)V

    move-object v8, v9

    .line 1111
    iget-object v9, v1, Lcom/android/server/SystemConfig;->mAllowAdasSettings:Landroid/util/ArrayMap;

    invoke-virtual {v9, v5, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    :cond_52
    const-string v9, "*"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_54

    .line 1114
    const-string/jumbo v9, "null"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_53

    .line 1115
    const/4 v7, 0x0

    .line 1117
    :cond_53
    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1121
    .end local v5    # "pkgname":Ljava/lang/String;
    .end local v7    # "attributionTag":Ljava/lang/String;
    .end local v8    # "tags":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_54
    :goto_33
    goto :goto_34

    .line 1122
    :cond_55
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1124
    :goto_34
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1125
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_4d

    .line 1085
    :pswitch_16
    if-eqz v30, :cond_57

    .line 1086
    invoke-interface {v2, v9, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1087
    .restart local v5    # "pkgname":Ljava/lang/String;
    if-nez v5, :cond_56

    .line 1088
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1089
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1088
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    .line 1091
    :cond_56
    iget-object v7, v1, Lcom/android/server/SystemConfig;->mAllowUnthrottledLocation:Landroid/util/ArraySet;

    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1093
    .end local v5    # "pkgname":Ljava/lang/String;
    :goto_35
    goto :goto_36

    .line 1094
    :cond_57
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1096
    :goto_36
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1097
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_4d

    .line 1071
    :pswitch_17
    if-eqz v30, :cond_59

    .line 1072
    invoke-interface {v2, v9, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1073
    .restart local v5    # "pkgname":Ljava/lang/String;
    if-nez v5, :cond_58

    .line 1074
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1075
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1074
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 1077
    :cond_58
    iget-object v7, v1, Lcom/android/server/SystemConfig;->mAllowInDataUsageSave:Landroid/util/ArraySet;

    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1079
    .end local v5    # "pkgname":Ljava/lang/String;
    :goto_37
    goto :goto_38

    .line 1080
    :cond_59
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1082
    :goto_38
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1083
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_4d

    .line 1053
    :pswitch_18
    if-eqz v30, :cond_5b

    .line 1054
    invoke-interface {v2, v9, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1055
    .restart local v5    # "pkgname":Ljava/lang/String;
    if-nez v5, :cond_5a

    .line 1056
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1057
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1056
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 1059
    :cond_5a
    iget-object v7, v1, Lcom/android/server/SystemConfig;->mAllowInPowerSave:Landroid/util/ArraySet;

    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1062
    iget-object v7, v1, Lcom/android/server/SystemConfig;->mSystemConfigExt:Lcom/android/server/ISystemConfigExt;

    invoke-interface {v7, v5}, Lcom/android/server/ISystemConfigExt;->addPowerSaveWhitelistForCota(Ljava/lang/String;)V

    .line 1065
    .end local v5    # "pkgname":Ljava/lang/String;
    :goto_39
    goto :goto_3a

    .line 1066
    :cond_5b
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1068
    :goto_3a
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1069
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_4d

    .line 1035
    :pswitch_19
    if-eqz v30, :cond_5d

    .line 1036
    invoke-interface {v2, v9, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1037
    .restart local v5    # "pkgname":Ljava/lang/String;
    if-nez v5, :cond_5c

    .line 1038
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1039
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1038
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 1041
    :cond_5c
    iget-object v7, v1, Lcom/android/server/SystemConfig;->mAllowInPowerSaveExceptIdle:Landroid/util/ArraySet;

    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1044
    iget-object v7, v1, Lcom/android/server/SystemConfig;->mSystemConfigExt:Lcom/android/server/ISystemConfigExt;

    invoke-interface {v7, v5}, Lcom/android/server/ISystemConfigExt;->addPowerSaveWhitelistExceptIdleForCota(Ljava/lang/String;)V

    .line 1047
    .end local v5    # "pkgname":Ljava/lang/String;
    :goto_3b
    goto :goto_3c

    .line 1048
    :cond_5d
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1050
    :goto_3c
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1051
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_4d

    .line 1017
    :pswitch_1a
    if-eqz v18, :cond_5f

    .line 1018
    invoke-interface {v2, v9, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1019
    .local v5, "fname":Ljava/lang/String;
    if-nez v5, :cond_5e

    .line 1020
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v8, v28

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1021
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1020
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    .line 1023
    :cond_5e
    iget-object v7, v1, Lcom/android/server/SystemConfig;->mUnavailableFeatures:Landroid/util/ArraySet;

    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1026
    iget-object v7, v1, Lcom/android/server/SystemConfig;->mSystemConfigExt:Lcom/android/server/ISystemConfigExt;

    invoke-interface {v7, v5, v3}, Lcom/android/server/ISystemConfigExt;->onAddUnAvailableFeatureInRead(Ljava/lang/String;Ljava/io/File;)V

    .line 1029
    .end local v5    # "fname":Ljava/lang/String;
    :goto_3d
    goto :goto_3e

    .line 1030
    :cond_5f
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1032
    :goto_3e
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1033
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_4d

    .line 991
    :pswitch_1b
    move-object/from16 v8, v28

    if-eqz v18, :cond_63

    .line 992
    invoke-interface {v2, v9, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 993
    .restart local v5    # "fname":Ljava/lang/String;
    const-string/jumbo v7, "version"

    const/4 v13, 0x0

    invoke-static {v2, v7, v13}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v7

    .line 995
    .local v7, "fversion":I
    if-nez v27, :cond_60

    .line 996
    const/4 v9, 0x1

    const/4 v15, 0x1

    .local v9, "allowed":Z
    goto :goto_3f

    .line 998
    .end local v9    # "allowed":Z
    :cond_60
    const-string/jumbo v13, "notLowRam"

    invoke-interface {v2, v9, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 999
    .local v9, "notLowRam":Ljava/lang/String;
    const-string/jumbo v13, "true"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/4 v15, 0x1

    xor-int/2addr v13, v15

    move v9, v13

    .line 1001
    .local v9, "allowed":Z
    :goto_3f
    if-nez v5, :cond_61

    .line 1002
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1003
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1002
    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    .line 1004
    :cond_61
    if-eqz v9, :cond_62

    .line 1005
    invoke-direct {v1, v5, v7}, Lcom/android/server/SystemConfig;->addFeature(Ljava/lang/String;I)V

    .line 1008
    iget-object v8, v1, Lcom/android/server/SystemConfig;->mSystemConfigExt:Lcom/android/server/ISystemConfigExt;

    invoke-interface {v8, v5, v7, v3}, Lcom/android/server/ISystemConfigExt;->onAddFeatureInRead(Ljava/lang/String;ILjava/io/File;)V

    .line 1011
    .end local v5    # "fname":Ljava/lang/String;
    .end local v7    # "fversion":I
    .end local v9    # "allowed":Z
    :cond_62
    :goto_40
    goto :goto_41

    .line 1012
    :cond_63
    const/4 v15, 0x1

    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1014
    :goto_41
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 1015
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_4d

    .line 942
    :pswitch_1c
    move-object/from16 v8, v28

    const/4 v15, 0x1

    if-eqz v17, :cond_6f

    .line 943
    :try_start_c
    invoke-interface {v2, v9, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 944
    .local v5, "lname":Ljava/lang/String;
    const-string v7, "file"

    invoke-interface {v2, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 945
    .local v7, "lfile":Ljava/lang/String;
    const-string v13, "dependency"

    invoke-interface {v2, v9, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 946
    .local v13, "ldependency":Ljava/lang/String;
    const-string/jumbo v15, "min-device-sdk"

    invoke-interface {v2, v9, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 947
    .local v15, "minDeviceSdk":Ljava/lang/String;
    const-string/jumbo v9, "max-device-sdk"

    move/from16 v38, v14

    const/4 v14, 0x0

    .end local v14    # "allowVendorApex":Z
    .restart local v38    # "allowVendorApex":Z
    invoke-interface {v2, v14, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 948
    .local v9, "maxDeviceSdk":Ljava/lang/String;
    if-nez v5, :cond_64

    .line 949
    :try_start_d
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 950
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 949
    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v39, v10

    goto/16 :goto_47

    .line 951
    :cond_64
    if-nez v7, :cond_65

    .line 952
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "> without file in "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 953
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 952
    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v39, v10

    goto/16 :goto_47

    .line 955
    :cond_65
    if-eqz v15, :cond_67

    .line 956
    invoke-static {v15}, Lcom/android/server/SystemConfig;->isAtLeastSdkLevel(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_66

    goto :goto_42

    :cond_66
    const/4 v8, 0x0

    goto :goto_43

    :cond_67
    :goto_42
    const/4 v8, 0x1

    .line 957
    .local v8, "allowedMinSdk":Z
    :goto_43
    if-eqz v9, :cond_69

    .line 958
    invoke-static {v9}, Lcom/android/server/SystemConfig;->isAtMostSdkLevel(Ljava/lang/String;)Z

    move-result v11
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    if-eqz v11, :cond_68

    goto :goto_44

    :cond_68
    const/4 v11, 0x0

    goto :goto_45

    :cond_69
    :goto_44
    const/4 v11, 0x1

    .line 959
    .local v11, "allowedMaxSdk":Z
    :goto_45
    :try_start_e
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    .line 960
    .local v12, "exists":Z
    if-eqz v8, :cond_6b

    if-eqz v11, :cond_6b

    if-eqz v12, :cond_6b

    .line 961
    const-string/jumbo v14, "on-bootclasspath-since"

    move/from16 v39, v10

    const/4 v10, 0x0

    .end local v10    # "allowAll":Z
    .restart local v39    # "allowAll":Z
    invoke-interface {v2, v10, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 963
    .local v36, "bcpSince":Ljava/lang/String;
    const-string/jumbo v14, "on-bootclasspath-before"

    invoke-interface {v2, v10, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 965
    .local v37, "bcpBefore":Ljava/lang/String;
    new-instance v10, Lcom/android/server/SystemConfig$SharedLibraryEntry;

    .line 966
    if-nez v13, :cond_6a

    .line 967
    const/4 v14, 0x0

    new-array v2, v14, [Ljava/lang/String;

    goto :goto_46

    :cond_6a
    const-string v2, ":"

    invoke-virtual {v13, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :goto_46
    move-object/from16 v35, v2

    move-object/from16 v32, v10

    move-object/from16 v33, v5

    move-object/from16 v34, v7

    invoke-direct/range {v32 .. v37}, Lcom/android/server/SystemConfig$SharedLibraryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v10

    .line 969
    .local v2, "entry":Lcom/android/server/SystemConfig$SharedLibraryEntry;
    iget-object v10, v1, Lcom/android/server/SystemConfig;->mSharedLibraries:Landroid/util/ArrayMap;

    invoke-virtual {v10, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    nop

    .end local v2    # "entry":Lcom/android/server/SystemConfig$SharedLibraryEntry;
    .end local v36    # "bcpSince":Ljava/lang/String;
    .end local v37    # "bcpBefore":Ljava/lang/String;
    goto :goto_47

    .line 960
    .end local v39    # "allowAll":Z
    .restart local v10    # "allowAll":Z
    :cond_6b
    move/from16 v39, v10

    .line 971
    .end local v10    # "allowAll":Z
    .restart local v39    # "allowAll":Z
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v10, "Ignore shared library "

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 972
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, ":"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 973
    .local v2, "msg":Ljava/lang/StringBuilder;
    if-nez v8, :cond_6c

    .line 974
    const-string v10, " min-device-sdk="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    :cond_6c
    if-nez v11, :cond_6d

    .line 977
    const-string v10, " max-device-sdk="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    :cond_6d
    if-nez v12, :cond_6e

    .line 980
    const-string v10, " "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v14, " does not exist"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    :cond_6e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 985
    .end local v2    # "msg":Ljava/lang/StringBuilder;
    .end local v5    # "lname":Ljava/lang/String;
    .end local v7    # "lfile":Ljava/lang/String;
    .end local v8    # "allowedMinSdk":Z
    .end local v9    # "maxDeviceSdk":Ljava/lang/String;
    .end local v11    # "allowedMaxSdk":Z
    .end local v12    # "exists":Z
    .end local v13    # "ldependency":Ljava/lang/String;
    .end local v15    # "minDeviceSdk":Ljava/lang/String;
    :goto_47
    move-object/from16 v2, p1

    goto :goto_48

    .line 1540
    .end local v4    # "name":Ljava/lang/String;
    .end local v17    # "allowLibs":Z
    .end local v18    # "allowFeatures":Z
    .end local v19    # "allowPermissions":Z
    .end local v20    # "allowAppConfigs":Z
    .end local v21    # "allowPrivappPermissions":Z
    .end local v22    # "allowOemPermissions":Z
    .end local v23    # "allowApiWhitelisting":Z
    .end local v24    # "type":I
    .end local v29    # "allowImplicitBroadcasts":Z
    .end local v30    # "allowOverrideAppRestrictions":Z
    .end local v31    # "allowAssociations":Z
    .end local v38    # "allowVendorApex":Z
    .end local v39    # "allowAll":Z
    :catchall_1
    move-exception v0

    move-object/from16 v2, p1

    goto/16 :goto_58

    .line 1537
    :catch_3
    move-exception v0

    move-object/from16 v2, p1

    goto/16 :goto_4e

    .line 1535
    :catch_4
    move-exception v0

    move-object/from16 v2, p1

    goto/16 :goto_4f

    .line 986
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v10    # "allowAll":Z
    .restart local v14    # "allowVendorApex":Z
    .restart local v17    # "allowLibs":Z
    .restart local v18    # "allowFeatures":Z
    .restart local v19    # "allowPermissions":Z
    .restart local v20    # "allowAppConfigs":Z
    .restart local v21    # "allowPrivappPermissions":Z
    .restart local v22    # "allowOemPermissions":Z
    .restart local v23    # "allowApiWhitelisting":Z
    .restart local v24    # "type":I
    .restart local v29    # "allowImplicitBroadcasts":Z
    .restart local v30    # "allowOverrideAppRestrictions":Z
    .restart local v31    # "allowAssociations":Z
    :cond_6f
    move/from16 v39, v10

    move/from16 v38, v14

    .end local v10    # "allowAll":Z
    .end local v14    # "allowVendorApex":Z
    .restart local v38    # "allowVendorApex":Z
    .restart local v39    # "allowAll":Z
    move-object/from16 v2, p1

    :try_start_f
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 988
    :goto_48
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 989
    goto/16 :goto_4d

    .line 932
    .end local v38    # "allowVendorApex":Z
    .end local v39    # "allowAll":Z
    .restart local v10    # "allowAll":Z
    .restart local v14    # "allowVendorApex":Z
    :pswitch_1d
    move/from16 v39, v10

    move/from16 v38, v14

    .end local v10    # "allowAll":Z
    .end local v14    # "allowVendorApex":Z
    .restart local v38    # "allowVendorApex":Z
    .restart local v39    # "allowAll":Z
    if-eqz v19, :cond_70

    .line 933
    invoke-direct/range {p0 .. p2}, Lcom/android/server/SystemConfig;->readSplitPermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;)V

    goto/16 :goto_4d

    .line 935
    :cond_70
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 936
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 938
    goto/16 :goto_4d

    .line 896
    .end local v38    # "allowVendorApex":Z
    .end local v39    # "allowAll":Z
    .restart local v10    # "allowAll":Z
    .restart local v14    # "allowVendorApex":Z
    :pswitch_1e
    move/from16 v39, v10

    move/from16 v38, v14

    move-object/from16 v8, v28

    .end local v10    # "allowAll":Z
    .end local v14    # "allowVendorApex":Z
    .restart local v38    # "allowVendorApex":Z
    .restart local v39    # "allowAll":Z
    if-eqz v19, :cond_75

    .line 897
    const/4 v7, 0x0

    invoke-interface {v2, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 898
    .local v5, "perm":Ljava/lang/String;
    if-nez v5, :cond_71

    .line 899
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 900
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 899
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 902
    goto/16 :goto_4d

    .line 904
    :cond_71
    const-string/jumbo v7, "uid"

    const/4 v8, 0x0

    invoke-interface {v2, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 905
    .local v7, "uidStr":Ljava/lang/String;
    if-nez v7, :cond_72

    .line 906
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "> without uid in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 907
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 906
    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 909
    goto/16 :goto_4d

    .line 911
    :cond_72
    invoke-static {v7}, Landroid/os/Process;->getUidForName(Ljava/lang/String;)I

    move-result v8

    .line 912
    .local v8, "uid":I
    if-gez v8, :cond_73

    .line 913
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "> with unknown uid \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 915
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 913
    invoke-static {v6, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 917
    goto/16 :goto_4d

    .line 919
    :cond_73
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 920
    iget-object v9, v1, Lcom/android/server/SystemConfig;->mSystemPermissions:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArraySet;

    .line 921
    .local v9, "perms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v9, :cond_74

    .line 922
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    move-object v9, v10

    .line 923
    iget-object v10, v1, Lcom/android/server/SystemConfig;->mSystemPermissions:Landroid/util/SparseArray;

    invoke-virtual {v10, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 925
    :cond_74
    invoke-virtual {v9, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 926
    nop

    .end local v5    # "perm":Ljava/lang/String;
    .end local v7    # "uidStr":Ljava/lang/String;
    .end local v8    # "uid":I
    .end local v9    # "perms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_49

    .line 927
    :cond_75
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 929
    :goto_49
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 930
    goto/16 :goto_4d

    .line 880
    .end local v38    # "allowVendorApex":Z
    .end local v39    # "allowAll":Z
    .restart local v10    # "allowAll":Z
    .restart local v14    # "allowVendorApex":Z
    :pswitch_1f
    move/from16 v39, v10

    move/from16 v38, v14

    move-object/from16 v8, v28

    .end local v10    # "allowAll":Z
    .end local v14    # "allowVendorApex":Z
    .restart local v38    # "allowVendorApex":Z
    .restart local v39    # "allowAll":Z
    if-eqz v19, :cond_77

    .line 881
    const/4 v7, 0x0

    invoke-interface {v2, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 882
    .restart local v5    # "perm":Ljava/lang/String;
    if-nez v5, :cond_76

    .line 883
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 884
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 883
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 886
    goto/16 :goto_4d

    .line 888
    :cond_76
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 889
    invoke-virtual {v1, v2, v5}, Lcom/android/server/SystemConfig;->readPermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 890
    .end local v5    # "perm":Ljava/lang/String;
    goto/16 :goto_4d

    .line 891
    :cond_77
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 892
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 894
    goto/16 :goto_4d

    .line 865
    .end local v38    # "allowVendorApex":Z
    .end local v39    # "allowAll":Z
    .restart local v10    # "allowAll":Z
    .restart local v14    # "allowVendorApex":Z
    :pswitch_20
    move/from16 v39, v10

    move/from16 v38, v14

    .end local v10    # "allowAll":Z
    .end local v14    # "allowVendorApex":Z
    .restart local v38    # "allowVendorApex":Z
    .restart local v39    # "allowAll":Z
    if-eqz v39, :cond_79

    .line 866
    const-string v5, "gid"

    const/4 v7, 0x0

    invoke-interface {v2, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 867
    .local v5, "gidStr":Ljava/lang/String;
    if-eqz v5, :cond_78

    .line 868
    invoke-static {v5}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v7

    .line 869
    .local v7, "gid":I
    iget-object v8, v1, Lcom/android/server/SystemConfig;->mGlobalGids:[I

    invoke-static {v8, v7}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/SystemConfig;->mGlobalGids:[I

    .line 870
    .end local v7    # "gid":I
    goto :goto_4a

    .line 871
    :cond_78
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "> without gid in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 872
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 871
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    .end local v5    # "gidStr":Ljava/lang/String;
    :goto_4a
    goto :goto_4b

    .line 875
    :cond_79
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 877
    :goto_4b
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 878
    goto :goto_4d

    .line 1529
    :goto_4c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tag "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " is unknown in "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1530
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1529
    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1534
    .end local v4    # "name":Ljava/lang/String;
    :goto_4d
    move/from16 v4, p3

    move/from16 v15, v24

    move-object/from16 v7, v25

    move-object/from16 v5, v26

    move/from16 v8, v27

    move/from16 v12, v29

    move/from16 v11, v30

    move/from16 v9, v31

    move/from16 v14, v38

    move/from16 v10, v39

    const/4 v13, 0x1

    goto/16 :goto_c

    .line 822
    .end local v17    # "allowLibs":Z
    .end local v18    # "allowFeatures":Z
    .end local v19    # "allowPermissions":Z
    .end local v20    # "allowAppConfigs":Z
    .end local v21    # "allowPrivappPermissions":Z
    .end local v22    # "allowOemPermissions":Z
    .end local v23    # "allowApiWhitelisting":Z
    .end local v24    # "type":I
    .end local v25    # "permReader":Ljava/io/FileReader;
    .end local v27    # "lowRam":Z
    .end local v29    # "allowImplicitBroadcasts":Z
    .end local v30    # "allowOverrideAppRestrictions":Z
    .end local v31    # "allowAssociations":Z
    .end local v38    # "allowVendorApex":Z
    .end local v39    # "allowAll":Z
    .local v7, "permReader":Ljava/io/FileReader;
    .local v8, "lowRam":Z
    .local v15, "type":I
    :cond_7a
    move-object/from16 v26, v5

    move-object/from16 v25, v7

    move/from16 v27, v8

    move/from16 v24, v15

    .end local v7    # "permReader":Ljava/io/FileReader;
    .end local v8    # "lowRam":Z
    .end local v15    # "type":I
    .restart local v24    # "type":I
    .restart local v25    # "permReader":Ljava/io/FileReader;
    .restart local v27    # "lowRam":Z
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "No start tag found"

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v25    # "permReader":Ljava/io/FileReader;
    .end local v27    # "lowRam":Z
    .end local p0    # "this":Lcom/android/server/SystemConfig;
    .end local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p2    # "permFile":Ljava/io/File;
    .end local p3    # "permissionFlag":I
    throw v4
    :try_end_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_6
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 1537
    .end local v24    # "type":I
    .restart local v25    # "permReader":Ljava/io/FileReader;
    .restart local v27    # "lowRam":Z
    .restart local p0    # "this":Lcom/android/server/SystemConfig;
    .restart local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p2    # "permFile":Ljava/io/File;
    .restart local p3    # "permissionFlag":I
    :catch_5
    move-exception v0

    :goto_4e
    move-object v4, v0

    goto :goto_50

    .line 1535
    :catch_6
    move-exception v0

    :goto_4f
    move-object v4, v0

    move-object/from16 v5, v26

    goto :goto_51

    .line 1540
    .end local v25    # "permReader":Ljava/io/FileReader;
    .end local v27    # "lowRam":Z
    .restart local v7    # "permReader":Ljava/io/FileReader;
    .restart local v8    # "lowRam":Z
    :catchall_2
    move-exception v0

    move-object/from16 v25, v7

    move/from16 v27, v8

    move-object v4, v0

    .end local v7    # "permReader":Ljava/io/FileReader;
    .end local v8    # "lowRam":Z
    .restart local v25    # "permReader":Ljava/io/FileReader;
    .restart local v27    # "lowRam":Z
    goto/16 :goto_59

    .line 1537
    .end local v25    # "permReader":Ljava/io/FileReader;
    .end local v27    # "lowRam":Z
    .restart local v7    # "permReader":Ljava/io/FileReader;
    .restart local v8    # "lowRam":Z
    :catch_7
    move-exception v0

    move-object/from16 v26, v5

    move-object/from16 v25, v7

    move/from16 v27, v8

    move-object v4, v0

    .line 1538
    .end local v7    # "permReader":Ljava/io/FileReader;
    .end local v8    # "lowRam":Z
    .local v4, "e":Ljava/io/IOException;
    .restart local v25    # "permReader":Ljava/io/FileReader;
    .restart local v27    # "lowRam":Z
    :goto_50
    move-object/from16 v5, v26

    :try_start_10
    invoke-static {v6, v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1540
    nop

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_52

    .line 1535
    .end local v25    # "permReader":Ljava/io/FileReader;
    .end local v27    # "lowRam":Z
    .restart local v7    # "permReader":Ljava/io/FileReader;
    .restart local v8    # "lowRam":Z
    :catch_8
    move-exception v0

    move-object/from16 v25, v7

    move/from16 v27, v8

    move-object v4, v0

    .line 1536
    .end local v7    # "permReader":Ljava/io/FileReader;
    .end local v8    # "lowRam":Z
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v25    # "permReader":Ljava/io/FileReader;
    .restart local v27    # "lowRam":Z
    :goto_51
    invoke-static {v6, v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 1540
    nop

    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_52
    invoke-static/range {v25 .. v25}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1541
    nop

    .line 1545
    :goto_53
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 1546
    const-string v4, "android.software.file_based_encryption"

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Lcom/android/server/SystemConfig;->addFeature(Ljava/lang/String;I)V

    .line 1547
    const-string v4, "android.software.securely_removes_users"

    invoke-direct {v1, v4, v5}, Lcom/android/server/SystemConfig;->addFeature(Ljava/lang/String;I)V

    goto :goto_54

    .line 1545
    :cond_7b
    const/4 v5, 0x0

    .line 1551
    :goto_54
    invoke-static {}, Landroid/os/storage/StorageManager;->hasAdoptable()Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 1552
    const-string v4, "android.software.adoptable_storage"

    invoke-direct {v1, v4, v5}, Lcom/android/server/SystemConfig;->addFeature(Ljava/lang/String;I)V

    .line 1555
    :cond_7c
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 1556
    const-string v4, "android.hardware.ram.low"

    invoke-direct {v1, v4, v5}, Lcom/android/server/SystemConfig;->addFeature(Ljava/lang/String;I)V

    goto :goto_55

    .line 1558
    :cond_7d
    const-string v4, "android.hardware.ram.normal"

    invoke-direct {v1, v4, v5}, Lcom/android/server/SystemConfig;->addFeature(Ljava/lang/String;I)V

    .line 1561
    :goto_55
    invoke-static {}, Landroid/os/incremental/IncrementalManager;->getVersion()I

    move-result v4

    .line 1562
    .local v4, "incrementalVersion":I
    if-lez v4, :cond_7e

    .line 1563
    const-string v5, "android.software.incremental_delivery"

    invoke-direct {v1, v5, v4}, Lcom/android/server/SystemConfig;->addFeature(Ljava/lang/String;I)V

    .line 1567
    :cond_7e
    const-string v5, "android.software.app_enumeration"

    const/4 v6, 0x0

    invoke-direct {v1, v5, v6}, Lcom/android/server/SystemConfig;->addFeature(Ljava/lang/String;I)V

    .line 1570
    sget v5, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    const/16 v7, 0x1d

    if-lt v5, v7, :cond_7f

    .line 1571
    const-string v5, "android.software.ipsec_tunnels"

    invoke-direct {v1, v5, v6}, Lcom/android/server/SystemConfig;->addFeature(Ljava/lang/String;I)V

    .line 1574
    :cond_7f
    invoke-static {}, Lcom/android/server/SystemConfig;->isErofsSupported()Z

    move-result v5

    if-eqz v5, :cond_81

    .line 1575
    const/16 v5, 0xa

    const/4 v6, 0x5

    invoke-static {v6, v5}, Lcom/android/server/SystemConfig;->isKernelVersionAtLeast(II)Z

    move-result v5

    if-eqz v5, :cond_80

    .line 1576
    const-string v5, "android.software.erofs"

    const/4 v6, 0x0

    invoke-direct {v1, v5, v6}, Lcom/android/server/SystemConfig;->addFeature(Ljava/lang/String;I)V

    goto :goto_56

    .line 1577
    :cond_80
    const/4 v6, 0x0

    const/16 v5, 0x13

    const/4 v7, 0x4

    invoke-static {v7, v5}, Lcom/android/server/SystemConfig;->isKernelVersionAtLeast(II)Z

    move-result v5

    if-eqz v5, :cond_81

    .line 1578
    const-string v5, "android.software.erofs_legacy"

    invoke-direct {v1, v5, v6}, Lcom/android/server/SystemConfig;->addFeature(Ljava/lang/String;I)V

    .line 1582
    :cond_81
    :goto_56
    iget-object v5, v1, Lcom/android/server/SystemConfig;->mUnavailableFeatures:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_57
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_83

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1585
    .local v6, "featureName":Ljava/lang/String;
    iget-object v7, v1, Lcom/android/server/SystemConfig;->mSystemConfigExt:Lcom/android/server/ISystemConfigExt;

    invoke-interface {v7, v6}, Lcom/android/server/ISystemConfigExt;->interceptRemoveFeatureInRead(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_82

    .line 1586
    goto :goto_57

    .line 1589
    :cond_82
    invoke-direct {v1, v6}, Lcom/android/server/SystemConfig;->removeFeature(Ljava/lang/String;)V

    .line 1590
    .end local v6    # "featureName":Ljava/lang/String;
    goto :goto_57

    .line 1591
    :cond_83
    return-void

    .line 1540
    .end local v4    # "incrementalVersion":I
    :catchall_3
    move-exception v0

    :goto_58
    move-object v4, v0

    :goto_59
    invoke-static/range {v25 .. v25}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1541
    throw v4

    .line 804
    .end local v25    # "permReader":Ljava/io/FileReader;
    .end local v27    # "lowRam":Z
    :catch_9
    move-exception v0

    move-object v4, v0

    .line 805
    .local v4, "e":Ljava/io/FileNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t find or open permissions file "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x799cf7fb -> :sswitch_21
        -0x70348497 -> :sswitch_20
        -0x5e5059f9 -> :sswitch_1f
        -0x5cae799f -> :sswitch_1e
        -0x571c3164 -> :sswitch_1d
        -0x3bf447ba -> :sswitch_1c
        -0x3a731403 -> :sswitch_1b
        -0x3a5d850a -> :sswitch_1a
        -0x31681987 -> :sswitch_19
        -0x2650a45c -> :sswitch_18
        -0x25ce2480 -> :sswitch_17
        -0x216bddfc -> :sswitch_16
        -0x1eda3a31 -> :sswitch_15
        -0x8f1dbba -> :sswitch_14
        0x5e0f67f -> :sswitch_13
        0x9e824bb -> :sswitch_12
        0xabd1ca4 -> :sswitch_11
        0x14b2939f -> :sswitch_10
        0x18b029e2 -> :sswitch_f
        0x2fd2a088 -> :sswitch_e
        0x38d2156d -> :sswitch_d
        0x39bdfa11 -> :sswitch_c
        0x3be88f10 -> :sswitch_b
        0x3e3a690e -> :sswitch_a
        0x3e631f68 -> :sswitch_9
        0x42d78426 -> :sswitch_8
        0x4bac0262 -> :sswitch_7
        0x505286c4 -> :sswitch_6
        0x5d6b90a8 -> :sswitch_5
        0x6159b995 -> :sswitch_4
        0x66b52049 -> :sswitch_3
        0x66bbd981 -> :sswitch_2
        0x6ae33fca -> :sswitch_1
        0x7485cbdd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist readPrivAppPermissions(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .locals 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1657
    .local p2, "grantMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local p3, "denyMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    const-string/jumbo v1, "package"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1658
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "SystemConfig"

    if-eqz v2, :cond_0

    .line 1659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "package is required for <privapp-permissions> in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1660
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1659
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    return-void

    .line 1664
    :cond_0
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 1665
    .local v2, "permissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v2, :cond_1

    .line 1666
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    move-object v2, v4

    .line 1668
    :cond_1
    invoke-virtual {p3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 1669
    .local v4, "denyPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 1670
    .local v5, "depth":I
    :goto_0
    invoke-static {p1, v5}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1671
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1672
    .local v6, "name":Ljava/lang/String;
    const-string/jumbo v7, "permission"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string/jumbo v8, "name"

    if-eqz v7, :cond_3

    .line 1673
    invoke-interface {p1, v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1674
    .local v7, "permName":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1675
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "name is required for <permission> in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1676
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1675
    invoke-static {v3, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    goto :goto_0

    .line 1679
    :cond_2
    invoke-virtual {v2, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .end local v7    # "permName":Ljava/lang/String;
    goto :goto_1

    .line 1680
    :cond_3
    const-string v7, "deny-permission"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1681
    invoke-interface {p1, v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1682
    .restart local v7    # "permName":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1683
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "name is required for <deny-permission> in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1684
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1683
    invoke-static {v3, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    goto :goto_0

    .line 1687
    :cond_4
    if-nez v4, :cond_5

    .line 1688
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    move-object v4, v8

    .line 1690
    :cond_5
    invoke-virtual {v4, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1680
    .end local v7    # "permName":Ljava/lang/String;
    :cond_6
    :goto_1
    nop

    .line 1692
    .end local v6    # "name":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 1693
    :cond_7
    invoke-virtual {p2, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1694
    if-eqz v4, :cond_8

    .line 1695
    invoke-virtual {p3, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1697
    :cond_8
    return-void
.end method

.method private blacklist readPublicLibrariesListFile(Ljava/io/File;)V
    .locals 6
    .param p1, "listFile"    # Ljava/io/File;

    .line 1888
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1890
    .local v0, "br":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "line":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1891
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "#"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1892
    goto :goto_0

    .line 1895
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    .line 1896
    .local v1, "soname":Ljava/lang/String;
    new-instance v4, Lcom/android/server/SystemConfig$SharedLibraryEntry;

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v1, v3, v5}, Lcom/android/server/SystemConfig$SharedLibraryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    move-object v3, v4

    .line 1898
    .local v3, "entry":Lcom/android/server/SystemConfig$SharedLibraryEntry;
    iget-object v4, p0, Lcom/android/server/SystemConfig;->mSharedLibraries:Landroid/util/ArrayMap;

    iget-object v5, v3, Lcom/android/server/SystemConfig$SharedLibraryEntry;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1899
    nop

    .end local v1    # "soname":Ljava/lang/String;
    .end local v3    # "entry":Lcom/android/server/SystemConfig$SharedLibraryEntry;
    goto :goto_0

    .line 1900
    .end local v2    # "line":Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1902
    .end local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 1888
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/SystemConfig;
    .end local p1    # "listFile":Ljava/io/File;
    :goto_1
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1900
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local p0    # "this":Lcom/android/server/SystemConfig;
    .restart local p1    # "listFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1901
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read public libraries file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SystemConfig"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1903
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    return-void
.end method

.method private blacklist readPublicNativeLibrariesList()V
    .locals 11

    .line 1870
    new-instance v0, Ljava/io/File;

    const-string v1, "/vendor/etc/public.libraries.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/SystemConfig;->readPublicLibrariesListFile(Ljava/io/File;)V

    .line 1871
    const-string v0, "/system/etc"

    const-string v1, "/system_ext/etc"

    const-string v2, "/product/etc"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 1872
    .local v0, "dirs":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 1873
    .local v4, "dir":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 1874
    .local v5, "files":[Ljava/io/File;
    if-nez v5, :cond_0

    .line 1875
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Public libraries file folder missing: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SystemConfig"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    goto :goto_2

    .line 1878
    :cond_0
    array-length v6, v5

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    .line 1879
    .local v8, "f":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1880
    .local v9, "name":Ljava/lang/String;
    const-string/jumbo v10, "public.libraries-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, ".txt"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1881
    invoke-direct {p0, v8}, Lcom/android/server/SystemConfig;->readPublicLibrariesListFile(Ljava/io/File;)V

    .line 1878
    .end local v8    # "f":Ljava/io/File;
    .end local v9    # "name":Ljava/lang/String;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1872
    .end local v4    # "dir":Ljava/lang/String;
    .end local v5    # "files":[Ljava/io/File;
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1885
    :cond_3
    return-void
.end method

.method private blacklist readSplitPermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;)V
    .locals 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "permFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1784
    const/4 v0, 0x0

    const-string/jumbo v1, "name"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1785
    .local v2, "splitPerm":Ljava/lang/String;
    const-string v3, " at "

    const-string v4, "SystemConfig"

    if-nez v2, :cond_0

    .line 1786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<split-permission> without name in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1787
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1786
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1789
    return-void

    .line 1791
    :cond_0
    const-string/jumbo v5, "targetSdk"

    invoke-interface {p1, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1792
    .local v5, "targetSdkStr":Ljava/lang/String;
    const/16 v6, 0x2711

    .line 1793
    .local v6, "targetSdk":I
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1795
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v3

    .line 1801
    goto :goto_0

    .line 1796
    :catch_0
    move-exception v0

    .line 1797
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<split-permission> targetSdk not an integer in "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1798
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1797
    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1800
    return-void

    .line 1803
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 1804
    .local v3, "depth":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1805
    .local v7, "newPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    invoke-static {p1, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1806
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1807
    .local v8, "name":Ljava/lang/String;
    const-string/jumbo v9, "new-permission"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1808
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1809
    .local v9, "newName":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1810
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "name is required for <new-permission> in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1811
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1810
    invoke-static {v4, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    goto :goto_1

    .line 1814
    :cond_2
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1815
    .end local v9    # "newName":Ljava/lang/String;
    goto :goto_2

    .line 1816
    :cond_3
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1818
    .end local v8    # "name":Ljava/lang/String;
    :goto_2
    goto :goto_1

    .line 1819
    :cond_4
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1820
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mSplitPermissions:Ljava/util/ArrayList;

    new-instance v1, Landroid/permission/PermissionManager$SplitPermissionInfo;

    invoke-direct {v1, v2, v7, v6}, Landroid/permission/PermissionManager$SplitPermissionInfo;-><init>(Ljava/lang/String;Ljava/util/List;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1822
    :cond_5
    return-void
.end method

.method private blacklist removeFeature(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 1606
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removed unavailable feature "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemConfig"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist getAllowAdasLocationSettings()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 436
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mAllowAdasSettings:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public blacklist getAllowIgnoreLocationSettings()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mAllowIgnoreLocationSettings:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public blacklist getAllowImplicitBroadcasts()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mAllowImplicitBroadcasts:Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist getAllowInDataUsageSave()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 428
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mAllowInDataUsageSave:Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist getAllowInPowerSave()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 424
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mAllowInPowerSave:Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist getAllowInPowerSaveExceptIdle()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 420
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mAllowInPowerSaveExceptIdle:Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist getAllowUnthrottledLocation()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 432
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mAllowUnthrottledLocation:Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist getAllowedAssociations()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 537
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mAllowedAssociations:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public blacklist getAllowedVendorApexes()Ljava/util/Map;
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

    .line 553
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mAllowedVendorApexes:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public blacklist getAndClearPackageToUserTypeBlacklist()Landroid/util/ArrayMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 582
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mPackageToUserTypeBlacklist:Landroid/util/ArrayMap;

    .line 583
    .local v0, "r":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    new-instance v1, Landroid/util/ArrayMap;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/SystemConfig;->mPackageToUserTypeBlacklist:Landroid/util/ArrayMap;

    .line 584
    return-object v0
.end method

.method public blacklist getAndClearPackageToUserTypeWhitelist()Landroid/util/ArrayMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 570
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mPackageToUserTypeWhitelist:Landroid/util/ArrayMap;

    .line 571
    .local v0, "r":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    new-instance v1, Landroid/util/ArrayMap;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/SystemConfig;->mPackageToUserTypeWhitelist:Landroid/util/ArrayMap;

    .line 572
    return-object v0
.end method

.method public blacklist getApexPrivAppDenyPermissions(Ljava/lang/String;Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 2
    .param p1, "apexName"    # Ljava/lang/String;
    .param p2, "apkPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 492
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mApexPrivAppDenyPermissions:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/server/SystemConfig;->EMPTY_PERMISSIONS:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 493
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 492
    return-object v0
.end method

.method public blacklist getApexPrivAppPermissions(Ljava/lang/String;Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 2
    .param p1, "apexName"    # Ljava/lang/String;
    .param p2, "apkPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 486
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mApexPrivAppPermissions:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/server/SystemConfig;->EMPTY_PERMISSIONS:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 487
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 486
    return-object v0
.end method

.method public blacklist getAppDataIsolationWhitelistedApps()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 561
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mAppDataIsolationWhitelistedApps:Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist getAvailableFeatures()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation

    .line 408
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public blacklist getBackupTransportWhitelist()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 460
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mBackupTransportWhitelist:Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist getBgRestrictionExemption()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 444
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mBgRestrictionExemption:Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist getBugreportWhitelistedPackages()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 541
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mBugreportWhitelistedPackages:Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist getComponentsEnabledStates(Ljava/lang/String;)Landroid/util/ArrayMap;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 464
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mPackageComponentEnabledState:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    return-object v0
.end method

.method public blacklist getDefaultVrComponents()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 456
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mDefaultVrComponents:Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist getDisabledUntilUsedPreinstalledCarrierApps()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 468
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mDisabledUntilUsedPreinstalledCarrierApps:Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist getDisabledUntilUsedPreinstalledCarrierAssociatedApps()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/CarrierAssociatedAppEntry;",
            ">;>;"
        }
    .end annotation

    .line 473
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mDisabledUntilUsedPreinstalledCarrierAssociatedApps:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public blacklist getGlobalGids()[I
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mGlobalGids:[I

    return-object v0
.end method

.method public blacklist getHiddenApiWhitelistedApps()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 452
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mHiddenApiPackageWhitelist:Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist getLinkedApps()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 448
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mLinkedApps:Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist getModulesInstallerPackageName()Ljava/lang/String;
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mModulesInstallerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getNamedActors()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 589
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mNamedActors:Ljava/util/Map;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public blacklist getOemPermissions(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 529
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mOemPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 530
    .local v0, "oemPermissions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-eqz v0, :cond_0

    .line 531
    return-object v0

    .line 533
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getOverlayConfigSignaturePackage()Ljava/lang/String;
    .locals 1

    .line 594
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    .line 594
    :goto_0
    return-object v0
.end method

.method public blacklist getPermissions()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/SystemConfig$PermissionEntry;",
            ">;"
        }
    .end annotation

    .line 412
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mPermissions:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public blacklist getPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 481
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mPrivAppDenyPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist getPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 477
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mPrivAppPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist getProductPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 509
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mProductPrivAppDenyPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist getProductPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 505
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mProductPrivAppPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist getRollbackWhitelistedPackages()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 545
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mRollbackWhitelistedPackages:Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist getSharedLibraries()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/SystemConfig$SharedLibraryEntry;",
            ">;"
        }
    .end annotation

    .line 404
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mSharedLibraries:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public blacklist getSplitPermissions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/permission/PermissionManager$SplitPermissionInfo;",
            ">;"
        }
    .end annotation

    .line 400
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mSplitPermissions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getSystemExtPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 525
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mSystemExtPrivAppDenyPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist getSystemExtPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 517
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mSystemExtPrivAppPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist getSystemPermissions()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 396
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mSystemPermissions:Landroid/util/SparseArray;

    return-object v0
.end method

.method public blacklist getVendorPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 501
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mVendorPrivAppDenyPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist getVendorPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 497
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mVendorPrivAppPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist getWhitelistedStagedInstallers()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 549
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mWhitelistedStagedInstallers:Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist readApexPrivAppPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;Ljava/nio/file/Path;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "permFile"    # Ljava/io/File;
    .param p3, "apexDirectoryPath"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1927
    nop

    .line 1928
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/SystemConfig;->getApexModuleNameFromFilePath(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v0

    .line 1930
    .local v0, "moduleName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/SystemConfig;->mApexPrivAppPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1931
    iget-object v1, p0, Lcom/android/server/SystemConfig;->mApexPrivAppPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .local v1, "privAppPermissions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    goto :goto_0

    .line 1933
    .end local v1    # "privAppPermissions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :cond_0
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1934
    .restart local v1    # "privAppPermissions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    iget-object v2, p0, Lcom/android/server/SystemConfig;->mApexPrivAppPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1937
    :goto_0
    iget-object v2, p0, Lcom/android/server/SystemConfig;->mApexPrivAppDenyPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1938
    iget-object v2, p0, Lcom/android/server/SystemConfig;->mApexPrivAppDenyPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .local v2, "privAppDenyPermissions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    goto :goto_1

    .line 1940
    .end local v2    # "privAppDenyPermissions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :cond_1
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 1941
    .restart local v2    # "privAppDenyPermissions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    iget-object v3, p0, Lcom/android/server/SystemConfig;->mApexPrivAppDenyPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1943
    :goto_1
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/SystemConfig;->readPrivAppPermissions(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 1944
    return-void
.end method

.method blacklist readOemPermissions(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1747
    const/4 v0, 0x0

    const-string/jumbo v1, "package"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1748
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "SystemConfig"

    if-eqz v2, :cond_0

    .line 1749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "package is required for <oem-permissions> in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1750
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1749
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    return-void

    .line 1754
    :cond_0
    iget-object v2, p0, Lcom/android/server/SystemConfig;->mOemPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 1755
    .local v2, "permissions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-nez v2, :cond_1

    .line 1756
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    move-object v2, v4

    .line 1758
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    .line 1759
    .local v4, "depth":I
    :goto_0
    invoke-static {p1, v4}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1760
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1761
    .local v5, "name":Ljava/lang/String;
    const-string/jumbo v6, "permission"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string/jumbo v7, "name"

    if-eqz v6, :cond_3

    .line 1762
    invoke-interface {p1, v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1763
    .local v6, "permName":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1764
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "name is required for <permission> in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1765
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1764
    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    goto :goto_0

    .line 1768
    :cond_2
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v6    # "permName":Ljava/lang/String;
    goto :goto_1

    .line 1769
    :cond_3
    const-string v6, "deny-permission"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1770
    invoke-interface {p1, v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1771
    .restart local v6    # "permName":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1772
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "name is required for <deny-permission> in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1773
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1772
    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    goto :goto_0

    .line 1776
    :cond_4
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1769
    .end local v6    # "permName":Ljava/lang/String;
    :cond_5
    :goto_1
    nop

    .line 1778
    .end local v5    # "name":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 1779
    :cond_6
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mOemPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1780
    return-void
.end method

.method blacklist readPermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1613
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1617
    const/4 v0, 0x0

    const-string/jumbo v1, "perUser"

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    .line 1618
    .local v0, "perUser":Z
    new-instance v1, Lcom/android/server/SystemConfig$PermissionEntry;

    invoke-direct {v1, p2, v0}, Lcom/android/server/SystemConfig$PermissionEntry;-><init>(Ljava/lang/String;Z)V

    .line 1619
    .local v1, "perm":Lcom/android/server/SystemConfig$PermissionEntry;
    iget-object v2, p0, Lcom/android/server/SystemConfig;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1621
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 1623
    .local v2, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    if-eq v3, v5, :cond_6

    const/4 v3, 0x3

    if-ne v4, v3, :cond_1

    .line 1625
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v2, :cond_6

    .line 1626
    :cond_1
    if-eq v4, v3, :cond_0

    const/4 v3, 0x4

    if-ne v4, v3, :cond_2

    .line 1628
    goto :goto_0

    .line 1631
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1632
    .local v3, "tagName":Ljava/lang/String;
    const-string v5, "group"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1633
    const/4 v5, 0x0

    const-string v6, "gid"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1634
    .local v5, "gidStr":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 1635
    invoke-static {v5}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v6

    .line 1640
    .local v6, "gid":I
    iget-object v7, p0, Lcom/android/server/SystemConfig;->mSystemConfigSocExt:Lcom/android/server/ISystemConfigSocExt;

    invoke-interface {v7, v6}, Lcom/android/server/ISystemConfigSocExt;->shouldAppendPermGid(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1641
    iget-object v7, v1, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    invoke-static {v7, v6}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    .line 1644
    .end local v6    # "gid":I
    :cond_3
    goto :goto_1

    .line 1645
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<group> without gid at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1646
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1645
    const-string v7, "SystemConfig"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    .end local v5    # "gidStr":Ljava/lang/String;
    :cond_5
    :goto_1
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1650
    .end local v3    # "tagName":Ljava/lang/String;
    goto :goto_0

    .line 1651
    :cond_6
    return-void

    .line 1614
    .end local v0    # "perUser":Z
    .end local v1    # "perm":Lcom/android/server/SystemConfig$PermissionEntry;
    .end local v2    # "outerDepth":I
    .end local v4    # "type":I
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate permission definition for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V
    .locals 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "libraryDir"    # Ljava/io/File;
    .param p3, "permissionFlag"    # I

    .line 745
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "SystemConfig"

    if-eqz v0, :cond_9

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 751
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->canRead()Z

    move-result v0

    const-string v2, " cannot be read"

    if-nez v0, :cond_1

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Directory "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    return-void

    .line 757
    :cond_1
    const/4 v0, 0x0

    .line 758
    .local v0, "platformFile":Ljava/io/File;
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_7

    aget-object v6, v3, v5

    .line 759
    .local v6, "f":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_2

    .line 760
    goto :goto_1

    .line 764
    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "etc/permissions/platform.xml"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 765
    move-object v0, v6

    .line 766
    goto :goto_1

    .line 769
    :cond_3
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".xml"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 770
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Non-xml file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " directory, ignoring"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    goto :goto_1

    .line 773
    :cond_4
    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v7

    if-nez v7, :cond_5

    .line 774
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permissions library file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    goto :goto_1

    .line 780
    :cond_5
    iget-object v7, p0, Lcom/android/server/SystemConfig;->mSystemConfigExt:Lcom/android/server/ISystemConfigExt;

    invoke-interface {v7, v6}, Lcom/android/server/ISystemConfigExt;->filterFileInReadPermissions(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 781
    goto :goto_1

    .line 785
    :cond_6
    invoke-direct {p0, p1, v6, p3}, Lcom/android/server/SystemConfig;->readPermissionsFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 758
    .end local v6    # "f":Ljava/io/File;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 789
    :cond_7
    if-eqz v0, :cond_8

    .line 790
    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/SystemConfig;->readPermissionsFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 792
    :cond_8
    return-void

    .line 746
    .end local v0    # "platformFile":Ljava/io/File;
    :cond_9
    :goto_2
    const/4 v0, -0x1

    if-ne p3, v0, :cond_a

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No directory "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", skipping"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :cond_a
    return-void
.end method
