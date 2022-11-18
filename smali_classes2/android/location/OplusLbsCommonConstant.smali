.class public Landroid/location/OplusLbsCommonConstant;
.super Ljava/lang/Object;
.source "OplusLbsCommonConstant.java"


# static fields
.field public static final whitelist ACTION_UPDATE_REQUIREMENTS:Ljava/lang/String; = "oplus.location.blacklist.update.gps.requirements"

.field public static final whitelist KEY_HARDWARE_PROPERTIES:Ljava/lang/String; = "ro.hardware"

.field public static final whitelist MTK_PLATFORM:Ljava/lang/String; = "mtk"

.field public static final whitelist NAVIGATION_STATUS_OFF:I = 0x2

.field public static final whitelist NAVIGATION_STATUS_ON:I = 0x1

.field public static final whitelist QCOM_PLATFORM:Ljava/lang/String; = "qcom"

.field public static final whitelist RUS_DEFAULT_RETURN_INT:I = -0x1

.field public static final whitelist UNKNOWN_PLATFORM:Ljava/lang/String; = "unknown"

.field public static final whitelist mOverseaNlpPackages:[Ljava/lang/String;

.field public static final whitelist mRegionNlpPackages:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    .line 25
    const-string v0, "com.baidu.map.location"

    const-string v1, "com.amap.android.location"

    const-string v2, "com.amap.android.ams"

    const-string v3, "com.tencent.android.location"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/location/OplusLbsCommonConstant;->mRegionNlpPackages:[Ljava/lang/String;

    .line 30
    const-string v0, "com.google.android.gms"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/location/OplusLbsCommonConstant;->mOverseaNlpPackages:[Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
