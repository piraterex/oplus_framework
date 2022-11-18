.class public interface abstract Landroid/app/IOplusCompactWindowAppManager;
.super Ljava/lang/Object;
.source "IOplusCompactWindowAppManager.java"

# interfaces
.implements Landroid/common/IOplusCommonFeature;


# static fields
.field public static final blacklist DEFAULT:Landroid/app/IOplusCompactWindowAppManager;

.field public static final blacklist DEFAULT_COMPACT_ROTATION:I = -0x1


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Landroid/app/IOplusCompactWindowAppManager$1;

    invoke-direct {v0}, Landroid/app/IOplusCompactWindowAppManager$1;-><init>()V

    sput-object v0, Landroid/app/IOplusCompactWindowAppManager;->DEFAULT:Landroid/app/IOplusCompactWindowAppManager;

    return-void
.end method


# virtual methods
.method public blacklist blockOrientationSensorEventInCompactWindowMode(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sensorType"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCompactWindowDisplayAdjustment(Landroid/content/res/Resources;)Landroid/view/DisplayAdjustments;
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCompactWindowMetrics(Landroid/content/res/ResourcesImpl;Landroid/util/DisplayMetrics;)Landroid/util/DisplayMetrics;
    .locals 1
    .param p1, "resImpl"    # Landroid/content/res/ResourcesImpl;
    .param p2, "originMetrics"    # Landroid/util/DisplayMetrics;

    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCompactWindowRotation(Landroid/content/res/Resources;)I
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 71
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getDefault()Landroid/common/IOplusCommonFeature;
    .locals 1

    .line 49
    sget-object v0, Landroid/app/IOplusCompactWindowAppManager;->DEFAULT:Landroid/app/IOplusCompactWindowAppManager;

    return-object v0
.end method

.method public whitelist index()Landroid/common/OplusFeatureList$OplusIndex;
    .locals 1

    .line 44
    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->IOplusCompactWindowAppManager:Landroid/common/OplusFeatureList$OplusIndex;

    return-object v0
.end method

.method public blacklist initCompactApplicationInfo(Landroid/content/pm/ApplicationInfo;)V
    .locals 0
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 76
    return-void
.end method

.method public blacklist setCompactWindowDisplayAdjustment(Landroid/content/res/ResourcesImpl;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "impl"    # Landroid/content/res/ResourcesImpl;
    .param p2, "oldOverrideConfig"    # Landroid/content/res/Configuration;
    .param p3, "newOverrideConfig"    # Landroid/content/res/Configuration;

    .line 64
    return-void
.end method

.method public blacklist updateCompactWindowConfigToApplicationResourcesImpl(Landroid/content/res/Configuration;Landroid/content/res/ResourcesImpl;)V
    .locals 0
    .param p1, "activityThreadConfig"    # Landroid/content/res/Configuration;
    .param p2, "impl"    # Landroid/content/res/ResourcesImpl;

    .line 61
    return-void
.end method

.method public blacklist updateCustomDarkModeForWechat(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/ResourcesImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "targetConfig"    # Landroid/content/res/Configuration;
    .param p2, "theadConfig"    # Landroid/content/res/Configuration;
    .param p3, "targetImpl"    # Landroid/content/res/ResourcesImpl;
    .param p4, "currentProcessName"    # Ljava/lang/String;

    .line 79
    return-void
.end method
